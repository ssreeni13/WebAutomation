*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

Suite Setup  Connect To Database    pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   root
${DBHost}   127.0.0.1
${DBPort}   3306

*** Test Cases ***
#Create person table
    ${output}=  Execute SQL String  Create table person(id integer,first_name  varchar(20),last_name  varchar(20));
    Log to console  ${output}
    should be equal as strings  ${output}     None

Inserting Data in person Table
    #Single Record
    #${output}=  Execute SQL String  Insert into person values(101,"John","canady");

    #Multiple Record
    ${output}=  Execute SQL Script   ./TestData/mydb_person_insertData.sql

    log to console  ${output}
    should be equal as strings  ${output}   None

Check David record present in Person Table
    check if exists in database  select id from mydb.person where first_name="David";

Check Jio record Not present in Person Table
    check if not exists in database  select id from mydb.person where first_name="Jio";

Check Person Table exists in mydb database
    table must exist  person

Verify Row Count is Zero
    row count is 0  SELECT * FROM mydb.person WHERE first_name="xyz";

Verify Row Count is Equal to Some Value
    row count is equal to x  SELECT * FROM mydb.person WHERE first_name="David";

Verify Row Count is Greater than Some Value
    row count is greater than x  SELECT * FROM mydb.person WHERE first_name="David";

Verify Row Count is less than Some Value
    row count is less than x  SELECT * FROM mydb.person WHERE first_name="David";

Update record in person table
    ${output}=  Execute SQL Script   Update mydb.person set first_name="Jio" where id=104;
    log to console  ${output}
    should be equal as strings    ${output}       None

Retrieve Records from Person Table
    ${queryResults}=   query     Select * from mydb.person;
    log to console  many ${queryResults}

Delete Records from Person Table
    ${output}=  Execute SQL Script   Delete from mydb.person;
    should be equal as strings    ${output}       None

*** Keywords ***
Invalid login
    [Arguments]   ${username}       ${password}
    Input username   ${username}
    Input password     ${password}
    click login button
    Error message should be visible