*** Settings ***
Resource            config/base.robot

Suite Setup         New Session
Suite Teardown      Close Session


*** Test Cases ***
Deletar cliente cliente
    Execute SQL String      DELETE FROM Persons WHERE PersonID = 45