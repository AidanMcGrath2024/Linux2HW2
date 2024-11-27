#include "Question5.h"
#include "helpers.h"

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <matplot/matplot.h>

#include <cmath>
#include <iostream>
#include <fstream>
#include <sstream>

void Question5()
{
    Question5a();
    Question5b();
    Question5c();
}

void Question5a()
{
    if (!glfwInit())
    {
        std::cerr << "Failed to initialize GLFW" << std::endl;
        return;
    }

    GLFWwindow *window = glfwCreateWindow(500, 500, "Technicolor Spiral", NULL, NULL);
    if (!window)
    {
        std::cerr << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return;
    }

    glfwMakeContextCurrent(window);

    if (glewInit() != GLEW_OK)
    {
        std::cerr << "Failed to initialize GLEW" << std::endl;
        return;
    }

    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);

    while (!glfwWindowShouldClose(window))
    {
        glClear(GL_COLOR_BUFFER_BIT);

        glBegin(GL_LINES);

        float starting_x = 0;
        float starting_y = 0;

        for (int deg = 0; deg < 1440; deg++)
        {
            glColor3f(cos(static_cast<float>(deg) * M_PI / 180), sin(static_cast<float>(deg) * M_PI / 180), .5); // color modulation
            float x = cos(static_cast<float>(deg) * M_PI / 180) * deg / 1440;                                    // basically the amplitude of the sin and cosin keep increasing up to 1
            float y = sin(static_cast<float>(deg) * M_PI / 180) * deg / 1440;
            // std::cout << "x: " << x << "  y: " << y << "   " << deg << std::endl;
            glVertex2f(starting_x, starting_y);
            glVertex2f(x, y);
            starting_x = x;
            starting_y = y;
        }

        glEnd();

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwTerminate();
}

// Defines a function to allow for scaling the viewing window
void framebuffer_size_callback(GLFWwindow *window, int width, int height)
{
    glViewport(0, 0, width, height);
}

void Question5b()
{
    // Checks to see if GLFW was initialized
    if (!glfwInit())
    {
        std::cerr << "Failed to initialize GLFW\n";
        return;
    }

    // Checks to see if a window was properlly created
    GLFWwindow *window = glfwCreateWindow(640, 480, "OpenGL Elliptical Lift Distribution Plotting", NULL, NULL);
    if (!window)
    {
        std::cerr << "Failed to create GLFW window\n";
        glfwTerminate();
        return;
    }

    // Callback function to dynamically change the window size by the user in real time
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    glfwMakeContextCurrent(window);
    glewExperimental = GL_TRUE;
    if (glewInit() != GLEW_OK)
    {
        std::cerr << "Failed to initialize GLEW\n";
        glfwDestroyWindow(window);
        glfwTerminate();
        return;
    }

    // Sets background color
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);

    // While the window is open, plot... Else window was closed
    while (!glfwWindowShouldClose(window))
    {
        glClear(GL_COLOR_BUFFER_BIT);

        double scale = 1.0; // Use this scale for both the width of the wing and the lift distribution

        // My equation for Q4 was the elliptical lift distribution of a wing.
        // Below is my lines to plot the distribution.
        // Draw the elliptical lift distribution
        glBegin(GL_LINE_STRIP);
        glColor3f(0.0f, 1.0f, 0.0f); // Green color
        for (double x = -scale; x <= scale; x += 0.01)
        {
            double L_prime = sqrt(1 - pow(x / scale, 2)); // Use scale for lift distribution width
            glVertex2f(x, L_prime);
        }
        glEnd();

        // Below the Elliptical Lift distribution, I wanted to also visualize a general elliptical wing
        // Though not necessarily the exact shape of an elliptical wing, it is a generally shaped
        // planeform to represent the distribution. The way the lines were drawn allowed for a "shaded"
        // effect of the object. Difficulties rose when trying to define my own planform as a closed shape
        // to then color in as an elliptical wing is not actually an elipse. The centerline is skewed to
        // about the 1/4 chord point.
        // Draw the wing beneath the lift distribution
        glBegin(GL_LINE_LOOP);
        glColor3f(1.0f, 1.0f, 1.0f); // White color for the wing
        for (double x = -scale; x <= scale; x += 0.01)
        {
            double y1 = -0.175 * sqrt(1 - pow(x / scale, 2)); // Adjusted for the wing width using the same scale
            double y2 = 0.1 * sqrt(1 - pow(x / scale, 2));
            glVertex2f(x, y1);
            glVertex2f(x, y2);
        }
        glEnd();

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwDestroyWindow(window);
    glfwTerminate();
}

std::vector<std::string> readCSVHeader(const std::string &filename)
{
    std::vector<std::string> headers;
    std::ifstream file(filename);
    std::string line;

    if (!file.is_open())
    {
        std::cerr << "Error opening file: " << filename << std::endl;
        return {};
    }

    while (std::getline(file, line))
    {
        std::stringstream ss(line);
        std::string value;
        std::vector<std::string> row;

        while (std::getline(ss, value, ','))
        {
            row.push_back(value);
        }
        headers = row;
        break;
    }

    file.close();
    return headers;
}
std::vector<std::vector<double>> readCSV(const std::string &filename)
{
    std::vector<std::vector<double>> table;
    std::ifstream file(filename);
    std::string line;

    if (!file.is_open())
    {
        std::cerr << "Error opening file: " << filename << std::endl;
        return {};
    }

    // skip the header
    std::getline(file, line);

    while (std::getline(file, line))
    {
        std::stringstream ss(line);
        std::string value;
        std::vector<double> row;

        while (std::getline(ss, value, ','))
            row.push_back(std::stof(value));
        table.emplace_back(row);
    }

    file.close();
    return table;
}

void plot(std::array<std::string, 3> &plotLabels, std::vector<std::string> &legendEntries, std::vector<double> &x, std::vector<std::vector<double>> &ys)
{
    // Initial Setup
    // auto fig = matplot::figure();
    // fig->size(900, 600);
    // fig->position(450, -300);

    // Plotting the data
    for (auto y : ys)
    {
        auto plot1 = matplot::plot(x, y);
        plot1->line_width(2);
        matplot::hold("on");
    }

    // Formatting
    auto l = ::matplot::legend(legendEntries);
    l->location(matplot::legend::general_alignment::topright);
    matplot::title(plotLabels[0]);
    matplot::xlabel(plotLabels[1]);
    matplot::ylabel(plotLabels[2]);
    matplot::hold("off");

    matplot::show();

    create_directory_if_not_exists("results");
    matplot::save("results/" + plotLabels[0], "jpeg");
}

void Question5c()
{
    std::string filename = "data.csv";
    std::vector<std::vector<double>> table = readCSV(filename);
    std::vector<std::string> headers = readCSVHeader(filename);

    std::array<std::string, 3> plotLabels{{"cool plot with matplot++", headers[0], "value"}};
    std::vector<std::string> legendEntries;
    legendEntries.assign(headers.begin() + 1, headers.end());

    std::vector<double> x;
    for (size_t i = 0; i < table.size(); i++)
        x.emplace_back(table[i][0]);
    std::vector<std::vector<double>> ys(table[0].size() - 1, std::vector<double>(table.size()));
    for (size_t i = 0; i < table.size(); i++)
        for (size_t j = 1; j < table[0].size(); j++)
            ys[j - 1][i] = table[i][j];

    plot(plotLabels, legendEntries, x, ys);
}
