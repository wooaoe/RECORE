package com.mvc.vo;

public class Vo_Order {
   
   private int prod_no; // 상품 번호
   private int prod_id; // 상품 아이디
   private int catd_no; // 상품 카테고리
   private String prod_brand; //상품 브랜드
   private String prod_name; //상품명
   private String prod_color; //컬러
   private String prod_size; //사이즈
   private int order_amount; // 주문 수량
   private int order_price; // 금액
   private String order_tno; // 송장번호
   private String order_status; // 주문 상태1
   private String order_isreview; // 리뷰 작성 여부
   

   public Vo_Order() {
      super();
   }


   public Vo_Order(int prod_no, int prod_id, int catd_no, String prod_brand, String prod_name, String prod_color,
         String prod_size, int order_amount, int order_price, String order_tno, String order_status,
         String order_isreview) {
      super();
      this.prod_no = prod_no;
      this.prod_id = prod_id;
      this.catd_no = catd_no;
      this.prod_brand = prod_brand;
      this.prod_name = prod_name;
      this.prod_color = prod_color;
      this.prod_size = prod_size;
      this.order_amount = order_amount;
      this.order_price = order_price;
      this.order_tno = order_tno;
      this.order_status = order_status;
      this.order_isreview = order_isreview;
   }


   public int getProd_no() {
      return prod_no;
   }


   public void setProd_no(int prod_no) {
      this.prod_no = prod_no;
   }


   public int getProd_id() {
      return prod_id;
   }


   public void setProd_id(int prod_id) {
      this.prod_id = prod_id;
   }


   public int getCatd_no() {
      return catd_no;
   }


   public void setCatd_no(int catd_no) {
      this.catd_no = catd_no;
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


   public String getProd_color() {
      return prod_color;
   }


   public void setProd_color(String prod_color) {
      this.prod_color = prod_color;
   }


   public String getProd_size() {
      return prod_size;
   }


   public void setProd_size(String prod_size) {
      this.prod_size = prod_size;
   }


   public int getOrder_amount() {
      return order_amount;
   }


   public void setOrder_amount(int order_amount) {
      this.order_amount = order_amount;
   }


   public int getOrder_price() {
      return order_price;
   }


   public void setOrder_price(int order_price) {
      this.order_price = order_price;
   }


   public String getOrder_tno() {
      return order_tno;
   }


   public void setOrder_tno(String order_tno) {
      this.order_tno = order_tno;
   }


   public String getOrder_status() {
      return order_status;
   }


   public void setOrder_status(String order_status) {
      this.order_status = order_status;
   }


   public String getOrder_isreview() {
      return order_isreview;
   }


   public void setOrder_isreview(String order_isreview) {
      this.order_isreview = order_isreview;
   }


   @Override
   public String toString() {
      return "Vo_Order [prod_no=" + prod_no + ", prod_id=" + prod_id + ", catd_no=" + catd_no + ", prod_brand="
            + prod_brand + ", prod_name=" + prod_name + ", prod_color=" + prod_color + ", prod_size=" + prod_size
            + ", order_amount=" + order_amount + ", order_price=" + order_price + ", order_tno=" + order_tno
            + ", order_status=" + order_status + ", order_isreview=" + order_isreview + "]";
   }

}