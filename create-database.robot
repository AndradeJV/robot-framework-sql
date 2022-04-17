*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database         dbConfigFile=config/database-connect.cfg
Suite Teardown  Disconnect From Database


*** Test Cases ***
Cadastrar um novo cliente
    Execute SQL String      INSERT INTO Persons VALUES (45, "Framework", "Robot", "WEB", "WEB")

