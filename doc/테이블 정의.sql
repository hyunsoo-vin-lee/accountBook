-- table space 생성
create tablespace ACCOUNT_BOOK
datafile 'C:\project\accountBook\db\ts_001.dbf'
size 100m reuse autoextend on next 1280k maxsize unlimited
extent management local;

-- 계정 앞에 c## 붙이기 싫은 경우
ALTER SESSION SET "_ORACLE_SCRIPT"=true; 

-- user 생성
create user acb_mgr identified by "acb_mgr" default
tablespace ACCOUNT_BOOK profile default quota unlimited on ACCOUNT_BOOK;
grant connect, resource, dba to acb_mgr;

-- 예산 table 생성
create table BUDGET
(
    CATEGORY VARCHAR2(30) NOT NULL,
    PRICE NUMBER,
    TIME VARCHAR2(6),
    CREATED_BY VARCHAR2(100) NOT NULL,
    UPDATED_BY VARCHAR2(100),
    CHANGE_REASON VARCHAR2(500),
    CREATE_DT DATE DEFAULT SYSDATE NOT NULL,
    UPDATE_DT DATE,
    CONSTRAINT PK_BUDGET PRIMARY KEY (CATEGORY, TIME)
);

comment on column BUDGET.CATEGORY is '항목';
comment on column BUDGET.PRICE is '금액';
comment on column BUDGET.TIME is '적용 시기';
comment on column BUDGET.CREATED_BY is '작성자';
comment on column BUDGET.UPDATED_BY is '변경자';
comment on column BUDGET.CHANGE_REASON is '변경 사유';
comment on column BUDGET.CREATE_DT is '작성일자';
comment on column BUDGET.UPDATE_DT is '변경일자';

