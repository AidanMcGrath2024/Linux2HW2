#pragma once
#include <string>
#include <vector>
#include <array>

void Question5();
void Question5a();
void Question5b();
void Question5c();

/// @brief Read the first line of a CSV file to get the column names
/// @param filename path to the CSV file
/// @return std::strings of each header name
std::vector<std::string> readCSVHeader(const std::string &filename);
/// @brief Read a CSV file with a single header line that is only of numeric data
/// @param filename path to the CSV file
/// @return vector of doubles with each element being a row of the table
std::vector<std::vector<double>> readCSV(const std::string &filename);

void plot(std::array<std::string, 3> &plotLabels, std::vector<std::string> &legendEntries,
          std::vector<double> &x, std::vector<std::vector<double>> &ys);
