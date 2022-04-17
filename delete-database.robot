*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database         dbConfigFile=config/database-connect.cfg
Suite Teardown  Disconnect From Database


*** Test Cases ***
Deletar cliente cliente
    Execute SQL String      DELETE FROM Persons WHERE PersonID = 45