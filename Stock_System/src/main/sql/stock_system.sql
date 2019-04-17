/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/4/13 11:07:25                           */
/*==============================================================*/


drop table if exists holding;

drop table if exists trade;

drop table if exists tradetype;

drop table if exists users;

/*==============================================================*/
/* Table: holding                                               */
/*==============================================================*/
create table holding
(
   holdid               varchar(100) not null,
   usersid              varchar(100) not null,
   number               numeric(8,0) not null,
   avgprice             numeric(8,0) not null,
   stockid              numeric(8,0) not null,
   money                numeric(8,0) not null,
   primary key (holdid)
);

/*==============================================================*/
/* Table: trade                                                 */
/*==============================================================*/
create table trade
(
   tradeid              int not null auto_increment,
   tradeprice           numeric(8,0) not null,
   tradenumber          numeric(8,0) not null,
   tradedate            date not null,
   tradetypeid          numeric(8,0) not null,
   usersid              varchar(100),
   holdid               varchar(100),
   primary key (tradeid)
);

/*==============================================================*/
/* Table: tradetype                                             */
/*==============================================================*/
create table tradetype
(
   tradetypeid          numeric(8,0) not null auto_increment,
   type                 int,
   primary key (tradetypeid)
);

/*==============================================================*/
/* Table: users                                                 */
/*==============================================================*/
create table users
(
   usersid              varchar(100) not null,
   name                 varchar(100) not null,
   password             varchar(100) not null,
   email                varchar(100) not null,
   phone                numeric(11,0) not null,
   primary key (usersid)
);

alter table holding add constraint FK_Reference_1 foreign key (usersid)
      references users (usersid) on delete restrict on update restrict;

alter table trade add constraint FK_Reference_2 foreign key (tradetypeid)
      references tradetype (tradetypeid) on delete restrict on update restrict;

alter table trade add constraint FK_Reference_3 foreign key (usersid)
      references users (usersid) on delete restrict on update restrict;

alter table trade add constraint FK_Reference_4 foreign key (holdid)
      references holding (holdid) on delete restrict on update restrict;

