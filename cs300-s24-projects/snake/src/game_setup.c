#include "game_setup.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stddef.h>

#include "game.h"
#include "common.h"

// Function prototypes
void split_token(char* token[], char* compressed);
void get_shape(char* token[], int shape[]);
int get_index(int row_number, int column_number, int width);
void init_row(int row_number, int width, int* cells, char* info);
char* get_info(char* token);

// Some handy dandy macros for decompression
#define E_CAP_HEX 0x45
#define E_LOW_HEX 0x65
#define G_CAP_HEX 0x47
#define G_LOW_HEX 0x67
#define S_CAP_HEX 0x53
#define S_LOW_HEX 0x73
#define W_CAP_HEX 0x57
#define W_LOW_HEX 0x77
#define DIGIT_START 0x30
#define DIGIT_END 0x39

/** Initializes the board with walls around the edge of the board.
 *
 * Modifies values pointed to by cells_p, width_p, and height_p and initializes
 * cells array to reflect this default board.
 *
 * Returns INIT_SUCCESS to indicate that it was successful.
 *
 * Arguments:
 *  - cells_p: a pointer to a memory location where a pointer to the first
 *             element in a newly initialized array of cells should be stored.
 *  - width_p: a pointer to a memory location where the newly initialized
 *             width should be stored.
 *  - height_p: a pointer to a memory location where the newly initialized
 *              height should be stored.
 */
enum board_init_status initialize_default_board(int** cells_p, size_t* width_p,
                                                size_t* height_p) {
    *width_p = 20;
    *height_p = 10;
    int* cells = malloc(20 * 10 * sizeof(int));
    *cells_p = cells;
    for (int i = 0; i < 20 * 10; i++) {
        cells[i] = PLAIN_CELL;
    }

    // Set edge cells!
    // Top and bottom edges:
    for (int i = 0; i < 20; ++i) {
        cells[i] = FLAG_WALL;
        cells[i + (20 * (10 - 1))] = FLAG_WALL;
    }
    // Left and right edges:
    for (int i = 0; i < 10; ++i) {
        cells[i * 20] = FLAG_WALL;
        cells[i * 20 + 20 - 1] = FLAG_WALL;
    }

    // Set grass cells!
    // Top and bottom edges:
    for (int i = 1; i < 19; ++i) {
        cells[i + 20] = FLAG_GRASS;
        cells[i + (20 * (9 - 1))] = FLAG_GRASS;
    }
    // Left and right edges:
    for (int i = 1; i < 9; ++i) {
        cells[i * 20 + 1] = FLAG_GRASS;
        cells[i * 20 + 19 - 1] = FLAG_GRASS;
    }

    // Add snake
    cells[20 * 2 + 2] = FLAG_SNAKE;

    return INIT_SUCCESS;
}

/** Initialize variables relevant to the game board.
 * Arguments:
 *  - cells_p: a pointer to a memory location where a pointer to the first
 *             element in a newly initialized array of cells should be stored.
 *  - width_p: a pointer to a memory location where the newly initialized
 *             width should be stored.
 *  - height_p: a pointer to a memory location where the newly initialized
 *              height should be stored.
 *  - snake_p: a pointer to your snake struct (not used until part 3!)
 *  - board_rep: a string representing the initial board. May be NULL for
 * default board.
 */
enum board_init_status initialize_game(int** cells_p, size_t* width_p,
                                       size_t* height_p, snake_t* snake_p,
                                       char* board_rep) {

    // initizalize the default board or other board
    enum board_init_status init_status;
    if (board_rep == NULL) {
        init_status = initialize_default_board(cells_p, width_p, height_p);
    } else {
        init_status = decompress_board_str(cells_p, width_p, height_p, snake_p, board_rep);
    }

    // Only initialize game state and place food if board initialization succeeded
    if (init_status == INIT_SUCCESS) {
        // Initialize all global variables
        snake_direction = INPUT_RIGHT;
        g_game_over = 0;
        g_score = 0;
        
        // Find the snake position in the board instead of assuming (2,2)
        int found_snake = 0;
        for (size_t y = 0; y < *height_p && !found_snake; y++) {
            for (size_t x = 0; x < *width_p; x++) {
                if ((*cells_p)[y * (*width_p) + x] & FLAG_SNAKE) {
                    snake_head_x = x;
                    snake_head_y = y;
                    found_snake = 1;
                    break;
                }
            }
        }
        
        // If we can't find a snake (which shouldn't happen due to our validation),
        // default to (2,2)
        if (!found_snake) {
            snake_head_x = 2;
            snake_head_y = 2;
        }
        
        place_food(*cells_p, *width_p, *height_p);
    }

    return init_status;
}

/** Takes in a string `compressed` and initializes values pointed to by
 * cells_p, width_p, and height_p accordingly. Arguments:
 *      - cells_p: a pointer to the pointer representing the cells array
 *                 that we would like to initialize.
 *      - width_p: a pointer to the width variable we'd like to initialize.
 *      - height_p: a pointer to the height variable we'd like to initialize.
 *      - snake_p: a pointer to your snake struct (not used until part 3!)
 *      - compressed: a string that contains the representation of the board.
 * Note: We assume that the string will be of the following form:
 * B24x80|E5W2E73|E5W2S1E72... To read it, we scan the string row-by-row
 * (delineated by the `|` character), and read out a letter (E, S or W) a number
 * of times dictated by the number that follows the letter.
 */
enum board_init_status decompress_board_str(int** cells_p, size_t* width_p,
                                            size_t* height_p, snake_t* snake_p,
                                            char* compressed) {
    char* token[100];
    int shape[2];
    char* info;
    enum board_init_status status = INIT_SUCCESS;

    // Split token
    split_token(token, compressed);

    // Get the width and height
    get_shape(token, shape);
    *width_p = shape[0];
    *height_p = shape[1];
    
    // Check if dimensions are valid (greater than 0)
    if (*width_p <= 0 || *height_p <= 0) {
        return INIT_ERR_INCORRECT_DIMENSIONS;
    }
    
    // Allocate memory for cells
    int* cells = malloc((*width_p) * (*height_p) * sizeof(int));
    if (!cells) {
        return INIT_ERR_INCORRECT_DIMENSIONS;
    }
    *cells_p = cells;
    
    // Initialize all cells to PLAIN_CELL
    for (size_t i = 0; i < (*width_p) * (*height_p); i++) {
        cells[i] = PLAIN_CELL;
    }

    // Check if we have the correct number of rows
    size_t row_count = 0;
    for (size_t i = 0; token[i] != NULL; i++) {
        row_count++;
    }
    
    // First token is the dimensions, so we should have height+1 tokens
    if (row_count != *height_p + 1) {
        status = INIT_ERR_INCORRECT_DIMENSIONS;
        goto cleanup;
    }

    int snake_count = 0;
    
    for (size_t i = 0; i < *height_p; i++) {
        // Check if token exists
        if (token[i+1] == NULL) {
            status = INIT_ERR_INCORRECT_DIMENSIONS;
            goto cleanup;
        }
        
        info = get_info(token[i+1]);
        if (!info) {
            status = INIT_ERR_BAD_CHAR;
            goto cleanup;
        }
        
        // Check if the row length matches the width
        if (strlen(info) != *width_p) {
            free(info);
            status = INIT_ERR_INCORRECT_DIMENSIONS;
            goto cleanup;
        }
        
        // Check for invalid characters
        for (size_t j = 0; j < strlen(info); j++) {
            if (info[j] != 'W' && info[j] != 'E' && info[j] != 'G' && info[j] != 'S') {
                free(info);
                status = INIT_ERR_BAD_CHAR;
                goto cleanup;
            }
            
            // Count snakes
            if (info[j] == 'S') {
                snake_count++;
            }
        }
        
        init_row(i, *width_p, cells, info);
        free(info);
    }
    
    // Check if we have exactly one snake
    if (snake_count != 1) {
        status = INIT_ERR_WRONG_SNAKE_NUM;
        goto cleanup;
    }

    return INIT_SUCCESS;

cleanup:
    if (status != INIT_SUCCESS) {
        free(cells);
        *cells_p = NULL;
    }
    return status;
}

// Split token based on '|'
void split_token(char* token[], char* compressed) {
    char* current_token;
    const char* delimiter = "|";
    current_token = strtok(compressed, delimiter);
    int i = 0;
    while (current_token != NULL) {
        token[i] = current_token;
        current_token = strtok(NULL, delimiter);
        i++;
    }
}

// Get the width and height
void get_shape(char* token[], int shape[]) {
    char* shape_token = token[0];
    int i = 1;  // Start at index 1 to skip the 'B' prefix
    int height = 0;
    
    // Parse height digits until we hit 'x'
    while (shape_token[i] != 'x' && shape_token[i] != '\0') {
        height = height * 10 + (shape_token[i] - '0');
        i++;
    }
    
    i++;  // Skip the 'x'
    int width = 0;
    
    // Parse width digits
    while (shape_token[i] != '\0') {
        width = width * 10 + (shape_token[i] - '0');
        i++;
    }
    
    shape[0] = width;   // Store width
    shape[1] = height;  // Store height
}

// Get the index of the row and column number in cell
int get_index(int row_number, int column_number, int width) {
    return row_number * width + column_number;
}

// Decorate a row based on token
void init_row(int row_number, int width, int* cells, char* info) {
    int cell_index = get_index(row_number, 0, width);
    for (int i = 0; i < width; i++) {
        if (info[i] == 'W') {
            cells[cell_index] = FLAG_WALL;
        }
        if (info[i] == 'E') {
            cells[cell_index] = PLAIN_CELL;
        }
        if (info[i] == 'G') {
            cells[cell_index] = FLAG_GRASS;
        }
        if (info[i] == 'S') {
            cells[cell_index] = FLAG_SNAKE;
        }
        cell_index++;
    }
}

// Get the info from the token, and put it into an array
char* get_info(char* token) {
    char* info = malloc(1000 * sizeof(char)); // Allocate memory for result
    if (!info) return NULL; // Check allocation success
    
    int info_index = 0;
    int i = 0;
    
    while (token[i] != '\0') {
        char type = token[i];
        i++; // Move to the number after the letter
        
        // Parse the number
        int count = 0;
        while (token[i] >= '0' && token[i] <= '9') {
            count = count * 10 + (token[i] - '0');
            i++;
        }
        
        // Add the character 'count' times to the info array
        for (int j = 0; j < count; j++) {
            info[info_index++] = type;
        }
    }
    
    // Add null terminator
    info[info_index] = '\0';
    return info;
}