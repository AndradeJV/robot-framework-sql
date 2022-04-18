*** Settings ***
Library     DatabaseLibrary


*** Keywords ***
Connect to the database
    Connect To Database         dbConfigFile=/database-connect.cfg

Close Session
    Capture Page Screenshot
    Disconnect From Database