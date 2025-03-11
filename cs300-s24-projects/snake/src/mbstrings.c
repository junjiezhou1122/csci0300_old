#include "mbstrings.h"

#include <stddef.h>

/* mbslen - multi-byte string length
 * - Description: returns the number of UTF-8 code points ("characters")
 * in a multibyte string. If the argument is NULL or an invalid UTF-8
 * string is passed, returns -1.
 *
 * - Arguments: A pointer to a character array (`bytes`), consisting of UTF-8
 * variable-length encoded multibyte code points.
 *
 * - Return: returns the actual number of UTF-8 code points in `src`. If an
 * invalid sequence of bytes is encountered, return -1.
 *
 * - Hints:
 * UTF-8 characters are encoded in 1 to 4 bytes. The number of leading 1s in the
 * highest order byte indicates the length (in bytes) of the character. For
 * example, a character with the encoding 1111.... is 4 bytes long, a character
 * with the encoding 1110.... is 3 bytes long, and a character with the encoding
 * 1100.... is 2 bytes long. Single-byte UTF-8 characters were designed to be
 * compatible with ASCII. As such, the first bit of a 1-byte UTF-8 character is
 * 0.......
 *
 * You will need bitwise operations for this part of the assignment!
 */
size_t mbslen(const char* bytes) {
    // Check for NULL pointer
    if (bytes == NULL) {
        return -1;
    }

    size_t count = 0;
    const unsigned char* str = (const unsigned char*)bytes;

    while (*str != '\0') {
        // Get the first byte
        unsigned char byte = *str;

        // Determine the number of bytes in this UTF-8 character
        int bytes_in_char;
        
        if ((byte & 0x80) == 0) {          // 0xxxxxxx - 1 byte character
            bytes_in_char = 1;
        } else if ((byte & 0xE0) == 0xC0) { // 110xxxxx - 2 byte character
            bytes_in_char = 2;
        } else if ((byte & 0xF0) == 0xE0) { // 1110xxxx - 3 byte character
            bytes_in_char = 3;
        } else if ((byte & 0xF8) == 0xF0) { // 11110xxx - 4 byte character
            bytes_in_char = 4;
        } else {
            // Invalid UTF-8 sequence
            return -1;
        }

        // Validate continuation bytes (if any)
        for (int i = 1; i < bytes_in_char; i++) {
            // Check if we hit end of string prematurely
            if (str[i] == '\0') {
                return -1;
            }
            // Each continuation byte should start with 10xxxxxx
            if ((str[i] & 0xC0) != 0x80) {
                return -1;
            }
        }

        // Move pointer to next character
        str += bytes_in_char;
        count++;
    }

    return count;
}
