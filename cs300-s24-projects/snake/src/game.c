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
    // Store current position
    int prev_x = snake_head_x;
    int prev_y = snake_head_y;
    
    // Update the direction based on input if it's valid
    if (input != INPUT_NONE) {
        snake_direction = input;
    }
    
    // Calculate the new position based on direction
    int new_x = snake_head_x;
    int new_y = snake_head_y;
    
    if (snake_direction == INPUT_RIGHT) {
        new_x += 1;
    } else if (snake_direction == INPUT_LEFT) {
        new_x -= 1;
    } else if (snake_direction == INPUT_UP) {
        new_y -= 1;
    } else if (snake_direction == INPUT_DOWN) {
        new_y += 1;
    }
    
    // Check the next position
    int next_cell_index = new_y * width + new_x;
    int next_cell_content = cells[next_cell_index];
    
    // Check for collisions with wall (not with grass!)
    if (next_cell_content & FLAG_WALL) {
        // Collision with wall - game over
        g_game_over = 1;
        return;
    }
    
    // Remove snake from current position before moving
    cells[prev_y * width + prev_x] &= ~FLAG_SNAKE;
    
    // Update the head position
    snake_head_x = new_x;
    snake_head_y = new_y;
    
    // Place snake in new position before checking for food
    cells[snake_head_y * width + snake_head_x] |= FLAG_SNAKE;
    
    // Check if snake ate food
    if (next_cell_content & FLAG_FOOD) {
        g_score += 1;
        cells[next_cell_index] &= ~FLAG_FOOD;  // Remove the food
        place_food(cells, width, height);      // Place new food
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
    // TODO: implement! (remove the call to strcpy once you begin your
    // implementation)
    strcpy(write_into, "placeholder");
}

/** Cleans up on game over — should free any allocated memory so that the
 * LeakSanitizer doesn't complain.
 * Arguments:
 *  - cells: a pointer to the first integer in an array of integers representing
 *    each board cell.
 *  - snake_p: a pointer to your snake struct. (not needed until part 3)
 */
void teardown(int* cells, snake_t* snake_p) {
    // TODO: implement!
}
