--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table H_P
--------------------------------------------------------

  CREATE TABLE "H_P" 
   (	"PRIVILEGE_ID" NUMBER(10,0), 
	"PRIVILEGE_NAME" VARCHAR2(200 BYTE), 
	"CODE" VARCHAR2(20 BYTE), 
	"CREATED_DATE" DATE, 
	"NOTE" VARCHAR2(100 BYTE), 
	"STATUS" VARCHAR2(3 BYTE), 
	"URL" VARCHAR2(100 BYTE), 
	"ORDER_ID" NUMBER
   ) ;
   
--------------------------------------------------------
--  DDL for Table H_U_R
--------------------------------------------------------

  CREATE TABLE "H_U_R" 
   (	"USER_ID" NUMBER(10,0), 
	"ROLE_ID" NUMBER(10,0)
   ) ;

--------------------------------------------------------
--  DDL for Table H_U
--------------------------------------------------------

  CREATE TABLE "H_U" 
   (	"USER_ID" NUMBER(10,0), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"TITLE" VARCHAR2(6 BYTE), 
	"FIRST_NAME" VARCHAR2(30 BYTE), 
	"LAST_NAME" VARCHAR2(30 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"ENABLE" CHAR(1 BYTE), 
	"PASSWORD" VARCHAR2(64 BYTE), 
	"CREATED_DATE" DATE, 
	"CREATED_BY_USER_ID" NUMBER(10,0), 
	"MODIFIED_DATE" DATE, 
	"MODIFIED_BY_USER_ID" NUMBER(10,0), 
	"USER_TYPE_ID" NUMBER(10,0), 
	"PASSWORD_LAST_MODIFIED_DATE" DATE, 
	"SUPERVISOR_ID" NUMBER(10,0), 
	"VERSION" NUMBER(10,0), 
	"DEPARTMENT" VARCHAR2(200 BYTE)
   )  ;

--------------------------------------------------------
--  DDL for Table H_R_P
--------------------------------------------------------

  CREATE TABLE "H_R_P" 
   (	"ROLE_ID" NUMBER(10,0), 
	"PRIVILEGE_ID" NUMBER(10,0)
   ) ;

--------------------------------------------------------
--  DDL for Table H_R
--------------------------------------------------------

  CREATE TABLE "H_R" 
   (	"ROLE_ID" NUMBER(10,0), 
	"ROLE_NAME" VARCHAR2(200 BYTE), 
	"CREATED_DATE" DATE, 
	"CREATED_BY_USER_ID" NUMBER(10,0), 
	"MODIFIED_DATE" DATE, 
	"MODIFIED_BY_USER_ID" NUMBER(10,0), 
	"VERSION" NUMBER(10,0), 
	"ENABLE" VARCHAR2(4 BYTE)
   ) ;
   
--------------------------------------------------------
--  Constraints for Table H_P
--------------------------------------------------------

  ALTER TABLE "H_P" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "H_P" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "H_P" MODIFY ("CODE" NOT NULL ENABLE);
  ALTER TABLE "H_P" MODIFY ("PRIVILEGE_NAME" NOT NULL ENABLE);
  ALTER TABLE "H_P" MODIFY ("PRIVILEGE_ID" NOT NULL ENABLE);

------------------------------------------------------
--  Constraints for Table H_U_R
--------------------------------------------------------

  ALTER TABLE "H_U_R" MODIFY ("ROLE_ID" NOT NULL ENABLE);
  ALTER TABLE "H_U_R" MODIFY ("USER_ID" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table H_U
--------------------------------------------------------

  ALTER TABLE "H_U" MODIFY ("VERSION" NOT NULL ENABLE);
  ALTER TABLE "H_U" MODIFY ("USER_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "H_U" MODIFY ("CREATED_BY_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "H_U" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "H_U" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "H_U" MODIFY ("ENABLE" NOT NULL ENABLE);
  ALTER TABLE "H_U" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "H_U" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "H_U" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "H_U" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "H_U" MODIFY ("USER_ID" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table H_R_P
--------------------------------------------------------

  ALTER TABLE "H_R_P" MODIFY ("PRIVILEGE_ID" NOT NULL ENABLE);
  ALTER TABLE "H_R_P" MODIFY ("ROLE_ID" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table H_R
--------------------------------------------------------

  ALTER TABLE "H_R" MODIFY ("ENABLE" NOT NULL ENABLE);
  ALTER TABLE "H_R" ADD CONSTRAINT "H_R_PK" PRIMARY KEY ("ROLE_ID");
  ALTER TABLE "H_R" MODIFY ("VERSION" NOT NULL ENABLE);
  ALTER TABLE "H_R" MODIFY ("CREATED_BY_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "H_R" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "H_R" MODIFY ("ROLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "H_R" MODIFY ("ROLE_ID" NOT NULL ENABLE);
