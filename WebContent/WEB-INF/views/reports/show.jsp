<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${report != null}">
                <c:if test="${flush != null}">
                    <div id="flush_success">
                        <c:out value="${flush}"></c:out>
                    </div>
                </c:if>
                <h2>投稿 詳細ページ</h2>
                <table>
                    <tbody>
                        <tr>
                            <th>氏名</th>
                            <td><c:out value="${report.employee.name}" /></td>
                        </tr>
                        <tr>
                            <th>日付</th>
                            <td><fmt:formatDate value="${report.created_at}"
                                    pattern="yyyy-MM-dd HH:mm" /></td>
                        </tr>
                        <tr>
                            <th>タイトル</th>
                            <td><pre>
                                    <c:out value="${report.title}" />
                                </pre></td>
                        </tr>
                        <tr>
                            <th>出勤時間</th>
                            <td><fmt:formatDate value="${report.start_time}"
                            pattern="HH:mm" /></td>
                        </tr>
                        <tr>
                            <th>退勤時間</th>
                            <td><fmt:formatDate value="${report.end_time}"
                            pattern="HH:mm" /></td>
                        </tr>
                        <tr>
                            <th>内容</th>
                            <td><pre>
                                    <c:out value="${report.content}" />
                                </pre></td>
                        </tr>
                        <tr>
                            <th>画像</th>
                            <td><c:choose>
                                    <c:when test="${report.image != null}">
                                        <img src="/daily_report_system/uploads/${report.image}"
                                            style="width: 30%">
                                    </c:when>
                                    <c:otherwise>
                                    画像はありません。
                                </c:otherwise>
                                </c:choose></td>
                        </tr>
                    </tbody>
                </table>
                <br />
            </c:when>
        </c:choose>

        <p>
            <a href="<c:url value="/" />">一覧に戻る</a>
        </p>
    </c:param>
</c:import>