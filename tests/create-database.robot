*** Settings ***
Resource            config/base.robot

Test Setup         Connect to the database
Test Teardown      Close Session


*** Test Cases ***
Cadastrar um novo cliente
    Execute SQL String      INSERT INTO Persons VALUES (45, "Framework", "Robot", "WEB", "WEB")