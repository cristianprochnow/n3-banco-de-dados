CREATE DATABASE IMOBI 
  CHARACTER SET utf8
  COLLATE utf8_general_ci;
USE IMOBI;

source /app/src/create.sql;
source /app/src/alter_table.sql;
source /app/src/procedures.sql;
source /app/src/view.sql;
source /app/src/trigger.sql;
source /app/src/call_procedures_insert.sql;