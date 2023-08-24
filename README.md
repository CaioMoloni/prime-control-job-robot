# API Test Automation using 🤖Robot Framework🤖

This repository contains automated tests for APIs using the Robot Framework.

## Table of Contents 📁

- [Introduction](#introduction)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation🖥️)
- [Project Structure](#project-structure🗄)
- [Running Tests](#running-tests🏃)
- [Reporting](#reporting)
- [Custom Keywords](#custom-keywords)
- [Contributing](#contributing)
- [Authority](#authority👨)

## Introduction 

This project demonstrates automated testing of APIs using the Robot Framework. The tests are written in a Behavior-Driven Development (BDD) style and are organized in feature files.

## Getting Started

### Prerequisites  

- Python (3.6 or higher)
- Robot Framework (`pip install robotframework`)
- Libraries (`RequestsLibrary` and `JSONLibrary`)
- Access the API website ( https://reqres.in )

### Installation🖥️

1. Clone this repository: https://github.com/CaioMoloni/prime-control-job-robot/
2. Install the required libraries:
   - pip install robotframework-requests
   - pip install robotframework-jsonlibrary

## Project Structure🗄

The project follows a directory structure suitable for API test automation:

- `Data`: Contains the common variables for the tests
- `Resources`: Contains custom keywords and the BDD steps.
- `Results`: Contains the execution results
- `Script`: Command to run some scenarios
- `Tests`: Contains the test steps

## Running Tests🏃

To run the tests, execute the following command in the terminal:

  - robot -d /results/valid -t 'Create a User' -v EMAIL:eve.holt@reqres.in -v PWD:pistol -v FIRSTNAME:Eve -v LASTNAME:Holt   Tests/api_tests.robot
    
## Reporting📝

After running the tests, HTML and XML reports will be generated in the `result/` directory. Open the HTML report in a web browser to view the results.

## Custom Keywords 

Custom keywords are defined in the `resources/` directory. These keywords encapsulate common operations and enhance test readability.

## Authority👨

This project is made by Caio Moloni. LinkedIn: (https://www.linkedin.com/in/caio-henrique-de-paula-moloni-06999a143/)
