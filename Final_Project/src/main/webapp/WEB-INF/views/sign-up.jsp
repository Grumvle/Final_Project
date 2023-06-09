<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<div lang="en">
   <head>

      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Booksto - Responsive Bootstrap 4 Admin Dashboard Template</title>
      <!-- Favicon -->
      <link rel="shortcut icon" href="${path}/resources/images/favicon.ico" />
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css">
      <!-- Typography CSS -->
      <link rel="stylesheet" href="${path}/resources/css/typography.css">
      <!-- Style CSS -->
      <link rel="stylesheet" href="${path}/resources/css/style.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="${path}/resources/css/responsive.css">
      <link rel="stylesheet" href="${path}/resources/css/font.css">
   </head>
   <div>
   <%@ include file="header.jsp" %>
      <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <!-- loader END -->
        <!-- 회원가입 -->
   <div id="content-page" class="content-page">
      <div class="col-lg-12">
          <div class="iq-edit-list-data">
              <div class="tab-content">
                  <div class="tab-pane fade active show" id="personal-information" role="tabpanel">
                      <div class="iq-card">
                          <div class="iq-card-header d-flex justify-content-between">
                              <div class="iq-header-title">
                                  <h4 class="card-title">회원가입</h4>
                              </div>
                          </div>
                          <div class="iq-card-body">
                              <form method="post" enctype="multipart/form-data" action="<%=request.getContextPath() %>/insert.ok.go">
                                  <div class=" row align-items-center">
                                      <div class="form-group col-sm-6">
                                          <label for="user_name">이름:</label>
                                          <input type="text" class="form-control" id="user_name" name="user_name" placeholder="Name">
                                      </div>
                                      <div class="form-group col-sm-6">
                                          <label for="user_email">이메일:</label>
                                          <input type="email" class="form-control" id="user_email" name="user_email" placeholder="E-mail">
                                      </div>
                                      <div class="form-group col-sm-6">
                                          <label for="user_id">아이디:</label>
                                          <div class="input-group">
                                              <input type="text" class="form-control" id="user_id" name="user_id" placeholder="Id">
                                              <input type="button" value="중복확인" class="btn btn-primary input-group-append" id="idcheck_btn">
                                          </div>
                                          <br>
                                          <span id="idcheck"></span>
                                      </div>
                                      <div class="form-group col-sm-6">
                                          <label for="user_pwd">비밀번호:</label>
                                          <input type="password" class="form-control" id="user_pwd" name="user_pwd" placeholder="Password">
                                      </div>
                                      <div class="form-group col-sm-6">
                                          <label for="user_nickname">닉네임:</label>
                                          <input type="text" class="form-control" id="user_nickname" name="user_nickname" placeholder="Nick Name">
                                      </div>
                                      <div class="form-group col-sm-6">
                                          <label for="user_phone">전화번호:</label>
                                          <input type="text" class="form-control" id="user_phone" name="user_phone" placeholder="Phone">
                                      </div>
                                      <div class="form-group col-sm-6">
                                          <label for="user_job">직업:</label>
                                          <input type="text" class="form-control" id="user_job" name="user_job" placeholder="Job">
                                      </div>
                                      <div class="form-group col-sm-6">
                                          <label for="user_addr">주소:</label>
                                          <input type="text" class="form-control" id="user_addr" name="user_addr" placeholder="Address">
                                      </div>
                                      <div class="form-group col-sm-6">
                                          <label for="user_intro">소개글:</label>
                                          <textarea class="form-control" id="user_intro" name="user_intro" placeholder="Intro"></textarea>
                                      </div>
                                      <div class="form-group col-sm-6">
                                          <label for="img">프로필:</label>
                                          <div class="custom-file">
                                              <input type="file" class="custom-file-input" id="img" name="img">
                                              <label class="custom-file-label btn btn-outline-success" for="img">프로필 선택</label>
                                          </div>
                                      </div>
                                      <div class="form-group col-sm-6">
                                      <label>관심분야1</label>
                                      <select name="category1" class="form-control" id="exampleFormControlSelect4">
                                          <c:forEach items="${Cate_List}" var="cate">
                                              <option value="${cate.category_no}">${cate.category}</option>
                                          </c:forEach>
                                      </select>
                                      </div>
                                      <div class="form-group col-sm-6">
                                          <label>관심분야2</label>
                                          <select name="category2" class="form-control" id="exampleFormControlSelect5">
                                              <c:forEach items="${Cate_List}" var="cate">
                                                  <option value="${cate.category_no}">${cate.category}</option>
                                              </c:forEach>
                                          </select>

                                          <script>
                                              // 중복 선택 방지
                                              const cate1 = document.querySelector("[name='category1']");
                                              const cate2 = document.querySelector("[name='category2']");
                                              cate1.addEventListener('change', function() {
                                                  const selectedValue = this.value;
                                                  const options = document.querySelectorAll('#exampleFormControlSelect5 option');
                                                  options.forEach(function(option) {
                                                      option.disabled = (option.value === selectedValue);
                                                  });
                                              });
                                              cate2.addEventListener('change', function() {
                                                  const selectedValue = this.value;
                                                  const options = document.querySelectorAll('#exampleFormControlSelect4 option');
                                                  options.forEach(function(option) {
                                                      option.disabled = (option.value === selectedValue);
                                                  });
                                              });
                                          </script>

                                      </div>
                                      <input type="hidden" name="user_money" value="0">
                                      <input type="hidden" name="user_approve" value="0">
                                      <input type="hidden" name="user_number" value="5">
                                      <input type="hidden" name="user_birth" value="2023/05/17">
                                  </div>
                                  <button type="submit" class="btn btn-primary mr-2" onclick="return checkAll()">회원가입</button>
                                  <button type="reset" class="btn iq-bg-danger">다시작성</button>
                              </form>
                          </div>
                      </div>
                  </div>
                  <div class="tab-pane fade" id="chang-pwd" role="tabpanel">
                      <div class="iq-card">
                          <div class="iq-card-header d-flex justify-content-between">
                              <div class="iq-header-title">
                                  <h4 class="card-title">Change Password</h4>
                              </div>
                          </div>
                          <div class="iq-card-body">
                              <form>
                                  <div class="form-group">
                                      <label for="cpass">Current Password:</label>
                                      <a href="javascripe:void();" class="float-right">Forgot Password</a>
                                      <input type="Password" class="form-control" id="cpass" value="">
                                  </div>
                                  <div class="form-group">
                                      <label for="npass">New Password:</label>
                                      <input type="Password" class="form-control" id="npass" value="">
                                  </div>
                                  <div class="form-group">
                                      <label for="vpass">Verify Password:</label>
                                      <input type="Password" class="form-control" id="vpass" value="">
                                  </div>
                                  <button type="submit" class="btn btn-primary mr-2">Submit</button>
                                  <button type="reset" class="btn iq-bg-danger">Cancel</button>
                              </form>
                          </div>
                      </div>
                  </div>
                  <div class="tab-pane fade" id="emailandsms" role="tabpanel">
                      <div class="iq-card">
                          <div class="iq-card-header d-flex justify-content-between">
                              <div class="iq-header-title">
                                  <h4 class="card-title">Email and SMS</h4>
                              </div>
                          </div>
                          <div class="iq-card-body">
                              <form>
                                  <div class="form-group row align-items-center">
                                      <label class="col-8 col-md-3" for="emailnotification">Email Notification:</label>
                                      <div class="col-4 col-md-9 custom-control custom-switch">
                                          <input type="checkbox" class="custom-control-input" id="emailnotification" checked="">
                                          <label class="custom-control-label" for="emailnotification"></label>
                                      </div>
                                  </div>
                                  <div class="form-group row align-items-center">
                                      <label class="col-8 col-md-3" for="smsnotification">SMS Notification:</label>
                                      <div class="col-4 col-md-9 custom-control custom-switch">
                                          <input type="checkbox" class="custom-control-input" id="smsnotification" checked="">
                                          <label class="custom-control-label" for="smsnotification"></label>
                                      </div>
                                  </div>
                                  <div class="form-group row align-items-center">
                                      <label class="col-md-3" for="npass">When To Email</label>
                                      <div class="col-md-9">
                                          <div class="custom-control custom-checkbox">
                                              <input type="checkbox" class="custom-control-input" id="email01">
                                              <label class="custom-control-label" for="email01">You have new notifications.</label>
                                          </div>
                                          <div class="custom-control custom-checkbox">
                                              <input type="checkbox" class="custom-control-input" id="email02">
                                              <label class="custom-control-label" for="email02">You're sent a direct message</label>
                                          </div>
                                          <div class="custom-control custom-checkbox">
                                              <input type="checkbox" class="custom-control-input" id="email03" checked="">
                                              <label class="custom-control-label" for="email03">Someone adds you as a connection</label>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="form-group row align-items-center">
                                      <label class="col-md-3" for="npass">When To Escalate Emails</label>
                                      <div class="col-md-9">
                                          <div class="custom-control custom-checkbox">
                                              <input type="checkbox" class="custom-control-input" id="email04">
                                              <label class="custom-control-label" for="email04"> Upon new order.</label>
                                          </div>
                                          <div class="custom-control custom-checkbox">
                                              <input type="checkbox" class="custom-control-input" id="email05">
                                              <label class="custom-control-label" for="email05"> New membership approval</label>
                                          </div>
                                          <div class="custom-control custom-checkbox">
                                              <input type="checkbox" class="custom-control-input" id="email06" checked="">
                                              <label class="custom-control-label" for="email06"> Member registration</label>
                                          </div>
                                      </div>
                                  </div>
                                  <button type="submit" class="btn btn-primary mr-2">Submit</button>
                                  <button type="reset" class="btn iq-bg-danger">Cancel</button>
                              </form>
                          </div>
                      </div>
                  </div>
                  <div class="tab-pane fade" id="manage-contact" role="tabpanel">
                      <div class="iq-card">
                          <div class="iq-card-header d-flex justify-content-between">
                              <div class="iq-header-title">
                                  <h4 class="card-title">Manage Contact</h4>
                              </div>
                          </div>
                          <div class="iq-card-body">
                              <form>
                                  <div class="form-group">
                                      <label for="cno">Contact Number:</label>
                                      <input type="text" class="form-control" id="cno" value="001 2536 123 458">
                                  </div>
                                  <div class="form-group">
                                      <label for="email">Email:</label>
                                      <input type="text" class="form-control" id="email" value="Barryjone@demo.com">
                                  </div>
                                  <div class="form-group">
                                      <label for="url">Url:</label>
                                      <input type="text" class="form-control" id="url" value="https://getbootstrap.com">
                                  </div>
                                  <button type="submit" class="btn btn-primary mr-2">Submit</button>
                                  <button type="reset" class="btn iq-bg-danger">Cancel</button>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      </div>
      </div>
      </div>
      </div>
   </div>
        <!-- Sign in END -->
         <!-- color-customizer -->
       <div class="iq-colorbox color-fix">
           <div class="buy-button"> <a class="color-full" href="#"><i class="fa fa-spinner fa-spin"></i></a> </div>
           <div class="clearfix color-picker">
               <h3 class="iq-font-black">Booksto Awesome Color</h3>
               <p>This color combo available inside whole template. You can change on your wish, Even you can create your own with limitless possibilities! </p>
               <ul class="iq-colorselect clearfix">
                   <li class="color-1 iq-colormark" data-style="color-1"></li>
                   <li class="color-2" data-style="iq-color-2"></li>
                   <li class="color-3" data-style="iq-color-3"></li>
                   <li class="color-4" data-style="iq-color-4"></li>
                   <li class="color-5" data-style="iq-color-5"></li>
                   <li class="color-6" data-style="iq-color-6"></li>
                   <li class="color-7" data-style="iq-color-7"></li>
                   <li class="color-8" data-style="iq-color-8"></li>
                   <li class="color-9" data-style="iq-color-9"></li>
                   <li class="color-10" data-style="iq-color-10"></li>
                   <li class="color-11" data-style="iq-color-11"></li>
                   <li class="color-12" data-style="iq-color-12"></li>
                   <li class="color-13" data-style="iq-color-13"></li>
                   <li class="color-14" data-style="iq-color-14"></li>
                   <li class="color-15" data-style="iq-color-15"></li>
                   <li class="color-16" data-style="iq-color-16"></li>
                   <li class="color-17" data-style="iq-color-17"></li>
                   <li class="color-18" data-style="iq-color-18"></li>
                   <li class="color-19" data-style="iq-color-19"></li>
                   <li class="color-20" data-style="iq-color-20"></li>
               </ul>
               <a target="_blank" class="btn btn-primary d-block mt-3" href="">Purchase Now</a>
           </div>
       </div>
       <!-- color-customizer END -->
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="${path}/resources/js/jquery.min.js"></script>
      <script src="${path}/resources/js/popper.min.js"></script>
      <script src="${path}/resources/js/bootstrap.min.js"></script>
      <!-- Appear JavaScript -->
      <script src="${path}/resources/js/jquery.appear.js"></script>
      <!-- Countdown JavaScript -->
      <script src="${path}/resources/js/countdown.min.js"></script>
      <!-- Counterup JavaScript -->
      <script src="${path}/resources/js/waypoints.min.js"></script>
      <script src="${path}/resources/js/jquery.counterup.min.js"></script>
      <!-- Wow JavaScript -->
      <script src="${path}/resources/js/wow.min.js"></script>
      <!-- lottie JavaScript -->
      <script src="${path}/resources/js/lottie.js"></script>
      <!-- Apexcharts JavaScript -->
      <script src="${path}/resources/js/apexcharts.js"></script>
      <!-- Slick JavaScript -->
      <script src="${path}/resources/js/slick.min.js"></script>
      <!-- Select2 JavaScript -->
      <script src="${path}/resources/js/select2.min.js"></script>
      <!-- Owl Carousel JavaScript -->
      <script src="${path}/resources/js/owl.carousel.min.js"></script>
      <!-- Magnific Popup JavaScript -->
      <script src="${path}/resources/js/jquery.magnific-popup.min.js"></script>
      <!-- Smooth Scrollbar JavaScript -->
      <script src="${path}/resources/js/smooth-scrollbar.js"></script>
      <!-- Style Customizer -->
      <script src="${path}/resources/js/style-customizer.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="${path}/resources/js/chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="${path}/resources/js/custom.js"></script>
<script type="text/javascript">
    let idchk = false;
    $(function() {

        let userId = "";
        let idchk = false;
        $("#idcheck_btn")
            .click(
                function() { //회원가입 페이지에서 아이디 중복체크라는 버튼에 마우스가 올라갔을 때 호출되는 무명함수.
                    $("#idcheck").hide(); //span테그 영역을 숨겨라.
                    let userId = $("#user_id").val(); //member_id의 value값을 뽑아와라.

                    if ($.trim($("#user_id").val()).length < 4) {

                        let warningTxt = '<font color="red">아이디는 4자 이상이어야 합니다.</font>';
                        $("#idcheck").text(""); //span 테그 영역 초기화.
                        $("#idcheck").show();
                        $("#idcheck").append(warningTxt);
                        $("#user_id").val('').focus();//span 테그 영역 초기화.
                        return false;

                    }

                    if ($.trim($("#user_id").val()).length > 16) {

                        let warningTxt = '<font color="red">아이디는 16자 이하이어야 합니다.</font>';
                        $("#idcheck").text(""); //span 테그 영역 초기화.
                        $("#idcheck").show();
                        $("#idcheck").append(warningTxt);
                        $("#member_id").val('').focus();//span 테그 영역 초기화.
                        return false;

                    }

                    //닉네임 중복 여부 확인
                    $(document).ready(function() {
                        $("#idcheck_btn").click(function() {
                            var userId = $("#user_id").val();

                            $.ajax({
                                type: "post",
                                url: "user.join.chk.go",
                                data: {
                                    paramId: userId
                                },
                                dataType: "json",
                                success: function(data) {
                                    if (data == -1) { // 아이디가 중복되는 경우
                                        let warningTxt = '<font color="red">중복 아이디입니다.</font>';
                                        $("#idcheck").html(warningTxt);
                                        $("#idcheck").show();
                                        idchk = false;
                                    } else { // 아이디가 중복되지 않는 경우
                                        let warningTxt = '<font color="green">사용 가능한 아이디입니다.</font>';
                                        $("#idcheck").html(warningTxt);
                                        $("#idcheck").show();
                                        idchk = true;
                                    }
                                },
                                error: function(data) {
                                    alert("통신 오류");
                                }
                            });
                        });
                    });

                });
    });

    function checkAll() {
        // 이름 필드 유효성 검사
        var userName = document.getElementById('user_name').value;
        if (userName === '') {
            alert('이름을 입력해주세요.');
            return false;
        }

        // 이메일 필드 유효성 검사
        var userEmail = document.getElementById('user_email').value;
        if (userEmail === '') {
            alert('이메일을 입력해주세요.');
            return false;
        }

        // 아이디 필드 유효성 검사
        var userId = document.getElementById('user_id').value;
        if (userId === '') {
            alert('아이디를 입력해주세요.');
            return false;
        }

        // 비밀번호 필드 유효성 검사
        var userPwd = document.getElementById('user_pwd').value;
        if (userPwd === '') {
            alert('비밀번호를 입력해주세요.');
            return false;
        }

        // 닉네임 필드 유효성 검사
        var userNickname = document.getElementById('user_nickname').value;
        if (userNickname === '') {
            alert('닉네임을 입력해주세요.');
            return false;
        }

        // 연락처 필드 유효성 검사
        var userPhone = document.getElementById('user_phone').value;
        if (userPhone === '') {
            alert('연락처를 입력해주세요.');
            return false;
        }

        // 직업 필드 유효성 검사
        var userJob = document.getElementById('user_job').value;
        if (userJob === '') {
            alert('직업을 입력해주세요.');
            return false;
        }

        // 주소 필드 유효성 검사
        var userAddr = document.getElementById('user_addr').value;
        if (userAddr === '') {
            alert('주소를 입력해주세요.');
            return false;
        }

        // 소개글 필드 유효성 검사
        var userIntro = document.getElementById('user_intro').value;
        if (userIntro === '') {
            alert('소개글을 입력해주세요.');
            return false;
        }

        // 프로필 필드 유효성 검사
        var profileImg = document.getElementById('img').value;
        if (profileImg === '') {
            alert('프로필 이미지를 선택해주세요.');
            return false;
        }

        return true;
    }


</script>
<%@ include file="footer.jsp"%>