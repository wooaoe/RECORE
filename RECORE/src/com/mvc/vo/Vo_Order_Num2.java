package com.mvc.vo;

import java.sql.Date;
import java.util.List;

public class Vo_Order_Num2 {

   private int order_no; // 주문번호
   private int acc_no; // 계정 번호
   private String order_zipcode; // 배송 우편번호
   private String order_addr; // 배송 주 주소
   private String order_addr2; // 배송 세부주소
   private Date order_date; // 주문 날짜
   private int order_point; //사용 적립금
   private List<Vo_Order_Prod> olist;
   

   public Vo_Order_Num2() {
      super();
   }


   public Vo_Order_Num2(int order_no, int acc_no, String order_zipcode, String order_addr, String order_addr2,
         Date order_date, int order_point, List<Vo_Order_Prod> olist) {
      super();
      this.order_no = order_no;
      this.acc_no = acc_no;
      this.order_zipcode = order_zipcode;
      this.order_addr = order_addr;
      this.order_addr2 = order_addr2;
      this.order_date = order_date;
      this.order_point = order_point;
      this.olist = olist;
   }


   public int getOrder_no() {
      return order_no;
   }


   public void setOrder_no(int order_no) {
      this.order_no = order_no;
   }


   public int getAcc_no() {
      return acc_no;
   }


   public void setAcc_no(int acc_no) {
      this.acc_no = acc_no;
   }


   public String getOrder_zipcode() {
      return order_zipcode;
   }


   public void setOrder_zipcode(String order_zipcode) {
      this.order_zipcode = order_zipcode;
   }


   public String getOrder_addr() {
      return order_addr;
   }


   public void setOrder_addr(String order_addr) {
      this.order_addr = order_addr;
   }


   public String getOrder_addr2() {
      return order_addr2;
   }


   public void setOrder_addr2(String order_addr2) {
      this.order_addr2 = order_addr2;
   }


   public Date getOrder_date() {
      return order_date;
   }


   public void setOrder_date(Date order_date) {
      this.order_date = order_date;
   }


   public int getOrder_point() {
      return order_point;
   }


   public void setOrder_point(int order_point) {
      this.order_point = order_point;
   }


   public List<Vo_Order_Prod> getOlist() {
      return olist;
   }


   public void setOlist(List<Vo_Order_Prod> olist) {
      this.olist = olist;
   }


   @Override
   public String toString() {
      return "Vo_Order_Num [order_no=" + order_no + ", acc_no=" + acc_no + ", order_zipcode=" + order_zipcode
            + ", order_addr=" + order_addr + ", order_addr2=" + order_addr2 + ", order_date=" + order_date
            + ", order_point=" + order_point + ", olist=" + olist + "]";
   }
   
}