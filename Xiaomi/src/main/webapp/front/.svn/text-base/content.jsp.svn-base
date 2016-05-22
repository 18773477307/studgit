<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<div class="reply_con">    <!-- 评论的主要块 -->
          <div class="reply_title">
             <span class="reply_nav"><a>最新评论　</a><span>|</span><a class="orderby">　正序排列</a></span>
           </div>
              
           <ul class="reply_list">
	     	   <c:if test="${not empty comments }">
	      	      <c:forEach items="${comments }" var="itemms">
	      		    <li>
	                   	<div class="reply_list_img">
	                       <img src="front/images/reply_list_img1.jpg">
	                    </div>
	                    <div class="reply_list_con">
	                    	<div class="user_info">
	                        	<a>${itemms.usersName }</a> <span>发布于　</span><span>${itemms.comDates }</span><span id="reply_floor"></span>
	                        </div>
	                        <div class="main_con">
	                        	${itemms.comCont }
	                        </div>                           	
	                     </div>
	                 </li>
	               </c:forEach>
	     		</c:if>
           </ul>
</div>