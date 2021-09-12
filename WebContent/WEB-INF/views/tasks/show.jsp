<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
    <c:choose>
     <c:when test="${Tasks != null}">

        <h2>${Tasks.id} Detail</h2>

                <table>
                    <tbody>
                        <tr>
                            <th>内容</th>
                            <td><c:out value="${Tasks.content}" /></td>
                        </tr>
                        <tr>
                            <th>作成日時</th>
                            <td><fmt:formatDate value="${Tasks.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                        <tr>
                            <th>更新日時</th>
                            <td><fmt:formatDate value="${Tasks.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                    </tbody>
                </table>

        <p><a href="${pageContext.request.contextPath}/index">Task List</a></p>
        <p><a href="${pageContext.request.contextPath}/edit?id=${Tasks.id}">Edit</a></p>
                   </c:when>
            <c:otherwise>
                <h2>No DATA</h2>
            </c:otherwise>
        </c:choose>


    </c:param>
</c:import>