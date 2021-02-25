<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helloWorld" class="example.HelloWorld"/>

<html>
  <head>
    <title>$Title$</title>
    <% String name = helloWorld.sayHelloWorldFrom("조주은"); %>
    <div>안녕하세요 반갑습니다</div>
    <div> <%= name %> </div>
  </head>
  <body>

  <c:out value="출력할 값" default="value가 null일 경우 설정한 default값 출력"/>
  <c:out value="작성자" default="Admin" />
  <c:out value="hello world!!!!!!!" />


  <c:set var="변수명" value="9999999 "/>
  <c:set var="변수명" > 9999999 </c:set>
  <c:set var="변수명" value ="999999" scope="page"/>


  <c:forEach var="item" items="${items}" begin="0" end="10" step="1" varStatus="status">
    <p>번호 : ${status.index}</p>
    <p>책명 : ${item.name}</p>
    <p>저자 : ${item.author}</p>
    <p>출판사 : ${item.publisher}</p>
  </c:forEach>


  <c:if test="${pageInfo.PAGE_EDIT eq 'Y'}">
    <h2>작업중입니다.</h2>
  </c:if>


  <c:choose>
    <c:when test="${pageInfo.PAGE_EDIT eq 'Y'}">
      pageInfo.PAGE_EDIT값이 Y일 때 해당되는 블록
    </c:when>
    <c:when test="${pageInfo.PAGE_EDIT eq 'N'}">
      pageInfo.PAGE_EDIT값이 N일 때 해당되는 블록
    </c:when>
    <c:otherwise>
      pageInfo.PAGE_EDIT값이 N도 Y도 아닐 때 해당되는 블록
    </c:otherwise>
  </c:choose>


  </body>
</html>
