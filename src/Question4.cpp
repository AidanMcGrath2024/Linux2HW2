#include "Question4.hpp"

void question4() {
	std::vector<double> x = linspace(0, 4 * pi); // setting from 0 to 4pi
	std::vector<double> y = transform(x, [](double x){ return 7 * cos(x); }); // setting y vector to 7cosx because cosine is underapprciated and I like the number 7
	figure(1); // first figure
	plot(x,y); // function to make plot 1
	title("7cos(x)"); // title plot
	xlabel("x"); //label x axis  
	ylabel("y"); // label y axis 
	show(); // show plot 

	// 2nd plot
	std::string line = ""; // initialize string, later to be used to extract csv line 
	std::ifstream iFile; // creat ifstream object 

	iFile.open("Q4data.csv"); // open file into iFile
	
	std::vector<double>time; // initilize time vector
	std::vector<double>xval; // initilize x vector
	std::vector<double>yval; // initialize y vecter 

	std::string timeLabel, xLabel, yLabel; // initializing string variables for the headers

    std::getline(iFile, line); // get first line (header files)

    // Find the positions of commas to extract the header values
    size_t cLocation1 = line.find(",");  // finding the first comma between time and x headers
    size_t cLocation2 = line.find(",", cLocation1 + 1);  // finding the first comma between x and y headers

    // Extract and assign the headers (time, x, y)
    timeLabel = line.substr(0, cLocation1);  // extract time header
    xLabel = line.substr(cLocation1 + 1, cLocation2 - cLocation1 - 1);  // extract x header
    yLabel = line.substr(cLocation2 + 1); // extract y header

	while (std::getline(iFile, line)) { // loop to get all other lines 
		int cLocation1 = line.find(",");  // finding the first comma between time and x
        int cLocation2 = line.find(",", cLocation1 + 1); // finding the second comma between x and y

        double timeVal = std::stod(line.substr(0, cLocation1)); // extracting and converting time values
        double xVal = std::stod(line.substr(cLocation1 + 1, cLocation2 - cLocation1 - 1)); // extracting and converting x values
        double yVal = std::stod(line.substr(cLocation2 + 1)); // extracting and converting y values

        // pushing extracted values to their vectors
        time.push_back(timeVal);
        xval.push_back(xVal);
        yval.push_back(yVal);
	};
	iFile.close(); // close file

	figure(2);
	subplot(2,2,1); // breaking up figure 2 into 4 plots
	plot(xval, yval); // make x vs y plot 
	title("X data vs Y Data (y = cos^2(x))"); // title plot 
	xlabel(xLabel); // using extracted header from csv to label x 
	ylabel(yLabel); // using extracted header from csv to label y
	show(); // show plot 

	subplot(2,2,2); // breaking up figure 2 into 4 plots
	plot(time, xval); // make t vs x plot 
	title("Time data vs X Data"); // title plot 
	xlabel(timeLabel); // use extracted header from csv to label time 
	ylabel(xLabel); // use extracted header from csv to label x
	show(); // show plot

	subplot(2,2,3); // breaking up figure 2 into 4 plots
	plot(time, yval); // make t vs y plot 
	title("Time data vs Y Data"); // title plot 
	xlabel(timeLabel); // using extracted header from csv to label time 
	ylabel(yLabel); // using extracted header from csv to label y
	show(); // show plot

	subplot(2,2,4); // breaking up figure 2 into 4 plots
	plot(yval, xval); // make y vs x plot 
	title("Y data vs X Data, For Fun"); // title plot 
	xlabel(yLabel); // using extracted header from csv to label y
	ylabel(xLabel); // using extracted header from csv to label x
	show(); // show plot 
}
