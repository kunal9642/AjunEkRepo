--------------------------------------------------------
--  File created - Saturday-August-15-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FINISHEDGOODS
--------------------------------------------------------

  CREATE TABLE "FINISHEDGOODS" 
   (	"FINISHEDGOODSCODE" NUMBER, 
	"FINISHEDGOODSNAMEUNI" VARCHAR2(100), 
	"FINISHEDGOODSNAMEENG" VARCHAR2(100), 
	"GOODSCATEGORYCODE" NUMBER, 
	"SUBCATEGORYCODE" NUMBER, 
	"CONVERSIONFACTOR" NUMBER, 
	"UNIT" VARCHAR2(50), 
	"HSNCODE" NUMBER, 
	"SHORTNAME" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table FINISHEDGOODSRATEMASTER
--------------------------------------------------------

  CREATE TABLE "FINISHEDGOODSRATEMASTER" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"FINISHEDGOODSCODE" NUMBER, 
	"FROMDATE" DATE, 
	"TODATE" DATE, 
	"SALERATE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table GODOWN
--------------------------------------------------------

  CREATE TABLE "GODOWN" 
   (	"GODOWNNUMBER" NUMBER, 
	"GODOWNNAMEENG" VARCHAR2(50), 
	"GODOWNNAMEUNI" VARCHAR2(50), 
	"GODOWNCATEGORYCODE" NUMBER, 
	"GODOWNCAPACITY" NUMBER, 
	"GOODSCATEGORYCODE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table GODOWNTRANSACTION
--------------------------------------------------------

  CREATE TABLE "GODOWNTRANSACTION" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"GOODSCATEGORYCODE" NUMBER, 
	"TRANSACTIONTYPECODE" NUMBER, 
	"PRODNUMBERSERIESID" NUMBER, 
	"PRODNUMBERBASEVALUE" VARCHAR2(15), 
	"PRODNUMBERPRESUF" VARCHAR2(15), 
	"PRODNUMBER" NUMBER, 
	"TRANSACTIONDATE" DATE, 
	"GODOWNNUMBER" NUMBER, 
	"LOTNUMBER" NUMBER, 
	"FINISHEDGOODSCODE" NUMBER, 
	"PRODUCTIONYEARCODE" NUMBER, 
	"QUANTITY" NUMBER, 
	"REMARK" VARCHAR2(100), 
	"YEARPERIODCODE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table GODOWNTRANSACTIONTYPE
--------------------------------------------------------

  CREATE TABLE "GODOWNTRANSACTIONTYPE" 
   (	"TRANSACTIONTYPECODE" NUMBER, 
	"TRANSACTIONTYPENAME" VARCHAR2(50), 
	"DEBITCREDIT" VARCHAR2(1), 
	"NUMBERSERIESID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table GOODSCATEGORY
--------------------------------------------------------

  CREATE TABLE "GOODSCATEGORY" 
   (	"GOODSCATEGORYCODE" NUMBER, 
	"GOODSCATEGORYNAMEUNI" VARCHAR2(100), 
	"GOODSCATEGORYNAMEENG" VARCHAR2(100), 
	"TENDERCATEGORYCODE" NUMBER, 
	"HSNCODE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table GOODSPURCHASER
--------------------------------------------------------

  CREATE TABLE "GOODSPURCHASER" 
   (	"PURCHASERCODE" NUMBER, 
	"PURCHASERNAMEUNI" VARCHAR2(300), 
	"PURCHASERNAMEENG" VARCHAR2(300), 
	"GOODSCATEGORYCODE" NUMBER, 
	"PANNUMBER" VARCHAR2(15), 
	"GSTINNUMBER" VARCHAR2(20), 
	"CONTACTNUMBER" VARCHAR2(50), 
	"CONTACTPERSON" VARCHAR2(200), 
	"ADDRESS" VARCHAR2(500), 
	"EMAILID" VARCHAR2(50), 
	"STATECODE" NUMBER, 
	"PURCHASERCATEGORYCODE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table GOODSSALEPERMISSION
--------------------------------------------------------

  CREATE TABLE "GOODSSALEPERMISSION" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"PERMISSIONNUMBER" VARCHAR2(200), 
	"PERMISSIONDATE" DATE, 
	"PERMISSIONQUNTITY" NUMBER, 
	"LIFTINGFROMDATE" DATE, 
	"LIFTINGTODATE" DATE, 
	"EXTENDEDTRANSACTIONNUMBER" NUMBER, 
	"REMARK" VARCHAR2(100), 
	"GOODSCATEGORYCODE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table GOODSSALETAXES
--------------------------------------------------------

  CREATE TABLE "GOODSSALETAXES" 
   (	"TAXCODE" NUMBER, 
	"TAXNAME" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table GOODSSUBCATEGORY
--------------------------------------------------------

  CREATE TABLE "GOODSSUBCATEGORY" 
   (	"SUBCATEGORYCODE" NUMBER, 
	"SUBCATEGORYNAMEUNI" VARCHAR2(100), 
	"SUBCATEGORYNAMEENG" VARCHAR2(100), 
	"CATEGORYCODE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table GOODSTAXRATE
--------------------------------------------------------

  CREATE TABLE "GOODSTAXRATE" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"FINISHEDGOODSCODE" NUMBER, 
	"TAXCODE" NUMBER, 
	"FROMDATE" DATE, 
	"TODATE" DATE, 
	"TAXPERCENT" NUMBER, 
	"SALECATEGORYCODE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table OPENSALERATE
--------------------------------------------------------

  CREATE TABLE "OPENSALERATE" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"FINISHEDGOODSCODE" NUMBER, 
	"FROMDATE" DATE, 
	"TODATE" DATE, 
	"SALERATE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PERIODRESETCATEGORY
--------------------------------------------------------

  CREATE TABLE "PERIODRESETCATEGORY" 
   (	"PERIODRESETCATEGORYCODE" NUMBER, 
	"PERIODRESETCATEGORYNAME" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table PURCHASERCATEGORY
--------------------------------------------------------

  CREATE TABLE "PURCHASERCATEGORY" 
   (	"PURCHASERCATEGORYCODE" NUMBER, 
	"PURCHASERCATEGORYNAMEUNI" VARCHAR2(200), 
	"PURCHASERCATEGORYNAMEENG" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table SALEACCOUNTBRIDGE
--------------------------------------------------------

  CREATE TABLE "SALEACCOUNTBRIDGE" 
   (	"GOODSCATEGORYCODE" NUMBER, 
	"SALETRANSACTIONNUMBER" NUMBER, 
	"ACCOUNTTRANSACTIONNUMBER" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SALECATEGORY
--------------------------------------------------------

  CREATE TABLE "SALECATEGORY" 
   (	"SALECATEGORYCODE" NUMBER, 
	"SALECATEGORYNAMEUNI" VARCHAR2(50), 
	"SALECATEGORYNAMEENG" VARCHAR2(50), 
	"SALECATEGORYSHORTNAME" NVARCHAR2(1), 
	"GOODSCATEGORYCODE" NUMBER, 
	"TENDERSALENUMBERSERIESID" NUMBER, 
	"QUOTATIONSALENUMBERSERIESID" NUMBER, 
	"SALEORDERSALENUMBERSERIESID" NUMBER, 
	"SALEINVOICENUMBERSERIESID" NUMBER, 
	"SALEMEMONUMBERSERIESID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SALECONTROLTABLE
--------------------------------------------------------

  CREATE TABLE "SALECONTROLTABLE" 
   (	"GOODSCATEGORYCODE" NUMBER, 
	"DEBTORSACCOUNTCODE" NUMBER, 
	"POSTINGCATEGORY" NUMBER, 
	"SALEACCOUNTCODE" NUMBER, 
	"CGSTACCOUNTCODE" NUMBER, 
	"SGSTACCOUNTCODE" NUMBER, 
	"IGSTACCOUNTCODE" NUMBER, 
	"UGSTACCOUNTCODE" NUMBER, 
	"VATACCOUNTCODE" NUMBER, 
	"GSTEXPENSES" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SALEINVOICECANESEEDDETAIL
--------------------------------------------------------

  CREATE TABLE "SALEINVOICECANESEEDDETAIL" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"SERIALNUMBER" NUMBER, 
	"FARMERCODE" NUMBER, 
	"QUANTITY" NUMBER, 
	"SALEINVOICETRANNUMBER" NUMBER, 
	"SALERATE" NUMBER, 
	"AMOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SALEINVOICEDETAIL
--------------------------------------------------------

  CREATE TABLE "SALEINVOICEDETAIL" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"SERIALNUMBER" NUMBER, 
	"FINISHEDGOODSCODE" NUMBER, 
	"PRODUCTIONYEARCODE" NUMBER, 
	"SALEQUANTITY" NUMBER, 
	"SALERATE" NUMBER, 
	"AMOUNT" NUMBER, 
	"CGSTRATE" NUMBER, 
	"SGSTRATE" NUMBER, 
	"IGSTRATE" NUMBER, 
	"UGSTRATE" NUMBER, 
	"VATRATE" NUMBER, 
	"CGSTAMOUNT" NUMBER, 
	"SGSTAMOUNT" NUMBER, 
	"IGSTAMOUNT" NUMBER, 
	"UGSTAMOUNT" NUMBER, 
	"VATAMOUNT" NUMBER, 
	"TOTALTAXAMOUNT" NUMBER, 
	"GROSSAMOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SALEINVOICEHEADER
--------------------------------------------------------

  CREATE TABLE "SALEINVOICEHEADER" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"GOODSCATEGORYCODE" NUMBER, 
	"SALECATEGORYCODE" NUMBER, 
	"SALEINVOICENUMBERSERIESID" NUMBER, 
	"SALEINVOICENUMBERBASEVALUE" VARCHAR2(15), 
	"INVOICENUMBER" NUMBER, 
	"INVOICENUMBERPRESUF" VARCHAR2(30), 
	"INVOICEDATE" DATE, 
	"PURCHASERCODE" NUMBER, 
	"TAXABLEAMOUNT" NUMBER DEFAULT 0, 
	"CGSTAMOUNT" NUMBER DEFAULT 0, 
	"SGSTAMOUNT" NUMBER DEFAULT 0, 
	"IGSTAMOUNT" NUMBER DEFAULT 0, 
	"UGSTAMOUNT" NUMBER DEFAULT 0, 
	"VATAMOUNT" NUMBER DEFAULT 0, 
	"TOTALTAXAMOUNT" NUMBER DEFAULT 0, 
	"GROSSAMOUNT" NUMBER DEFAULT 0, 
	"TCSAMOUNT" NUMBER, 
	"CRUSHINGSEASONYEAR" NUMBER, 
	"PLOTNUMBER" NUMBER, 
	"SUPPLIERCODE" NUMBER, 
	"YEARPERIODCODE" NUMBER, 
	"PURCHASERATE" NUMBER, 
	"TOTALQUANTITY" NUMBER, 
	"SALEAMOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SALENUMBERSERIES
--------------------------------------------------------

  CREATE TABLE "SALENUMBERSERIES" 
   (	"SALENUMBERSERIESID" NUMBER(19,0), 
	"SALENUMBERSERIESNAMEENG" VARCHAR2(1000), 
	"SALENUMBERSERIESNAMEUNI" VARCHAR2(1000), 
	"SALENUMBERSTARTINGFROM" NUMBER(19,0), 
	"PERIODRESETCATEGORYCODE" NUMBER(19,0), 
	"SALENUMBERPREFIX" VARCHAR2(10), 
	"GOODSCATEGORYCODE" NUMBER, 
	"TRANSACTIONCATEGORYCODE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SALEORDERDETAIL
--------------------------------------------------------

  CREATE TABLE "SALEORDERDETAIL" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"SERIALNUMBER" NUMBER, 
	"FINISHEDGOODSCODE" NUMBER, 
	"PRODUCTIONYEARCODE" NUMBER, 
	"ORDERQUANTITY" NUMBER, 
	"ORDERRATE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SALEORDERHEADER
--------------------------------------------------------

  CREATE TABLE "SALEORDERHEADER" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"SALEORDERNUMBER" NUMBER, 
	"SALEORDERNUMBERPRESUF" VARCHAR2(20), 
	"SALEORDERDATE" DATE, 
	"PURCHASERCODE" NUMBER, 
	"GOODSCATEGORYCODE" NUMBER, 
	"VALIDDATEOFLIFTING" DATE, 
	"YEARPERIODCODE" NUMBER, 
	"TENDERTRANSACTIONNUMBER" NUMBER, 
	"QUOTATIONTRANSACTIONNUMBER" NUMBER, 
	"SALECATEGORYCODE" NUMBER, 
	"SALEORDERNUMBERSERIESID" NUMBER, 
	"SALEORDERNUMBERBASEVALUE" VARCHAR2(15), 
	"REMARK" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table SALEQUOTATIONDETAIL
--------------------------------------------------------

  CREATE TABLE "SALEQUOTATIONDETAIL" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"SERIALNUMBER" NUMBER, 
	"FINISHEDGOODSCODE" NUMBER, 
	"PRODUCTIONYEARCODE" NUMBER, 
	"QUOTATIONQUANTITY" NUMBER, 
	"QUOTATIONRATE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SALEQUOTATIONHEADER
--------------------------------------------------------

  CREATE TABLE "SALEQUOTATIONHEADER" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"QUOTATIONNUMBER" NUMBER, 
	"QUOTATIONNUMBERPRESUF" VARCHAR2(20), 
	"QUOTATIONDATE" DATE, 
	"VALIDDATEOFLIFTING" DATE, 
	"PURCHASERCODE" NUMBER, 
	"PURCHASERQUOTATIONNUMBER" NUMBER, 
	"YEARPERIODCODE" NUMBER, 
	"GOODSCATEGORYCODE" NUMBER, 
	"SALECATEGORYCODE" NUMBER, 
	"TENDERTRANSACTIONNUMBER" NUMBER, 
	"QUOTATIONNUMBERSERIESID" NUMBER, 
	"QUOTATIONNUMBERBASEVALUE" VARCHAR2(15), 
	"REMARK" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table SALETENDERCATEGORY
--------------------------------------------------------

  CREATE TABLE "SALETENDERCATEGORY" 
   (	"TENDERCATEGORYCODE" NUMBER, 
	"TENDERCATEGORYNAMEENG" VARCHAR2(50), 
	"TENDERCATEGORYNAMEUNI" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table SALETENDERDETAIL
--------------------------------------------------------

  CREATE TABLE "SALETENDERDETAIL" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"SERIALNUMBER" NUMBER, 
	"FINISHEDGOODSCODE" NUMBER, 
	"PRODUCTIONYEARCODE" NUMBER, 
	"TENDERQUANTITY" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SALETENDERHEADER
--------------------------------------------------------

  CREATE TABLE "SALETENDERHEADER" 
   (	"TRANSACTIONNUMBER" NUMBER, 
	"YEARPERIODCODE" NUMBER, 
	"TENDERNUMBER" NUMBER, 
	"TENDERNUMBERPRESUF" VARCHAR2(20), 
	"TENDERDATE" DATE, 
	"PERMISSIONTRANSACTIONNUMBER" NUMBER, 
	"GOODSCATEGORYCODE" NUMBER, 
	"SALECATEGORYCODE" NUMBER, 
	"VALIDDATEOFLIFTING" DATE, 
	"TENDERCLOSEDATE" DATE, 
	"TENDERNUMBERSERIESID" NUMBER, 
	"TENDERNUMBERBASEVALUE" VARCHAR2(15), 
	"REMARK" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for View BROKERWISELIFTEDUNLIFTED
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "BROKERWISELIFTEDUNLIFTED" ("PURCHASERCODE", "TENDERTRANSACTIONNUMBER", "TENDERDATE", "ORDERTRANSACTIONNUMBER", "TENDERNUMBERPRESUF", "SALEORDERNUMBERPRESUF", "VALIDDATEOFLIFTING", "FINISHEDGOODSCODE", "FINISHEDGOODSNAMEUNI", "FINISHEDGOODSNAMEENG", "PRODUCTIONYEARCODE", "ORDERRATE", "ORDERQUANTITY", "SALEQUANTITY", "BALANCEQUANTITY") AS 
  select a.purchasercode
,a.tendertransactionnumber
,a.tenderdate
,a.ordertransactionnumber
,a.tendernumberpresuf
,a.saleordernumberpresuf
,a.validdateoflifting
,a.finishedgoodscode
,a.finishedgoodsnameuni
,a.finishedgoodsnameeng
,a.productionyearcode
,a.orderrate
,sum(a.orderquantity)orderquantity
,sum(a.salequantity) salequantity
,nvl(sum(a.orderquantity),0)- nvl(sum(a.salequantity),0)  balancequantity
  from (select h.purchasercode purchasercode
  ,t.transactionnumber tendertransactionnumber
  ,t.tenderdate
  ,h.transactionnumber ordertransactionnumber
  , t.tendernumberpresuf,h.saleordernumberpresuf,
  h.validdateoflifting
  ,d.finishedgoodscode
  ,f.finishedgoodsnameuni
  ,f.finishedgoodsnameeng,
  d.productionyearcode,d.orderrate,d.orderquantity,0 salequantity
 from saleorderdetail d,saleorderheader h,saletenderheader t,
 finishedgoods f
where d.transactionnumber=h.transactionnumber
and d.finishedgoodscode=f.finishedgoodscode
and h.tendertransactionnumber= t.transactionnumber
union all
select h.purchasercode
,d.tendertransactionnumber
,t.tenderdate
,d.ordertransactionnumber
, t.tendernumberpresuf,o.saleordernumberpresuf,
o.validdateoflifting
,d.finishedgoodscode
,f.finishedgoodsnameuni,f.finishedgoodsnameeng,
  d.productionyearcode,d.salerate orderrate,0 orderquantity, d.salequantity
  from saleinvoicedetail d,saleinvoiceheader h,saletenderheader t,finishedgoods f,saleorderheader o
where d.transactionnumber=h.transactionnumber
and  d.tendertransactionnumber = t.transactionnumber
and d.finishedgoodscode= f.finishedgoodscode
and d.ordertransactionnumber = o.transactionnumber) a
group by  a.purchasercode
,a.tendertransactionnumber
,a.tenderdate
,a.ordertransactionnumber
, a.tendernumberpresuf,a.saleordernumberpresuf,a.validdateoflifting
,a.finishedgoodscode
,a.finishedgoodsnameuni,a.finishedgoodsnameeng,
  a.productionyearcode,a.orderrate
;
--------------------------------------------------------
--  DDL for View INVOICEBALANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVOICEBALANCE" ("SALEINVOICETRANSACTIONNUMBER", "INVOICENUMBERPRESUF", "FINISHEDGOODSCODE", "FINISHEDGOODSNAMEUNI", "FINISHEDGOODSNAMEENG", "PRODUCTIONYEARCODE", "SALERATE", "BALANCEQUANTITY") AS 
  select a.transactionnumber as saleinvoicetransactionnumber
,m.invoicenumberpresuf
,a.finishedgoodscode
,a.finishedgoodsnameuni
,a.finishedgoodsnameeng
,a.productionyearcode
,a.salerate
,sum(a.salequantity) balancequantity
from
(select h.transactionnumber
,d.finishedgoodscode
,g.finishedgoodsnameuni
,g.finishedgoodsnameeng
,d.productionyearcode
,d.salerate
,sum(d.salequantity) salequantity
from saleinvoicedetail d,saleinvoiceheader h,finishedgoods g
where d.transactionnumber =h.transactionnumber
and d.finishedgoodscode =g.finishedgoodscode
group by h.transactionnumber
,d.finishedgoodscode
,g.finishedgoodsnameuni
,g.finishedgoodsnameeng
,d.productionyearcode
,d.salerate
union all
select h.transactionnumber transactionnumber
, d.finishedgoodscode
,g.finishedgoodsnameuni
,g.finishedgoodsnameeng
,d.productionyearcode
,d.salerate
,sum(d.salequantity * -1) salequantity
from saleinvoicedetail d,saleinvoiceheader h,finishedgoods g
where d.transactionnumber =h.transactionnumber
and d.finishedgoodscode =g.finishedgoodscode
group by h.transactionnumber
, d.finishedgoodscode
,g.finishedgoodsnameuni
,g.finishedgoodsnameeng
,d.productionyearcode
,d.salerate) a,saleinvoiceheader m
where a.transactionnumber=m.transactionnumber
group by a.transactionnumber
,m.invoicenumberpresuf
,a.finishedgoodscode
,a.finishedgoodsnameuni
,a.finishedgoodsnameeng
,a.productionyearcode
,a.salerate
;
--------------------------------------------------------
--  DDL for View PURCHASERWISELIFTEDUNLIFTED
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "PURCHASERWISELIFTEDUNLIFTED" ("PURCHASERCODE", "TENDERTRANSACTIONNUMBER", "TENDERDATE", "ORDERTRANSACTIONNUMBER", "TENDERNUMBERPRESUF", "SALEORDERNUMBERPRESUF", "VALIDDATEOFLIFTING", "GOODSCATEGORYCODE", "FINISHEDGOODSCODE", "FINISHEDGOODSNAMEUNI", "FINISHEDGOODSNAMEENG", "PRODUCTIONYEARCODE", "ORDERRATE", "ORDERQUANTITY", "SALEQUANTITY", "BALANCEQUANTITY") AS 
  select a.purchasercode
,a.tendertransactionnumber
,a.tenderdate
,a.ordertransactionnumber
,a.tendernumberpresuf
,a.saleordernumberpresuf
,a.validdateoflifting
,a.goodscategorycode
,a.finishedgoodscode
,a.finishedgoodsnameuni
,a.finishedgoodsnameeng
,a.productionyearcode
,a.orderrate
,sum(a.orderquantity)orderquantity
,sum(a.salequantity) salequantity
,nvl(sum(a.orderquantity),0)- nvl(sum(a.salequantity),0)  balancequantity
  from (select h.purchasercode purchasercode
  ,t.transactionnumber tendertransactionnumber
  ,t.tenderdate
  ,h.transactionnumber ordertransactionnumber
  , t.tendernumberpresuf,h.saleordernumberpresuf,
  h.validdateoflifting
  ,f.goodscategorycode
  ,d.finishedgoodscode
  ,f.finishedgoodsnameuni
  ,f.finishedgoodsnameeng,
  d.productionyearcode,d.orderrate,d.orderquantity,0 salequantity
 from saleorderdetail d,saleorderheader h,saletenderheader t,
 finishedgoods f
where d.transactionnumber=h.transactionnumber
and d.finishedgoodscode=f.finishedgoodscode
and h.tendertransactionnumber= t.transactionnumber
union all
select h.purchasercode
,d.tendertransactionnumber
,t.tenderdate
,d.ordertransactionnumber
, t.tendernumberpresuf,o.saleordernumberpresuf,
o.validdateoflifting
,f.goodscategorycode
,d.finishedgoodscode
,f.finishedgoodsnameuni,f.finishedgoodsnameeng,
  d.productionyearcode,d.salerate orderrate,0 orderquantity, d.salequantity
  from saleinvoicedetail d,saleinvoiceheader h,saletenderheader t,finishedgoods f,saleorderheader o
where d.transactionnumber=h.transactionnumber
and  d.tendertransactionnumber = t.transactionnumber
and d.finishedgoodscode= f.finishedgoodscode
and d.ordertransactionnumber = o.transactionnumber) a
group by  a.purchasercode
,a.tendertransactionnumber
,a.tenderdate
,a.ordertransactionnumber
, a.tendernumberpresuf,a.saleordernumberpresuf,a.validdateoflifting
,a.goodscategorycode
,a.finishedgoodscode
,a.finishedgoodsnameuni,a.finishedgoodsnameeng,
  a.productionyearcode,a.orderrate
;
--------------------------------------------------------
--  DDL for View TENDERORDEREDUNORDERED
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TENDERORDEREDUNORDERED" ("TENDERTRANSACTIONNUMBER", "TENDERNUMBERPRESUF", "VALIDDATEOFLIFTING", "FINISHEDGOODSCODE", "FINISHEDGOODSNAMEUNI", "FINISHEDGOODSNAMEENG", "PRODUCTIONYEARCODE", "TENDERQUANTITY", "ORDERQUANTITY", "BALANCEQUANTITY") AS 
  select
a.tendertransactionnumber
,a.tendernumberpresuf
,a.validdateoflifting
,a.finishedgoodscode
,a.finishedgoodsnameuni
,a.finishedgoodsnameeng
,a.productionyearcode
,sum(a.tenderquantity) tenderquantity
,sum(a.orderquantity) orderquantity
,nvl(sum(a.tenderquantity),0)- nvl(sum(a.orderquantity),0)  balancequantity
  from (select h.transactionnumber tendertransactionnumber
  ,h.tendernumberpresuf
  ,h.validdateoflifting
  ,d.finishedgoodscode
  ,f.finishedgoodsnameuni
  ,f.finishedgoodsnameeng,
  d.productionyearcode,d.tenderquantity,0 orderquantity
 from saletenderdetail d,saletenderheader h,
 finishedgoods f
where d.transactionnumber=h.transactionnumber
and d.finishedgoodscode=f.finishedgoodscode
union all
select h.tendertransactionnumber
, t.tendernumberpresuf,
h.validdateoflifting
,d.finishedgoodscode
,f.finishedgoodsnameuni,f.finishedgoodsnameeng,
  d.productionyearcode,0 tenderquantity, d.orderquantity
  from saleorderdetail d,saleorderheader h,saletenderheader t,finishedgoods f
where d.transactionnumber=h.transactionnumber
and  h.tendertransactionnumber = t.transactionnumber
and d.finishedgoodscode= f.finishedgoodscode
) a
group by
a.tendertransactionnumber
, a.tendernumberpresuf,a.validdateoflifting
,a.finishedgoodscode
,a.finishedgoodsnameuni,a.finishedgoodsnameeng,
  a.productionyearcode
;
--------------------------------------------------------
--  DDL for Index PKTRNNO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKTRNNO" ON "SALEORDERHEADER" ("TRANSACTIONNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKGDRATEMASTER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKGDRATEMASTER" ON "FINISHEDGOODSRATEMASTER" ("TRANSACTIONNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKGODCODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKGODCODE" ON "GODOWN" ("GODOWNNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PCATCD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PCATCD" ON "PURCHASERCATEGORY" ("PURCHASERCATEGORYCODE") 
  ;
--------------------------------------------------------
--  DDL for Index GOODSPURCHASERPK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GOODSPURCHASERPK" ON "GOODSPURCHASER" ("PURCHASERCODE", "GOODSCATEGORYCODE") 
  ;
--------------------------------------------------------
--  DDL for Index PKSCC
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKSCC" ON "GOODSCATEGORY" ("GOODSCATEGORYCODE") 
  ;
--------------------------------------------------------
--  DDL for Index PGSDETAILPK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PGSDETAILPK" ON "SALEQUOTATIONDETAIL" ("TRANSACTIONNUMBER", "SERIALNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKSEDT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKSEDT" ON "SALETENDERDETAIL" ("TRANSACTIONNUMBER", "SERIALNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKTRNNO1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKTRNNO1" ON "GOODSSALEPERMISSION" ("TRANSACTIONNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKGDCT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKGDCT" ON "SALECONTROLTABLE" ("GOODSCATEGORYCODE", "POSTINGCATEGORY") 
  ;
--------------------------------------------------------
--  DDL for Index PKTRNSRNO1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKTRNSRNO1" ON "SALEORDERDETAIL" ("TRANSACTIONNUMBER", "SERIALNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SALEINVOICECANESEEDDETAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SALEINVOICECANESEEDDETAIL_PK" ON "SALEINVOICECANESEEDDETAIL" ("TRANSACTIONNUMBER", "SERIALNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKSALEDEAT12
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKSALEDEAT12" ON "SALEINVOICEDETAIL" ("TRANSACTIONNUMBER", "SERIALNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index TENDCC22
--------------------------------------------------------

  CREATE UNIQUE INDEX "TENDCC22" ON "SALETENDERCATEGORY" ("TENDERCATEGORYCODE") 
  ;
--------------------------------------------------------
--  DDL for Index PKPERIODRESETCATEGORID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKPERIODRESETCATEGORID" ON "PERIODRESETCATEGORY" ("PERIODRESETCATEGORYCODE") 
  ;
--------------------------------------------------------
--  DDL for Index PKSALE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKSALE" ON "SALEINVOICEHEADER" ("TRANSACTIONNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKTRANENQUIRY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKTRANENQUIRY" ON "SALETENDERHEADER" ("TRANSACTIONNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKSALENUMBERSERIESID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKSALENUMBERSERIESID" ON "SALENUMBERSERIES" ("SALENUMBERSERIESID") 
  ;
--------------------------------------------------------
--  DDL for Index PKSCSC
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKSCSC" ON "GOODSSUBCATEGORY" ("SUBCATEGORYCODE") 
  ;
--------------------------------------------------------
--  DDL for Index PKSALETENDPK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKSALETENDPK" ON "SALEQUOTATIONHEADER" ("TRANSACTIONNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKTRTYPE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKTRTYPE" ON "GODOWNTRANSACTIONTYPE" ("TRANSACTIONTYPECODE") 
  ;
--------------------------------------------------------
--  DDL for Index PKRATETRAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKRATETRAN" ON "OPENSALERATE" ("TRANSACTIONNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKGOODSSALE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKGOODSSALE" ON "FINISHEDGOODS" ("FINISHEDGOODSCODE") 
  ;
--------------------------------------------------------
--  DDL for Index PKTAXM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKTAXM" ON "GOODSSALETAXES" ("TAXCODE") 
  ;
--------------------------------------------------------
--  DDL for Index PKTAXRATETRANSACTIO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKTAXRATETRANSACTIO" ON "GOODSTAXRATE" ("TRANSACTIONNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKSALECATECDS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKSALECATECDS" ON "SALECATEGORY" ("SALECATEGORYCODE") 
  ;
--------------------------------------------------------
--  DDL for Index PKGDCTSLTRACTR
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKGDCTSLTRACTR" ON "SALEACCOUNTBRIDGE" ("GOODSCATEGORYCODE", "SALETRANSACTIONNUMBER", "ACCOUNTTRANSACTIONNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PKPRODUCTION
--------------------------------------------------------

  CREATE UNIQUE INDEX "PKPRODUCTION" ON "GODOWNTRANSACTION" ("TRANSACTIONNUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index UNQ_FINPROD
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNQ_FINPROD" ON "SALETENDERDETAIL" ("TRANSACTIONNUMBER", "FINISHEDGOODSCODE", "PRODUCTIONYEARCODE") 
  ;
--------------------------------------------------------
--  DDL for Procedure SALEINVOICEHEADER_UPDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SALEINVOICEHEADER_UPDATE" (p_transactionnumber in number) is
begin
declare
mamount number;
mcgstamount number;
msgstamount number;
migstamount number;
mugstamount number;
mvatamount number;
mtotaltaxamount number;
mgrossamount number;

cursor detail is
select sum(d.amount),sum(d.cgstamount),sum(d.sgstamount),sum(d.igstamount),
sum(d.ugstamount),sum(d.vatamount),sum(d.totaltaxamount),sum(d.grossamount)
from saleinvoicedetail d
where d.transactionnumber=p_transactionnumber;

begin
open detail;
fetch detail into mamount,mcgstamount,msgstamount,migstamount,mugstamount,
mvatamount,mtotaltaxamount,mgrossamount;
close detail;
update saleinvoiceheader t
set t.taxableamount=mamount,
    t.cgstamount=mcgstamount,
    t.sgstamount=msgstamount,
    t.igstamount=igstamount,
    t.ugstamount=mugstamount,
    t.vatamount=mvatamount,
    t.totaltaxamount=mtotaltaxamount,
    t.grossamount=mgrossamount
    where t.transactionnumber=p_transactionnumber;
    commit;
end;
end saleinvoiceheader_update;






/
--------------------------------------------------------
--  DDL for Procedure SALEINVOICEVOUCHERPOSTING
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SALEINVOICEVOUCHERPOSTING" (p_goodscategorycode in number,p_postingcategory in number,p_flag in varchar2 default 'N',p_transactionnumber in number) is
begin
declare

m_debtorsaccountcode number;
m_saleaccountcode number;
m_cgstaccountcode number;
m_sgstaccountcode number;
m_igstaccountcode number;
m_ugstaccountcode number;
m_vataccountcode number;
m_gstexpenses number;

cursor control is
select s.debtorsaccountcode
,s.saleaccountcode
,s.cgstaccountcode
,s.sgstaccountcode
,s.igstaccountcode
,s.ugstaccountcode
,s.vataccountcode
,s.gstexpenses
from salecontroltable s
where s.goodscategorycode=p_goodscategorycode
and s.postingcategory=p_postingcategory;

begin
    open control;
    fetch control into m_debtorsaccountcode
    ,m_saleaccountcode
    ,m_cgstaccountcode
    ,m_sgstaccountcode
    ,m_igstaccountcode
    ,m_ugstaccountcode
    ,m_vataccountcode
    ,m_gstexpenses;
    close control;
    --posting category 1 for basic sale amount posting and flag N for new
    if (p_postingcategory=1 and p_flag='N') then
       insert into saleaccountbridge
       (goodscategorycode,saletransactionnumber)
       values (p_goodscategorycode,p_transactionnumber);
       commit;
    end if;
    commit;
end;
end saleinvoicevoucherposting;






/
--------------------------------------------------------
--  DDL for Procedure SALEMEMOHEADER_UPDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SALEMEMOHEADER_UPDATE" (p_transactionnumber in number) is
begin
declare
mamount number;
mcgstamount number;
msgstamount number;
migstamount number;
mugstamount number;
mvatamount number;
mtotaltaxamount number;
mgrossamount number;

cursor detail is
select sum(d.amount),sum(d.cgstamount),sum(d.sgstamount),sum(d.igstamount),
sum(d.ugstamount),sum(d.vatamount),sum(d.totaltaxamount),sum(d.grossamount)
from salememodetail d
where d.transactionnumber=p_transactionnumber;

begin
open detail;
fetch detail into mamount,mcgstamount,msgstamount,migstamount,mugstamount,
mvatamount,mtotaltaxamount,mgrossamount;
close detail;
update salememoheader t
set t.cgstamount=mcgstamount,
    t.sgstamount=msgstamount,
    t.igstamount=igstamount,
    t.ugstamount=mugstamount,
    t.vatamount=mvatamount,
    t.totaltaxamount=mtotaltaxamount,
    t.grossamount=mgrossamount
    where t.transactionnumber=p_transactionnumber;
    commit;
end;
end salememoheader_update;






/
--------------------------------------------------------
--  DDL for Function SALENUMBERBASEVALUE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SALENUMBERBASEVALUE" (pdate in date,presetcategoryid in number default 4) return varchar2 is
begin
declare
dy number;
mth number;
qtr number;
yr number;
begin
    dy:=to_number(to_char(pdate,'dd'));
    mth:=to_number(to_char(pdate,'mm'));
    yr:=to_number(to_char(pdate,'yyyy'));
    if presetcategoryid =1 then
      return 'D'||trim(to_char(dy,'00'))||trim(to_char(mth,'00'))||yr;
    else if presetcategoryid =2 then
      return 'M'||trim(to_char(mth,'00'))||yr;
    else if presetcategoryid =3 then
      if mth>=4 and mth<=6 then
         qtr:=1;
      else if mth>=7 and mth<=9 then
         qtr:=2;
      else if mth>=10 and mth<=12 then
         qtr:=3;
      else if mth>=1 and mth<=3 then
         qtr:=4;
      end if;
      end if;
      end if;
      end if;
      return 'Q'||'0'||qtr||yr;
    else if presetcategoryid =4 then
      if mth>=4 and mth<=12 then
         return 'Y'||yr||to_char(yr+1);
      else
         return 'Y'||to_char(yr-1)||yr;
      end if;
    end if;
    end if;
    end if;
    end if;
end;
end salenumberbasevalue;






/
--------------------------------------------------------
--  Constraints for Table GODOWN
--------------------------------------------------------

  ALTER TABLE "GODOWN" ADD CONSTRAINT "PKGODCODE" PRIMARY KEY ("GODOWNNUMBER") ENABLE;
 
  ALTER TABLE "GODOWN" MODIFY ("GODOWNNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALETENDERCATEGORY
--------------------------------------------------------

  ALTER TABLE "SALETENDERCATEGORY" ADD CONSTRAINT "TENDCC22" PRIMARY KEY ("TENDERCATEGORYCODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table GODOWNTRANSACTIONTYPE
--------------------------------------------------------

  ALTER TABLE "GODOWNTRANSACTIONTYPE" ADD CONSTRAINT "PKTRTYPE" PRIMARY KEY ("TRANSACTIONTYPECODE") ENABLE;
 
  ALTER TABLE "GODOWNTRANSACTIONTYPE" MODIFY ("TRANSACTIONTYPECODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALEQUOTATIONDETAIL
--------------------------------------------------------

  ALTER TABLE "SALEQUOTATIONDETAIL" ADD CONSTRAINT "PGSDETAILPK" PRIMARY KEY ("TRANSACTIONNUMBER", "SERIALNUMBER") ENABLE;
 
  ALTER TABLE "SALEQUOTATIONDETAIL" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONDETAIL" MODIFY ("SERIALNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONDETAIL" MODIFY ("FINISHEDGOODSCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONDETAIL" MODIFY ("PRODUCTIONYEARCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALEINVOICEDETAIL
--------------------------------------------------------

  ALTER TABLE "SALEINVOICEDETAIL" ADD CONSTRAINT "PKSALEDEAT12" PRIMARY KEY ("TRANSACTIONNUMBER", "SERIALNUMBER") ENABLE;
 
  ALTER TABLE "SALEINVOICEDETAIL" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEINVOICEDETAIL" MODIFY ("SERIALNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERIODRESETCATEGORY
--------------------------------------------------------

  ALTER TABLE "PERIODRESETCATEGORY" ADD CONSTRAINT "PKPERIODRESETCATEGORID" PRIMARY KEY ("PERIODRESETCATEGORYCODE") ENABLE;
 
  ALTER TABLE "PERIODRESETCATEGORY" MODIFY ("PERIODRESETCATEGORYCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GODOWNTRANSACTION
--------------------------------------------------------

  ALTER TABLE "GODOWNTRANSACTION" ADD CONSTRAINT "PKPRODUCTION" PRIMARY KEY ("TRANSACTIONNUMBER") ENABLE;
 
  ALTER TABLE "GODOWNTRANSACTION" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "GODOWNTRANSACTION" MODIFY ("GOODSCATEGORYCODE" NOT NULL ENABLE);
 
  ALTER TABLE "GODOWNTRANSACTION" MODIFY ("TRANSACTIONTYPECODE" NOT NULL ENABLE);
 
  ALTER TABLE "GODOWNTRANSACTION" MODIFY ("TRANSACTIONDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FINISHEDGOODS
--------------------------------------------------------

  ALTER TABLE "FINISHEDGOODS" ADD CONSTRAINT "PKGOODSSALE" PRIMARY KEY ("FINISHEDGOODSCODE") ENABLE;
 
  ALTER TABLE "FINISHEDGOODS" MODIFY ("FINISHEDGOODSCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALECONTROLTABLE
--------------------------------------------------------

  ALTER TABLE "SALECONTROLTABLE" ADD CONSTRAINT "PKGDCT" PRIMARY KEY ("GOODSCATEGORYCODE", "POSTINGCATEGORY") ENABLE;
 
  ALTER TABLE "SALECONTROLTABLE" MODIFY ("GOODSCATEGORYCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALECONTROLTABLE" MODIFY ("DEBTORSACCOUNTCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALECONTROLTABLE" MODIFY ("POSTINGCATEGORY" NOT NULL ENABLE);
 
  ALTER TABLE "SALECONTROLTABLE" MODIFY ("SALEACCOUNTCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PURCHASERCATEGORY
--------------------------------------------------------

  ALTER TABLE "PURCHASERCATEGORY" ADD CONSTRAINT "PCATCD" PRIMARY KEY ("PURCHASERCATEGORYCODE") ENABLE;
 
  ALTER TABLE "PURCHASERCATEGORY" MODIFY ("PURCHASERCATEGORYCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALEORDERDETAIL
--------------------------------------------------------

  ALTER TABLE "SALEORDERDETAIL" ADD CONSTRAINT "PKTRNSRNO1" PRIMARY KEY ("TRANSACTIONNUMBER", "SERIALNUMBER") ENABLE;
 
  ALTER TABLE "SALEORDERDETAIL" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEORDERDETAIL" MODIFY ("SERIALNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GOODSTAXRATE
--------------------------------------------------------

  ALTER TABLE "GOODSTAXRATE" ADD CONSTRAINT "PKTAXRATETRANSACTIO" PRIMARY KEY ("TRANSACTIONNUMBER") ENABLE;
 
  ALTER TABLE "GOODSTAXRATE" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALENUMBERSERIES
--------------------------------------------------------

  ALTER TABLE "SALENUMBERSERIES" ADD CONSTRAINT "PKSALENUMBERSERIESID" PRIMARY KEY ("SALENUMBERSERIESID") ENABLE;
 
  ALTER TABLE "SALENUMBERSERIES" MODIFY ("SALENUMBERSERIESID" NOT NULL ENABLE);
 
  ALTER TABLE "SALENUMBERSERIES" MODIFY ("SALENUMBERSERIESNAMEENG" NOT NULL ENABLE);
 
  ALTER TABLE "SALENUMBERSERIES" MODIFY ("SALENUMBERSERIESNAMEUNI" NOT NULL ENABLE);
 
  ALTER TABLE "SALENUMBERSERIES" MODIFY ("SALENUMBERSTARTINGFROM" NOT NULL ENABLE);
 
  ALTER TABLE "SALENUMBERSERIES" MODIFY ("PERIODRESETCATEGORYCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALENUMBERSERIES" MODIFY ("SALENUMBERPREFIX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FINISHEDGOODSRATEMASTER
--------------------------------------------------------

  ALTER TABLE "FINISHEDGOODSRATEMASTER" ADD CONSTRAINT "PKGDRATEMASTER" PRIMARY KEY ("TRANSACTIONNUMBER") ENABLE;
--------------------------------------------------------
--  Constraints for Table SALEINVOICEHEADER
--------------------------------------------------------

  ALTER TABLE "SALEINVOICEHEADER" ADD CONSTRAINT "PKSALE" PRIMARY KEY ("TRANSACTIONNUMBER") ENABLE;
 
  ALTER TABLE "SALEINVOICEHEADER" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEINVOICEHEADER" MODIFY ("GOODSCATEGORYCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEINVOICEHEADER" MODIFY ("SALECATEGORYCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEINVOICEHEADER" MODIFY ("SALEINVOICENUMBERSERIESID" NOT NULL ENABLE);
 
  ALTER TABLE "SALEINVOICEHEADER" MODIFY ("SALEINVOICENUMBERBASEVALUE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEINVOICEHEADER" MODIFY ("INVOICENUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEINVOICEHEADER" MODIFY ("INVOICENUMBERPRESUF" NOT NULL ENABLE);
 
  ALTER TABLE "SALEINVOICEHEADER" MODIFY ("INVOICEDATE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEINVOICEHEADER" MODIFY ("PURCHASERCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALECATEGORY
--------------------------------------------------------

  ALTER TABLE "SALECATEGORY" ADD CONSTRAINT "PKSALECATECDS" PRIMARY KEY ("SALECATEGORYCODE") ENABLE;
 
  ALTER TABLE "SALECATEGORY" MODIFY ("SALECATEGORYCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GOODSCATEGORY
--------------------------------------------------------

  ALTER TABLE "GOODSCATEGORY" ADD CONSTRAINT "PKSCC" PRIMARY KEY ("GOODSCATEGORYCODE") ENABLE;
 
  ALTER TABLE "GOODSCATEGORY" MODIFY ("GOODSCATEGORYCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALEORDERHEADER
--------------------------------------------------------

  ALTER TABLE "SALEORDERHEADER" ADD CONSTRAINT "PKTRNNO" PRIMARY KEY ("TRANSACTIONNUMBER") ENABLE;
 
  ALTER TABLE "SALEORDERHEADER" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GOODSSUBCATEGORY
--------------------------------------------------------

  ALTER TABLE "GOODSSUBCATEGORY" ADD CONSTRAINT "PKSCSC" PRIMARY KEY ("SUBCATEGORYCODE") ENABLE;
 
  ALTER TABLE "GOODSSUBCATEGORY" MODIFY ("SUBCATEGORYCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GOODSSALEPERMISSION
--------------------------------------------------------

  ALTER TABLE "GOODSSALEPERMISSION" ADD CONSTRAINT "PKTRNNO1" PRIMARY KEY ("TRANSACTIONNUMBER") ENABLE;
 
  ALTER TABLE "GOODSSALEPERMISSION" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GOODSSALETAXES
--------------------------------------------------------

  ALTER TABLE "GOODSSALETAXES" ADD CONSTRAINT "PKTAXM" PRIMARY KEY ("TAXCODE") ENABLE;
 
  ALTER TABLE "GOODSSALETAXES" MODIFY ("TAXCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALETENDERHEADER
--------------------------------------------------------

  ALTER TABLE "SALETENDERHEADER" ADD CONSTRAINT "PKTRANENQUIRY" PRIMARY KEY ("TRANSACTIONNUMBER") ENABLE;
 
  ALTER TABLE "SALETENDERHEADER" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERHEADER" MODIFY ("YEARPERIODCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERHEADER" MODIFY ("TENDERNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERHEADER" MODIFY ("TENDERNUMBERPRESUF" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERHEADER" MODIFY ("TENDERDATE" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERHEADER" MODIFY ("GOODSCATEGORYCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERHEADER" MODIFY ("SALECATEGORYCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERHEADER" MODIFY ("VALIDDATEOFLIFTING" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERHEADER" MODIFY ("TENDERNUMBERSERIESID" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERHEADER" MODIFY ("TENDERNUMBERBASEVALUE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALEINVOICECANESEEDDETAIL
--------------------------------------------------------

  ALTER TABLE "SALEINVOICECANESEEDDETAIL" ADD CONSTRAINT "SALEINVOICECANESEEDDETAIL_PK" PRIMARY KEY ("TRANSACTIONNUMBER", "SERIALNUMBER") ENABLE;
 
  ALTER TABLE "SALEINVOICECANESEEDDETAIL" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEINVOICECANESEEDDETAIL" MODIFY ("SERIALNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GOODSPURCHASER
--------------------------------------------------------

  ALTER TABLE "GOODSPURCHASER" ADD CONSTRAINT "GOODSPURCHASERPK" PRIMARY KEY ("PURCHASERCODE", "GOODSCATEGORYCODE") ENABLE;
 
  ALTER TABLE "GOODSPURCHASER" MODIFY ("PURCHASERCODE" NOT NULL ENABLE);
 
  ALTER TABLE "GOODSPURCHASER" MODIFY ("GOODSCATEGORYCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OPENSALERATE
--------------------------------------------------------

  ALTER TABLE "OPENSALERATE" ADD CONSTRAINT "PKRATETRAN" PRIMARY KEY ("TRANSACTIONNUMBER") ENABLE;
--------------------------------------------------------
--  Constraints for Table SALEQUOTATIONHEADER
--------------------------------------------------------

  ALTER TABLE "SALEQUOTATIONHEADER" ADD CONSTRAINT "PKSALETENDPK" PRIMARY KEY ("TRANSACTIONNUMBER") ENABLE;
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("QUOTATIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("QUOTATIONNUMBERPRESUF" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("QUOTATIONDATE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("VALIDDATEOFLIFTING" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("PURCHASERCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("YEARPERIODCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("GOODSCATEGORYCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("SALECATEGORYCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("TENDERTRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("QUOTATIONNUMBERSERIESID" NOT NULL ENABLE);
 
  ALTER TABLE "SALEQUOTATIONHEADER" MODIFY ("QUOTATIONNUMBERBASEVALUE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALETENDERDETAIL
--------------------------------------------------------

  ALTER TABLE "SALETENDERDETAIL" ADD CONSTRAINT "PKSEDT" PRIMARY KEY ("TRANSACTIONNUMBER", "SERIALNUMBER") ENABLE;
 
  ALTER TABLE "SALETENDERDETAIL" MODIFY ("TRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERDETAIL" MODIFY ("SERIALNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERDETAIL" MODIFY ("FINISHEDGOODSCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERDETAIL" MODIFY ("PRODUCTIONYEARCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALETENDERDETAIL" ADD CONSTRAINT "UNQ_FINPROD" UNIQUE ("TRANSACTIONNUMBER", "FINISHEDGOODSCODE", "PRODUCTIONYEARCODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table SALEACCOUNTBRIDGE
--------------------------------------------------------

  ALTER TABLE "SALEACCOUNTBRIDGE" ADD CONSTRAINT "PKGDCTSLTRACTR" PRIMARY KEY ("GOODSCATEGORYCODE", "SALETRANSACTIONNUMBER", "ACCOUNTTRANSACTIONNUMBER") ENABLE;
 
  ALTER TABLE "SALEACCOUNTBRIDGE" MODIFY ("GOODSCATEGORYCODE" NOT NULL ENABLE);
 
  ALTER TABLE "SALEACCOUNTBRIDGE" MODIFY ("SALETRANSACTIONNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "SALEACCOUNTBRIDGE" MODIFY ("ACCOUNTTRANSACTIONNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FINISHEDGOODS
--------------------------------------------------------

  ALTER TABLE "FINISHEDGOODS" ADD CONSTRAINT "FKGSUBCAT" FOREIGN KEY ("SUBCATEGORYCODE")
	  REFERENCES "GOODSSUBCATEGORY" ("SUBCATEGORYCODE") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table FINISHEDGOODSRATEMASTER
--------------------------------------------------------

  ALTER TABLE "FINISHEDGOODSRATEMASTER" ADD CONSTRAINT "FKGDRNFG" FOREIGN KEY ("FINISHEDGOODSCODE")
	  REFERENCES "FINISHEDGOODS" ("FINISHEDGOODSCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GODOWNTRANSACTION
--------------------------------------------------------

  ALTER TABLE "GODOWNTRANSACTION" ADD CONSTRAINT "FKFD" FOREIGN KEY ("FINISHEDGOODSCODE")
	  REFERENCES "FINISHEDGOODS" ("FINISHEDGOODSCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GOODSCATEGORY
--------------------------------------------------------

  ALTER TABLE "GOODSCATEGORY" ADD CONSTRAINT "FK4354" FOREIGN KEY ("TENDERCATEGORYCODE")
	  REFERENCES "SALETENDERCATEGORY" ("TENDERCATEGORYCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GOODSPURCHASER
--------------------------------------------------------

  ALTER TABLE "GOODSPURCHASER" ADD CONSTRAINT "FKGOODSPURCHASECD" FOREIGN KEY ("PURCHASERCATEGORYCODE")
	  REFERENCES "PURCHASERCATEGORY" ("PURCHASERCATEGORYCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GOODSSUBCATEGORY
--------------------------------------------------------

  ALTER TABLE "GOODSSUBCATEGORY" ADD CONSTRAINT "FKCATCODE" FOREIGN KEY ("CATEGORYCODE")
	  REFERENCES "GOODSCATEGORY" ("GOODSCATEGORYCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GOODSTAXRATE
--------------------------------------------------------

  ALTER TABLE "GOODSTAXRATE" ADD CONSTRAINT "FK112" FOREIGN KEY ("TAXCODE")
	  REFERENCES "GOODSSALETAXES" ("TAXCODE") ENABLE;
 
  ALTER TABLE "GOODSTAXRATE" ADD CONSTRAINT "FKFINGODS2" FOREIGN KEY ("FINISHEDGOODSCODE")
	  REFERENCES "FINISHEDGOODS" ("FINISHEDGOODSCODE") ENABLE;
 
  ALTER TABLE "GOODSTAXRATE" ADD CONSTRAINT "FKSALCATCD" FOREIGN KEY ("SALECATEGORYCODE")
	  REFERENCES "SALECATEGORY" ("SALECATEGORYCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OPENSALERATE
--------------------------------------------------------

  ALTER TABLE "OPENSALERATE" ADD CONSTRAINT "FKTRAETRAN" FOREIGN KEY ("FINISHEDGOODSCODE")
	  REFERENCES "FINISHEDGOODS" ("FINISHEDGOODSCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALEINVOICEDETAIL
--------------------------------------------------------

  ALTER TABLE "SALEINVOICEDETAIL" ADD CONSTRAINT "FKFINGOODS" FOREIGN KEY ("FINISHEDGOODSCODE")
	  REFERENCES "FINISHEDGOODS" ("FINISHEDGOODSCODE") ENABLE;
 
  ALTER TABLE "SALEINVOICEDETAIL" ADD CONSTRAINT "FKTRNNO" FOREIGN KEY ("TRANSACTIONNUMBER")
	  REFERENCES "SALEINVOICEHEADER" ("TRANSACTIONNUMBER") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALEINVOICEHEADER
--------------------------------------------------------

  ALTER TABLE "SALEINVOICEHEADER" ADD CONSTRAINT "FKMENS" FOREIGN KEY ("SALEINVOICENUMBERSERIESID")
	  REFERENCES "SALENUMBERSERIES" ("SALENUMBERSERIESID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALENUMBERSERIES
--------------------------------------------------------

  ALTER TABLE "SALENUMBERSERIES" ADD CONSTRAINT "FKGODCATCD" FOREIGN KEY ("GOODSCATEGORYCODE")
	  REFERENCES "GOODSCATEGORY" ("GOODSCATEGORYCODE") ENABLE;
 
  ALTER TABLE "SALENUMBERSERIES" ADD CONSTRAINT "FKPERRESCAT" FOREIGN KEY ("PERIODRESETCATEGORYCODE")
	  REFERENCES "PERIODRESETCATEGORY" ("PERIODRESETCATEGORYCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALEORDERDETAIL
--------------------------------------------------------

  ALTER TABLE "SALEORDERDETAIL" ADD CONSTRAINT "FKFINGODCD1" FOREIGN KEY ("FINISHEDGOODSCODE")
	  REFERENCES "FINISHEDGOODS" ("FINISHEDGOODSCODE") ENABLE;
 
  ALTER TABLE "SALEORDERDETAIL" ADD CONSTRAINT "FKSOH" FOREIGN KEY ("TRANSACTIONNUMBER")
	  REFERENCES "SALEORDERHEADER" ("TRANSACTIONNUMBER") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALEORDERHEADER
--------------------------------------------------------

  ALTER TABLE "SALEORDERHEADER" ADD CONSTRAINT "FKSALCAT" FOREIGN KEY ("SALECATEGORYCODE")
	  REFERENCES "SALECATEGORY" ("SALECATEGORYCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALEQUOTATIONDETAIL
--------------------------------------------------------

  ALTER TABLE "SALEQUOTATIONDETAIL" ADD CONSTRAINT "FKFINGODCD2" FOREIGN KEY ("FINISHEDGOODSCODE")
	  REFERENCES "FINISHEDGOODS" ("FINISHEDGOODSCODE") ENABLE;
 
  ALTER TABLE "SALEQUOTATIONDETAIL" ADD CONSTRAINT "FKTRNHEA" FOREIGN KEY ("TRANSACTIONNUMBER")
	  REFERENCES "SALEQUOTATIONHEADER" ("TRANSACTIONNUMBER") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALEQUOTATIONHEADER
--------------------------------------------------------

  ALTER TABLE "SALEQUOTATIONHEADER" ADD CONSTRAINT "FKQUOTNUM" FOREIGN KEY ("QUOTATIONNUMBERSERIESID")
	  REFERENCES "SALENUMBERSERIES" ("SALENUMBERSERIESID") ENABLE;
 
  ALTER TABLE "SALEQUOTATIONHEADER" ADD CONSTRAINT "FKSALCATCD4" FOREIGN KEY ("SALECATEGORYCODE")
	  REFERENCES "SALECATEGORY" ("SALECATEGORYCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALETENDERDETAIL
--------------------------------------------------------

  ALTER TABLE "SALETENDERDETAIL" ADD CONSTRAINT "FKFINGOD5" FOREIGN KEY ("FINISHEDGOODSCODE")
	  REFERENCES "FINISHEDGOODS" ("FINISHEDGOODSCODE") ENABLE;
 
  ALTER TABLE "SALETENDERDETAIL" ADD CONSTRAINT "TRNTENDHE" FOREIGN KEY ("TRANSACTIONNUMBER")
	  REFERENCES "SALETENDERHEADER" ("TRANSACTIONNUMBER") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALETENDERHEADER
--------------------------------------------------------

  ALTER TABLE "SALETENDERHEADER" ADD CONSTRAINT "FKGODCATCD6" FOREIGN KEY ("GOODSCATEGORYCODE")
	  REFERENCES "GOODSCATEGORY" ("GOODSCATEGORYCODE") ENABLE;
 
  ALTER TABLE "SALETENDERHEADER" ADD CONSTRAINT "FKPER" FOREIGN KEY ("PERMISSIONTRANSACTIONNUMBER")
	  REFERENCES "GOODSSALEPERMISSION" ("TRANSACTIONNUMBER") ENABLE;
 
  ALTER TABLE "SALETENDERHEADER" ADD CONSTRAINT "FKSALECATCD2" FOREIGN KEY ("SALECATEGORYCODE")
	  REFERENCES "SALECATEGORY" ("SALECATEGORYCODE") ENABLE;
 
  ALTER TABLE "SALETENDERHEADER" ADD CONSTRAINT "FKSALNUMSER3" FOREIGN KEY ("TENDERNUMBERSERIESID")
	  REFERENCES "SALENUMBERSERIES" ("SALENUMBERSERIESID") ENABLE;
