<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>タスク一覧</h2>

        <table class="task_table">
            <thead>
                <tr>
                    <th class="id">ID</th>
                    <th class="detail">詳細</th>
                    <th class="content">タスク内容</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="task" items="${tasks}">
                    <tr>
                        <th class="id">
                            <c:out value="${task.id}" />
                        </th>
                        <td class="detail">
                            <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                                詳細
                            </a>
                        </td>
                        <td class="content">
                            <c:out value="${task.content}" />
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

<!--
        <ul>
            <c:forEach var="task" items="${tasks}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                        <c:out value="${task.id}" />
                    </a>
                    ：<c:out value="${task.content}" />
                </li>
            </c:forEach>
        </ul>
-->
        <p><a href="${pageContext.request.contextPath}/new">新規タスクの登録</a></p>

    </c:param>
</c:import>