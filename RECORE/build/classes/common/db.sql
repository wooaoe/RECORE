SELECT * FROM ACCOUNT;

Insert into ACCOUNT (ACC_NO,ACC_ID,ACC_PW,ACC_NAME,ACC_BIRTH,ACC_EMAIL,ACC_PHONE,ACC_ZIPCODE,ACC_ADDR,ACC_ADDR2,ACC_ISREG,ACC_POINT,ACC_M_C) values (1,'m1','321321','독고수지','20000719','m1@naver.com','01012345678','06220','서울특별시 강남구 역삼동 717','한국은행 강남본부','Y',300000,'M');

SELECT * FROM PRODUCT WHERE PROD_NO BETWEEN 100 AND 150;
SELECT * FROM PROD_OPTION WHERE PROD_NO BETWEEN 100 AND 150;

SELECT * FROM PRODUCT 
JOIN PROD_OPTION USING(PROD_NO)
WHERE PROD_NO IN(100, 105) OR PROD_NO IN(110, 116) 
OR PROD_NO IN(147, 149) OR PROD_NO IN(161, 162) OR PROD_NO IN(200, 202) 
OR PROD_NO IN(165,169) OR PROD_NO IN(228, 231) OR PROD_NO = 246;

SELECT * FROM PROD_OPTION WHERE PROD_NO IN(100,105,110,116,147,149,161,162,200,202,165,169,228,231,246);
SELECT * FROM PRODUCT WHERE PROD_NO IN(100,105,110,116,147,149,161,162,200,202,165,169,228,231,246);

SELECT * FROM PRODUCT WHERE CATD_NO = 7 PROD_NO DESC;
SELECT * FROM PROD_OPTION WHERE  PROD_NO DESC;