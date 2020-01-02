<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>


	<%@ include file="/header.jsp" %>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/Mypage_OrderList_Detail_CSS.css"/>

<div id="orderSt">

    <p class="txt-date">
        <span><strong>[박수지] </strong>님께서 2019년 12월 08일에 주문하신 내역입니다.</span>
    </p>
    <ul class="tab">
        <li><a href="javascript:order_view('detail', '20191208225627-82970024894');"><img src="/images/common/orderpop_tab_detail_on.gif" alt="주문상세조회" title="주문상세조회"></a></li>
        <li>
                </li>
        <li>
                    <a href="javascript:order_view('brdreview', '20191208225627-82970024894');"><img src="/images/common/orderpop_tab_brdreview_off.gif" alt="상품후기등록" title="상품후기등록"></a> 
                </li>
    </ul>
    <div id="orderInfo">
        <h3 class="tit-page-sub">주문자정보</h3>
        <div class="table-w table-orderinfo">
            <table summary="">
                <caption>주문자정보</caption>
                <colgroup>
                    <col width="120">
                    <col width="*">
                    <col width="120">
                    <col width="*">
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><div class="tb-center">주문번호</div></th>
                        <td><div class="tb-center">20191208225627-82970024894</div></td>
                        <th scope="row"><div class="tb-center">주문일자</div></th>
                        <td><div class="tb-center">2019.12.08</div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">주문자</div></th>
                        <td><div class="tb-center">박수지</div></td>
                        <th scope="row"><div class="tb-center">주문서 입금현황 </div></th>
                        <td><div class="tb-center">입금완료</div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">주문 메모</div></th>
                        <td colspan="3"><div class="tb-left"></div></td>
                    </tr>
                </tbody>
            </table>
        </div>
                <h3 class="tit-page-sub">배송지정보</h3>
        <div class="table-w table-region">
            <table summary="">
                <caption>배송지정보</caption>
                <colgroup>
                    <col width="120">
                    <col width="*">
                    <col width="120">
                    <col width="*">
                </colgroup>
                <tbody>
                                    <tr>
                        <th scope="row"><div class="tb-center">배송번호</div></th>
                        <td>
                            <div class="tb-center">
                                S-19120822-549339887-00                                                            </div>
                        </td>
                        <th scope="row"><div class="tb-center">송장번호</div></th>
                        <td>
                            <div class="tb-center">
                                354746644593                                 
                                    <a href="javascript:openwin('http://api-smart.makeshop.co.kr/tracking/search.html?company=3&amp;code=354746644593')"><img src="/images/common/orderpop_btn_delivery.gif" alt="배송추적" title="배송추적"></a> 
                                                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">수취인</div></th>
                        <td><div class="tb-center">박수지</div></td>
                        <th scope="row"><div class="tb-center">연락처</div></th>
                        <td><div class="tb-center">010-7428-7272</div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">주소</div></th>
                        <td colspan="3"><div class="tb-left">11815 : 경기 의정부시 용민로 441 1404동 1704호</div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">배송메세지</div></th>
                        <td colspan="3"><div class="tb-left"></div></td>
                    </tr>
                                </tbody>
            </table>
        </div>
                <h3 class="tit-page-sub">주문상품정보</h3>
        <div class="table-w table-prdinfo">
            <table summary="">
                <caption>주문상품정보</caption>
                <colgroup>
                    <col width="60">
                    <col width="*">
                    <col width="110">
                    <col width="55">
                    <col width="80">
                    <col width="60">
                    <col width="60">
                    <col width="80">
                </colgroup>
                <thead>
                    <tr><th scope="row" colspan="2"><div class="tb-center">주문상품정보</div></th>
                    <th scope="row"><div class="tb-center">상품별주문번호</div></th>
                    <th scope="row"><div class="tb-center">수량</div></th>
                    <th scope="row"><div class="tb-center">가격</div></th>
                    <th scope="row"><div class="tb-center">적립</div></th>
                    <th scope="row"><div class="tb-center">처리상태</div></th>
                    <th scope="row"><div class="tb-center">배송번호</div></th>
                </tr></thead>
                <tfoot>
                    <tr><td colspan="8">
                        <div class="tb-right">
                            30,500(상품구매금액)
                                                            + 2,500(배송료)
                                                                                                                                                (할인/추가금액)
                                                        = 33,000원
                        </div>
                    </td>
                </tr></tfoot>
                <tbody>
                                    <tr>
                        <td>
                            <div class="tb-center">
                                                                <img src="/shopimages/dhthdud12/0120010004013.gif" style="width: 58px; height: 58px">
                                                            </div>
                        </td>
                        <td>
                            <div class="tb-left">
                                <a href="javascript:go_brand('012001000401');">상품명 출력@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@<br></a>
                                <span class="quantity order_table_Td style4"><img src="/images/common/order1_optionicon.gif"> color : 브라운</span>
                            </div>
                        </td>
                        <td><div class="tb-center">20191208225627-82970024894_[1]</div></td>
                        <td><div class="tb-center">1</div></td>
                        <td><div class="tb-center tb-price"><strong><font color="#FF5D00">30,500</font></strong>원</div></td>
                        <td><div class="tb-center"><span class="style4">0</span><span class="style4"></span></div></td>
                        <td><div class="tb-center">거래완료</div></td>
                        <td><div class="tb-center">S-19120822-549339887-00</div></td>
                    </tr>
                                </tbody>
            </table>
        </div>
        <h3 class="tit-page-sub">결제정보</h3>
        <div class="table-w table-payinfo">
            <table summary="">
                <caption>결제정보</caption>
                <colgroup>
                    <col width="180">
                    <col width="250">
                    <col width="*">
                </colgroup>
                <thead>
                    <tr><th scope="row"><div class="tb-center">결제방법</div></th>
                    <th scope="row"><div class="tb-center">결제금액</div></th>
                    <th scope="row"><div class="tb-center">세부내역</div></th>
                </tr></thead>
                <tfoot>
                    <tr>
                        <td><div class="tb-center">카드</div></td>
                        <td><div class="tb-center">33,000원 (입금완료)</div></td>
                        <td><div class="tb-center">IN:INIMX_ISP_MH5427794620191208225730455488 
                        <a href="javascript:receipt('NEW', '');"><img src="/images/common/print_cardtax.gif"></a>                                                </div></td>
                    </tr>
                </tfoot>
                <tbody>
                    <tr>
                        <td><div class="tb-center">사용한 적립금</div></td>
                        <td><div class="tb-center">원</div></td>
                        <td><div class="tb-center">&nbsp;</div></td>
                    </tr>
                    <tr>
                        <td><div class="tb-center">사용한 예치금</div></td>
                        <td><div class="tb-center">원</div></td>
                        <td><div class="tb-center">&nbsp;</div></td>
                    </tr>
                </tbody>
            </table>
        </div>
                                <div id="pop_order_btn_group">
                    <a href="JavaScript:alert('해당 주문건의 환불/취소는 Q&amp;A 게시판으로 문의하여 주시기 바랍니다!')"><span class="CSSbutton">주문취소</span></a>
                                                    <a href="javascript:window.close();"><span class="CSSbutton">닫 기</span></a>
        </div>
    </div><!-- #orderInfo-->
</div><!-- #orderSt -->
<iframe id="loginiframe" name="loginiframe" style="display: none;" frameborder="no" scrolling="no"></iframe>

<div id="basketpage" name="basketpage" style="position: absolute; visibility: hidden;"></div>

        <form name="tabform" method="post" action="orderpop.html">
            <input type="hidden" name="ordernum">
            <input type="hidden" name="orderhname" value="">
        </form>

<form name="form1" action="orderpop.html" method="post">
<input type="hidden" name="tempidnum">
<input type="hidden" name="ordernum" value="20191208225627-82970024894">
<input type="hidden" name="delivery_num">
<input type="hidden" name="type">
<input type="hidden" name="delivery" value="Y">
<input type="hidden" name="ordernumid" value="">
<input type="hidden" name="orderhname" value="">
</form>


</body>
</html>