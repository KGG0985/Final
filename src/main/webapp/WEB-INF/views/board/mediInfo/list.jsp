<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />


	<div >
	 <!-- Main content -->
	<section class="content-header">
	  	<div class="container-fluid">
	  	<div></div>
	  		<div class="row md-2">
	  			<div class="col-sm-3">
	  				<h1>    </h1>  				
	  			</div>
	  		
	  		</div>
	  	</div>
	</section>
	 
	 
   	<section class="content">
   		<div class="card"   >
   			<div class="card-header with-border"  >
   				<sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_MANAGER')" >
   					<button type="button" class="btn btn-primary" onclick="OpenWindow('registForm.do','회원등록',600,700);" >회원등록</button>
   				</sec:authorize>
   				<div id="keyword" class="card-tools" style="width:550px;" >
   					 <div class="input-group row"  >
   					 	<!-- search bar -->
   					 	<!-- sort num -->
					  		<select class="form-control col-md-3" name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
					  		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' } >정렬개수</option>
					  		<option value="2" ${cri.perPageNum eq 2 ? 'selected' : '' }>2개씩</option>
					  		<option value="3" ${cri.perPageNum eq 3 ? 'selected' : '' }>3개씩</option>
					  		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
					  	</select>
					  	
					  	
					  	<!-- search bar -->
					 	<select class="form-control col-md-3" name="searchType" id="searchType">
					 		<option value=""  >검색구분</option>
							<option value="i" ${param.searchType=='i' ? "selected":"" } >아이디</option>
							<option value="n" ${param.searchType=='n' ? "selected":"" }>이 름</option>
							<option value="p" ${param.searchType=='p' ? "selected":"" }>전화번호</option>
							<option value="e" ${param.searchType=='e' ? "selected":"" }>이메일</option>	
											 									
						</select>
						<!-- keyword -->
						
   					 	<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${cri.keyword }" />
						<span class="input-group-append" >
							<button class="btn btn-primary" type="button" 
									id="searchBtn" data-card-widget="search" onclick="list_go(1);"  >
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
					
					<!-- end : search bar -->		
   					 </div>
   				</div>   			
   			</div>
    		  <div class="row">
    		   <div class="col-sm-1">
    		   </div>
   			<div class="card-body" style="text-align:center;">
	             <div class="col-sm-10">	
		    		<table class="table table-bordered">
		    			<tr>
		    				<th>사진</th>
		                	<th>아이디</th>
		                	<th>패스워드</th>
		                	<th>이 름</th>
		                	<th>이메일</th>
		                	<th>전화번호</th>
		                	<th>등록날짜</th> <!-- yyyy-MM-dd  -->
		               	</tr>
		     			<c:if test="${!empty minfoList }" >
		            		<c:forEach items="${minfoList}" var="minfo">		     						     				
		     					 <tr>

		            		  	   	<td>${minfo.minfoClass }</td>
				              		<td>${minfo.minfoCode }</td>
				              		<td>${minfo.minfoContent }
				              		<td>${minfo.minfoWriter }</td>
		            		  	   	<td><fmt:formatDate value="${minfo.minfoRegdate }" pattern="yyyy-MM-dd"/></td>
		            		  	  </tr>	
		     					
		     				</c:forEach>
		            	</c:if>		
		     			<c:if test="${empty minfoList }" >
			     			<tr>
		            			<td colspan="7" class="text-center">
		            				해당내용이 없습니다.
		            			</td>
		            		</tr>
		     			</c:if>	
		            </table>
    		     </div> <!-- col-sm-12 -->
    	       </div> <!-- row -->
    		</div> <!-- card-body -->
    		<div class="card-footer">
    			<%@ include file="/WEB-INF/views/include/pagination.jsp" %>
    		</div>
	     </div>
   	</section>
  </div>



<div class="container-fluid">
<div id="keyword" class="card-tools" style="width:550px;" >
   					 <div class="input-group row"  >
   					 	<!-- search bar -->
   					 	<!-- sort num -->
					  		<select class="form-control col-md-3" name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
					  		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' } >정렬개수</option>
					  		<option value="2" ${cri.perPageNum eq 2 ? 'selected' : '' }>2개씩</option>
					  		<option value="3" ${cri.perPageNum eq 3 ? 'selected' : '' }>3개씩</option>
					  		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
					  	</select>
					  	
					  	
					  	<!-- search bar -->
					 	<select class="form-control col-md-3" name="searchType" id="searchType">
					 		<option value=""  >검색구분</option>
							<option value="i" ${param.searchType=='i' ? "selected":"" } >아이디</option>
							<option value="n" ${param.searchType=='n' ? "selected":"" }>이 름</option>
							<option value="p" ${param.searchType=='p' ? "selected":"" }>전화번호</option>
							<option value="e" ${param.searchType=='e' ? "selected":"" }>이메일</option>	
											 									
						</select>
						<!-- keyword -->
						
   					 	<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${cri.keyword }" />
						<span class="input-group-append" >
							<button class="btn btn-primary" type="button" 
									id="searchBtn" data-card-widget="search" onclick="list_go(1);"  >
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
					
					<!-- end : search bar -->		
   					 </div>
   				</div>   			
   			</div>
				<div class="form-head page-titles d-flex mb-md-4">
					<div class="mr-auto">
						<h2 class="text-black font-w600">Reviews</h2>
						<ol class="breadcrumb">
							<li class="breadcrumb-item active"><a href="javascript:void(0)">Doctor</a></li>
							<li class="breadcrumb-item"><a href="javascript:void(0)">#P-0616</a></li>
						</ol>

					</div>
					<div class="d-sm-flex d-block mb-0 align-items-end">
						<ul class="nav nav-pills review-tab mr-3 mb-2">
							<li class="nav-item">
								<a href="#navpills-1" class="nav-link active" data-toggle="tab" aria-expanded="false">ALL REVIEW</a>
							</li>
							<li class="nav-item">
								<a href="#navpills-2" class="nav-link" data-toggle="tab" aria-expanded="false">PUBLISHED</a>
							</li>
							<li class="nav-item">
								<a href="#navpills-3" class="nav-link" data-toggle="tab" aria-expanded="true">DELETED</a>
							</li>
						</ul>
						<div class="dropdown d-inline-block mb-2">
							<div class="btn btn-outline-primary dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="false">
								Newest
							</div>
							<div class="dropdown-menu dropdown-menu-left">
								<a class="dropdown-item" href="#">Newest</a>
								<a class="dropdown-item" href="#">Old</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12">
						<div class="tab-content">
							<div id="navpills-1" class="tab-pane active show fade">
									<c:forEach items="${minfoList}" var="minfo">	
								<div class="card review-table">
									<div class="media">
										
									
										<div class="media-body">
											<h3 class="fs-20 text-black font-w600 mb-3"><a href="email-read.html" class="text-black">${minfo.minfoTitle }</a>
					
											</h3>
											<p>${minfo.minfoContent }</p>
											<span class="fs-15">${minfo.minfoRegdate}</span>
										</div>
										<div class="media-footer d-flex align-self-center">
											<div class="edit ml-auto">
											<div class="disease mr-5">
												<p class="mb-1 fs-14">작성자</p>
												<h4 class="text-primary">${minfo.minfoWriter }</h4>
											</div>
								
											</div>
										</div>
									</div>
								</div>
									</c:forEach>
								
						</div>
					</div>
				</div>
            </div>
 
 
  
<script>
window.onload=function(){
	MemberPictureThumb('<%=request.getContextPath()%>');
}
function OpenWindow(UrlStr, WinTitle, WinWidth, WinHeight) {
	winleft = (screen.width - WinWidth) / 2;
	wintop = (screen.height - WinHeight) / 2;
	var win = window.open(UrlStr , WinTitle , "scrollbars=yes,width="+ WinWidth +", " 
							+"height="+ WinHeight +", top="+ wintop +", left=" 
							+ winleft +", resizable=yes, status=yes"  );
	win.focus() ; 
}
</script> 
 



