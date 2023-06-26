<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="resources/css/orderPopup.css" rel="stylesheet">

</head>
<body>

<c:set var="order" value="${PopupDetail[0]}" />

<h2 class="popuptitle">출하 요청서</h2>

<div class="popup_left">

<table class="ordertable">
              	<colgroup>
			        <col width="50%" />
			        <col width="50%" />
			    </colgroup>

                  <tr>
                    <th scope="col" class="table_left"><div>수주일자</div></th>
                    <td scope="col"><div>${order.orderDate}</div></td>
                  </tr>
                  
                  <tr>
                    <th class="table_left"><div>납기일자</div></th>
                    <td><div>${order.deliveryDate}</div></td>
                  </tr>
                  
                  <tr>
                    <th class="table_left"><div>납품처</div></th>
                    <td><div>${order.hospital}</div></td>
                  </tr>
                  
                  <tr>
                    <th class="table_left"><div>납품처 주소</div></th>
                    <td><div>${order.address}</div></td>
                  </tr>
                  
                  <tr>
                    <th class="table_left"><div>납품처 대표</div></th>
                    <td><div>${order.name}</div></td>
                  </tr>
                  
                  <tr>
                    <th class="table_left"><div>영업처</div></th>
                    <td><div>${order.phone}</div></td>
                  </tr>
                  
                  <tr>
                    <th class="table_left"><div>담당자</div></th>
                    <td><div>${order.email}</div></td>
                  </tr>

</table>

</div>

<div class="popup_right">

              <table class="table table-bordered">
              
              	<colgroup>
			        <col width="10%" />
			        <col width="30%" />
			        <col width="30%" />
			        <col width="30%" />
		        </colgroup>
              
                <thead class="signaturetable">
                  <tr>
                    <th scope="col"><div></div></th>
                    <th scope="col"><div>담당</div></th>
                    <th scope="col"><div>검토</div></th>
                    <th scope="col"><div>승인</div></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th>결 재</th>
                    <td class="sign"></td>
                    <td class="sign"></td>
                    <td class="sign"></td>
                  </tr>
                </tbody>
              </table>

</div>


 			<div class="orderpopup_table_box">

              <!-- Bordered Table   -->
              <table>
              
              	<colgroup>
			        <col width="20%" />
			        <col width="20%" />
			        <col width="20%" />
			        <col width="20%" />
			        <col width="20%" />
			        <%-- <col width="auto" /> --%>
		        </colgroup>
              
                <thead>
                  <tr>
                    <th scope="col" class="orderpopup_th"><div>품목명</div></th>
                    <th scope="col"><div>품목코드</div></th>
                    <th scope="col"><div>수량</div></th>
                    <th scope="col"><div>판매단가</div></th>
                    <th scope="col"><div>부가세</div></th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="product" items="${product}">
                  <tr>
                    <td><div>${product.product}</div></td>
                    <td><div>${product.code}</div></td>
                    <td><div class="count">${product.count}</div></td>
                    <td><div class="price">${product.price}</div></td>
                    <td><div class="tax">${product.tax}</div></td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              </div>
              <!-- End Bordered Table -->
              
              <table>
              
                  <tr>
                    <th class="table_footer_l"><div>총 판매가</div></th>
                    <td class="table_footer"><div>123,000</div></td>
                    <th class="table_footer_l"><div>총 부가세</div></th>
                    <td class="table_footer"><div>12,300</div></td>
                    <th class="table_footer_l"><div>총 액</div></th>
                    <td class="table_footer"><div>135,300</div></td>
                  </tr>
                  
              </table>
     

</body>
</html>