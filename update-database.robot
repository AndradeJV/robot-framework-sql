*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database         dbConfigFile=config/database-connect.cfg
Suite Teardown  Disconnect From Database


*** Test Cases ***
Atualizar cadastro cliente
    Execute SQL String      UPDATE Persons SET City = "Python" WHERE PersonID = "45"