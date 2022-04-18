*** Settings ***
Resource            config/base.robot

Suite Setup         New Session
Suite Teardown      Close Session


*** Test Cases ***
Atualizar cadastro cliente
    Execute SQL String      UPDATE Persons SET City = "Python" WHERE PersonID = "45"