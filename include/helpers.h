#pragma once
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <string.h>

/// @brief A quick-and-dirty method to make a directory safely
/// @param dir_name path to the directory to be made
void create_directory_if_not_exists(const char *dir_name)
{
    struct stat st;
    // Check if the directory exists
    if (stat(dir_name, &st) == -1)
    {
        // Directory does not exist, create it
        if (mkdir(dir_name, 0755) == 0)
            printf("directory '%s' created successfully.\n", dir_name);
        else
            perror("error creating directory");
    }
    else if (S_ISDIR(st.st_mode))
        printf("directory '%s' already exists.\n", dir_name);
    else
        printf("a file with the name '%s' exists, but it is not a directory.\n", dir_name);
}