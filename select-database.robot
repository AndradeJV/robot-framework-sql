*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database         dbConfigFile=config/database-connect.cfg
Suite Teardown  Disconnect From Database


*** Test Cases ***
Teste de conexão banco de dados mysql
    Log To Console                      Conexão com banco de dados

Verificar se a tabela existe
    Table Must Exist                    Persons

Verificar se a tabela contém dados
    Check If Exists In Database         SELECT * FROM Persons

Verificar se a tabela não contém o dado que eu não quero
    Check If Not Exists In Database     SELECT * FROM Persons WHERE LastName = "Andrade"

Listar todos as pessoas
    @{people}                           Query   SELECT * FROM Persons WHERE PersonID < 5
    FOR  ${person}  IN  @{people}
        Log To Console  ${person}
    END