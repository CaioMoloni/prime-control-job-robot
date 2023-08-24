#!/bin/sh

VALID_EMAIL=eve.holt@reqres.in
VALID_PASSWORD=pistol
VALID_FIRST_NAME=Eve
INVALID_FIRST_NAME=Holt
INVALID_LAST_NAME=Holt

INVALID_EMAIL=teste@teste.123
INVALID_PASSWORD=teste
INVALID_FIRST_NAME=teste
INVALID_LAST_NAME=teste

robot -d '..\results\valid\' -t 'Create a User' -v EMAIL:$VALID_EMAIL -v PWD:$VALID_PASSWORD -v FIRSTNAME:$VALID_FIRST_NAME -v LASTNAME:$VALID_LAST_NAME  Tests/api_tests.robot

robot -d '..\results\invalid\' -t 'Create a User' -v EMAIL:$INVALID_EMAIL -v PWD:$INVALID_PASSWORD -v FIRSTNAME:$INVALID_FIRST_NAME -v LASTNAME:$INVALID_LAST_NAME   Tests/api_tests.robot