#include "game.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include <stddef.h>

#include "linked_list.h"
#include "mbstrings.h"
#include "common.h"

/** Updates the game by a single step, and modifies the game information
 * accordingly. Arguments:
 *  - cells: a pointer to the first integer in an array of integers representing
 *    each board cell.
 *  - width: width of the board.
 *  - height: height of the board.
 *  - snake_p: pointer to your snake struct (not used until part 3!)
 *  - input: the next input.
 *  - growing: 0 if the snake does not grow on eating, 1 if it does.
 */
void update(int* cells, size_t width, size_t height, snake_t* snake_p,
            enum input_key input, int growing) {
    
    if (g_game_over) {
        return;
    }
     // Store current head position
    int head_x = *((int*)snake_p->snake_head_x->data);
    int head_y = *((int*)snake_p->snake_head_y->data);
    
    // Prevent snake from reversing direction if length > 1
    if (input != INPUT_NONE && snake_p->snake_head_x->next) {
        // Get second segment position
        int second_x = *((int*)snake_p->snake_head_x->next->data);
        int second_y = *((int*)snake_p->snake_head_y->next->data);
        
        // Calculate potential new position
        int potential_x = head_x;
        int potential_y = head_y;
        
        switch (input) {
            case INPUT_RIGHT: potential_x++; break;
            case INPUT_LEFT:  potential_x--; break;
            case INPUT_UP:    potential_y--; break;
            case INPUT_DOWN:  potential_y++; break;
            default: break;
        }
        
        // If trying to move into second segment, ignore input
        if (potential_x == second_x && potential_y == second_y) {
            input = INPUT_NONE;
        }
    }
    
    // Update direction if valid input
    if (input != INPUT_NONE) {
        snake_p->snake_direction = input;
    }
    
    // Calculate new head position
    int new_x = head_x;
    int new_y = head_y;
    
    switch (snake_p->snake_direction) {
        case INPUT_RIGHT: new_x++; break;
        case INPUT_LEFT:  new_x--; break;
        case INPUT_UP:    new_y--; break;
        case INPUT_DOWN:  new_y++; break;
        default: break;
    }
    
    // Check for wall collision
    int next_cell_index = new_y * width + new_x;
    if (cells[next_cell_index] & FLAG_WALL) {
        g_game_over = 1;
        return;
    }
    
    // Check if we're about to eat food
    bool eating_food = (cells[next_cell_index] & FLAG_FOOD);
    
    // Find the tail for collision detection
    node_t* tail_x_node = snake_p->snake_head_x;
    node_t* tail_y_node = snake_p->snake_head_y;
    while (tail_x_node->next) {
        tail_x_node = tail_x_node->next;
        tail_y_node = tail_y_node->next;
    }
    int tail_x = *((int*)tail_x_node->data);
    int tail_y = *((int*)tail_y_node->data);
    
    // Check for self collision (but allow moving into current tail position)
    if ((cells[next_cell_index] & FLAG_SNAKE) && 
        !(new_x == tail_x && new_y == tail_y)) {
        g_game_over = 1;
        return;
    }
    
    // If we're not growing or not eating food, clear the tail position
    if (!growing || !eating_food) {
        cells[tail_y * width + tail_x] &= ~FLAG_SNAKE;
    }
    
    // Set snake in new position
    cells[new_y * width + new_x] |= FLAG_SNAKE;
    
    // Move the snake by shifting all coordinates
    node_t* curr_x = snake_p->snake_head_x;
    node_t* curr_y = snake_p->snake_head_y;
    int prev_x = new_x;
    int prev_y = new_y;
    
    while (curr_x) {
        // Save current position
        int temp_x = *((int*)curr_x->data);
        int temp_y = *((int*)curr_y->data);
        
        // Update position
        *((int*)curr_x->data) = prev_x;
        *((int*)curr_y->data) = prev_y;
        
        // Store current position for next node
        prev_x = temp_x;
        prev_y = temp_y;
        
        curr_x = curr_x->next;
        curr_y = curr_y->next;
    }
    
    // If eating food and growing, add new tail segment
    if (eating_food && growing) {
        // Create new tail node with the last position
        int* new_tail_x = malloc(sizeof(int));
        int* new_tail_y = malloc(sizeof(int));
        *new_tail_x = tail_x;
        *new_tail_y = tail_y;
        
        node_t* new_tail_x_node = create_node(new_tail_x, sizeof(int));
        node_t* new_tail_y_node = create_node(new_tail_y, sizeof(int));
        
        // Find current tail
        curr_x = snake_p->snake_head_x;
        curr_y = snake_p->snake_head_y;
        while (curr_x->next) {
            curr_x = curr_x->next;
            curr_y = curr_y->next;
        }
        
        // Add new tail
        curr_x->next = new_tail_x_node;
        curr_y->next = new_tail_y_node;
        
        free(new_tail_x);
        free(new_tail_y);
    }
    
    // Handle food eating
    if (eating_food) {
        g_score++;
        cells[next_cell_index] &= ~FLAG_FOOD;
        place_food(cells, width, height);
    }
}

/** Sets a random space on the given board to food.
 * Arguments:
 *  - cells: a pointer to the first integer in an array of integers representing
 *    each board cell.
 *  - width: the width of the board
 *  - height: the height of the board
 */
void place_food(int* cells, size_t width, size_t height) {
    /* DO NOT MODIFY THIS FUNCTION */
    unsigned food_index = generate_index(width * height);
    // check that the cell is empty or only contains grass
    if ((*(cells + food_index) == PLAIN_CELL) || (*(cells + food_index) == FLAG_GRASS)) {
        *(cells + food_index) |= FLAG_FOOD;
    } else {
        place_food(cells, width, height);
    }
    /* DO NOT MODIFY THIS FUNCTION */
}

/** Prompts the user for their name and saves it in the given buffer.
 * Arguments:
 *  - `write_into`: a pointer to the buffer to be written into.
 */
void read_name(char* write_into) {
    ssize_t bytes_read;
    char buffer[1000];
    
    while (1) {
        // Print prompt and flush stdout
        printf("Name > ");
        fflush(stdout);
        
        // Read input from stdin (file descriptor 0)
        bytes_read = read(STDIN_FILENO, buffer, 1000);
        
        // Check if read was successful
        if (bytes_read <= 0) {
            printf("Name Invalid: must be longer than 0 characters.\n");
            continue;
        }
        
        // Remove newline if present
        if (buffer[bytes_read - 1] == '\n') {
            buffer[bytes_read - 1] = '\0';
            bytes_read--;
        }
        
        // Check if input is empty after removing newline
        if (bytes_read <= 0) {
            printf("Name Invalid: must be longer than 0 characters.\n");
            continue;
        }
        
        // Ensure null termination
        buffer[bytes_read] = '\0';
        
        // Valid input - copy to destination and set globals
        strcpy(write_into, buffer);
        g_name = write_into;
        g_name_len = bytes_read;
        break;
    }
}

/** Cleans up on game over — should free any allocated memory so that the
 * LeakSanitizer doesn't complain.
 * Arguments:
 *  - cells: a pointer to the first integer in an array of integers representing
 *    each board cell.
 *  - snake_p: a pointer to your snake struct. (not needed until part 3)
 */
void teardown(int* cells, snake_t* snake_p) {
    
    // Free the snake's linked lists if they exist
    if (snake_p) {
        // Free the x-coordinate linked list
        node_t* current_x = snake_p->snake_head_x;
        while (current_x != NULL) {
            node_t* next = current_x->next;
            free(current_x->data);  // Free the integer data
            free(current_x);        // Free the node itself
            current_x = next;
        }
        
        // Free the y-coordinate linked list
        node_t* current_y = snake_p->snake_head_y;
        while (current_y != NULL) {
            node_t* next = current_y->next;
            free(current_y->data);  // Free the integer data
            free(current_y);        // Free the node itself
            current_y = next;
        }
    }
}
