<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>Tasks</h2>
        <ul>
            <c:forEach var="Tasks" items="${Tasks}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${Tasks.id}">
                        <c:out value="${Tasks.id}" />
                    </a>
                    ：<c:out value="${Tasks.content}" />
                </li>
            </c:forEach>
        </ul>

                <div id="pagination">
            （全 ${Tasks_count} 件）<br />
            <c:forEach var="i" begin="1" end="${((Tasks_count - 1) / 15) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}"><c:out value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>

        <p><a href="${pageContext.request.contextPath}/new">New</a></p>

    </c:param>
</c:import>