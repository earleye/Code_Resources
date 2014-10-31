***MySQL Notes

   * Commands are not case sensitive
   * use a semicolon at the end of each statement; used as a line terminator (similar to SAS
   * Comments:
   * 
      * — double dash
      * /*   */ allows for multi-line comments
      * # (This is not standard Sql, and recommended that you not use this)
   * SELECT * FROM (table) WHERE variable = ‘x’; (condition that must be satisfied for each line of the data) 
   * Functions = ex: SELECT COUNT (*)…. used to find the number of conditions that match where clause
   * Expressions in SQL are used to derive values from data.
   * Strings must be in SINGLE QUOTES!
   *  [ ] indicated optional statements

               Example:
               SELECT name, Population/1000000 AS PopMM
               FROM country
               WHERE Population >= 1000000
               ORDER BY Populations DESC;

Creating Tables


   * CREATE TABLE name_of_table ( Table definition inside parentheses id VARCHAR(255), name VARCHAR(255), …, zip INTEGER );
   * 
      * Creates a new table, No comma after last definition
      * [ ] = optional constraint
   * DESCRIBE test;
   * 
      * Give you details of table (Proc print view)
   * SHOW TABLE STATUS;

   * 
      * Shows you status of all tables
   * SHOW TABLE STATUS LIKE ‘test’;
   * 
      * Shows status of just table after the LIKE
   * SHOW CREATE TABLE name_of_table;
   * 
      * gives you script for how a table was created
   * DROP TABLE IF EXISTS name_of_table
   * 
      * You have to drop a table if it already exists

Operators
= Equal
> Greater than
< Less than
>= Greater than or equal to
<= Less than or equal to
<> Not equal
LIKE = pattern matching operator, can be used in the conditional selection of the WHERE clause.
% = Wild card operator that can be used to match any possible character that might appear before or after the characters specify, can be positional
EX: WHERE first LIKE ‘Er%’;  WHERE last LIKE ‘%s’;

Inserting into a table


   * The insert statement is used to insert or add a row of data into the table
   * INSERT INTO “tablename” (first_column, …last_column) values (first_value, … Last_value);

Updating Records


   * The update statement is used to update or change records that match a specified criteria.  This is accomplished by carefully constructing a WHERE clause

Example:

update “table name”
set “column_name” = “new_value”
[,’next_column” = “new_value2”,…]
WHERE “column_name” OPERATOR “value” [and|or ‘column’ OPERATOR “value”];

Deleting Records


   * The delete statement is used to delete records or rows from the table
   * NOTE: If you leave off the where clause, all records will be deleted!!
   * To delete an entire row/record from a table, enter “delete from” followed by the table name, followed by the where clause which contains the conditions to delete, If you leave off the where clause, all records will be deleted.

Example:
delete from “table_name”
where “column_name” OPERATOR “value [and|or “column” OPERATOR “value”];

Drop a Table


   * The drop table command is used to delete a table and all rows in the table
   * To delete an entire table including all of its rows, issue the drop table command, followed by the table name.
   * DROP TABLE is different from deleting all of the records in the table.  Deleting all of the records in the table leaves the table, including column and constraint information.  Dropping the table removes the table definitions, as well as all of its rows

Example:
DROP TABLE table_name;
DROP TABLE IF EXISTS table_name;

Select statements


   * The select statement is used to query the database and retrieve selected data that match the criteria that you specify.
