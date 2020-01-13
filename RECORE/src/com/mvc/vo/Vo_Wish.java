package com.mvc.vo;

public class Vo_Wish {

   private int prod_no; // 상품 번호
   private int acc_no; // 계정 번호
   private int catd_no; //카테고리 번호
   private String prod_front_img; //상품 이미지
   private String prod_brand; //브랜드명
   private String prod_name; //상품명
   private int prod_price; //가격
   
   public Vo_Wish() {
      super();
   }

   public Vo_Wish(int prod_no, int acc_no, int catd_no, String prod_front_img, String prod_brand, String prod_name,
         int prod_price) {
      super();
      this.prod_no = prod_no;
      this.acc_no = acc_no;
      this.catd_no = catd_no;
      this.prod_front_img = prod_front_img;
      this.prod_brand = prod_brand;
      this.prod_name = prod_name;
      this.prod_price = prod_price;
   }

   public int getProd_no() {
      return prod_no;
   }

   public void setProd_no(int prod_no) {
      this.prod_no = prod_no;
   }

   public int getAcc_no() {
      return acc_no;
   }

   public void setAcc_no(int acc_no) {
      this.acc_no = acc_no;
   }

   public int getCatd_no() {
      return catd_no;
   }

   public void setCatd_no(int card_no) {
      this.catd_no = card_no;
   }

   public String getProd_front_img() {
      return prod_front_img;
   }

   public void setProd_front_img(String prod_front_img) {
      this.prod_front_img = prod_front_img;
   }

   public String getProd_brand() {
      return prod_brand;
   }

   public void setProd_brand(String prod_brand) {
      this.prod_brand = prod_brand;
   }

   public String getProd_name() {
      return prod_name;
   }

   public void setProd_name(String prod_name) {
      this.prod_name = prod_name;
   }

   public int getProd_price() {
      return prod_price;
   }

   public void setProd_price(int prod_price) {
      this.prod_price = prod_price;
   }

   @Override
   public String toString() {
      return "Vo_Wish [prod_no=" + prod_no + ", acc_no=" + acc_no + ", catd_no=" + catd_no + ", prod_front_img="
            + prod_front_img + ", prod_brand=" + prod_brand + ", prod_name=" + prod_name + ", prod_price="
            + prod_price + "]";
   }
   
}