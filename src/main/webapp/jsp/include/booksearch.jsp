<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function checkForm() {
		let f = document.getElementById('sckeyword-form');
		if (f.sckeyword.value == '') {
			alert('검색어를 입력하세요');
			f.sckeyword.focus();
			return false;
		}
		return true;
	}
</script>
<style type="text/css">
	.form-container {
		width: 1000px;
		max-height: 800px;
		margin: 0 auto;
		padding: 70px;
		background-color: #343a40;
		border-radius: 8px;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		color: white; /* 텍스트 색상을 하얀색으로 설정 */
	}
	.search-box {
		text-align: center;
		margin-bottom: 20px;
		position: absolute;
		top: -130px;
		left: -10px;
		color: white; /* 텍스트 색상을 하얀색으로 설정 */
	}
	
	 .container h1 {
            color: #fff;
        }

        .container .book {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .container .book span {
            flex-basis: 16.66%;
        }

        .container .book .status {
            width: 8%;
        }
        
        .container .book .action {
            width: 8%;
            text-align: right;
        }

        .container .book span.header {
            font-weight: bold;
        }

        .container .book .rented-book {
            color: #ff0000;
        }
        
         .container .book .available-book {
            color: #00ff00;
        }
</style>
</head>
<body>

<header>
	<jsp:include page="/jsp/include/topMenu.jsp" />
</header>
<section>
	<div class="form-container">
		<div class="search-box">
			<form method="post" action="/WebMyLibProject/booksearchprocess.do" name="searchform" onsubmit="return checkForm()">
      <div class="container">
        <div class="text-center mt-6">
          <div class="row align-items-center justify-content-center mt-3">
            <div class="col-md-4">
              <select name="searchBy" class="form-select">
                <option value="total" selected>통합검색</option>
                <option value="title">도서명</option>
                <option value="writer">저자</option>
                <option value="publisher">출판사</option>
              </select>
            </div>
            <div class="col-md-8">
              <div class="input-group">
                <input type="search" id="sckeyword" name="sckeyword" class="form-control"
                  placeholder="제목/저자/출판사 검색">
                <button type="submit" id="searchbook" class="btn btn-dark">검색</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
		</div>

		<c:choose>
			<c:when test="${empty sbook}">
				<h1> 검색결과가 없습니다.</h1>
			</c:when>
			<c:otherwise>
				<div class="container">
        <h1>도서 검색</h1>
        <hr class="text-white" />
        <div class="book">
            <span class="header">도서번호</span>
            <span class="header">제목</span>
            <span class="header">작가</span>
            <span class="header">출판사</span>
            <span class="header">대출여부</span>
            <c:if test="${empty loginUser}">
                <span class="header">대출하기</span>
            </c:if>
            <c:if test="${loginUser.type eq 'U'}">
                <span class="header">대출하기</span>
            </c:if>
            <c:if test="${loginUser.type eq 'S'}">
                <span class="header">삭제하기</span>
            </c:if>
        </div>
        <c:forEach var="book" items="${sbook}">
            <div class="book">
                <span>${book.no}</span>
                <span>${book.title}</span>
                <span>${book.writer}</span>
                <span>${book.publisher}</span>
                <span class="${book.rented_book eq '1' ? 'rented-book' : 'available-book'} status">
                    <c:choose>
                        <c:when test="${book.rented_book eq '1'}">
                            대출 중
                        </c:when>
                        <c:otherwise>
                            대출 가능
                        </c:otherwise>
                    </c:choose>
							</span>
							<c:choose>
								<c:when test="${empty loginUser}">
									<span>로그인 후 대출</span>
								</c:when>
								
								<c:otherwise>
									<form action="rentbook.do" method="POST">
										<input type="hidden" name="no" value="${book.no}">
										<input type="hidden" name="id" value="${loginUser.id}">
										<button type="submit" class="btn btn-dark" ${book.rented_book eq '1' ? 'disabled' : ''}>대출하기</button>
									</form>
								</c:otherwise>
							</c:choose>
						</div>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</section>

</body>
</html>
