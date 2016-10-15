<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/jquery-3.1.0.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>    
           <script src="js/angular.min.js"></script>
    
   <title>Trang Admin Xem/Nhập Thông Tin</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>
    
<script>
    var demoApp = angular.module('demoApp',[])
    .controller( "RegisterCtrl",['$scope', function($scope) {
        $scope.success=false;
        $scope.register = function(){
            $scope.success=true;
        }
    }]);
</script>
  <style>
img {
    width: 100%;
    height: auto;
}
body {
    background-image: url("img/bkg3.jpg");
}
</style>
</head>
<body>
    <jsp:include page= "HeaderAD.jsp"></jsp:include>
<div class="row"> 
   <div class="container">
        <div class="item col-md-5 col-sm-3 col-xs-6">
            <span class="label label-primary" style="font-size:15px">Nhập thông tin Giảng Viên</span>
            <br>
            <br>

            <div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
                <form class="form-horizontal" name="form" ng-submit="register()" novalidate>
                      <div class="form-group">
                           <label for="ID" class="col-xs-4 control-label required">Mã giảng viên</label>
                            <div class="col-md-7">
                                <input name="ID" type="text" class="form-control" placeholder="Mã giảng viên" ng-model="ID" autocomplete="off" required >
                                <i class="fa fa-check text-success" ng-show="form.ID.$dirty && form.ID.$valid"></i>
                                <div ng-show="form.ID.$dirty && form.ID.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                                    <span ng-show="form.ID.$error.required">Bạn chưa nhập ID</span>
                                     <span ng-show="form.ID.$error.name">ID không được bỏ trống</span>
                              </div>
                            </div>
                      </div>
                      <div class="form-group">
                         <label for="name" class="col-md-4 control-label required">Tên giảng viên:</label>
                         <div class="col-md-7">
                              <input name="name" type="text" class="form-control" placeholder="Tên giảng viên" ng-model="name" autocomplete="off" required >
                              <i class="fa fa-check text-success" ng-show="form.name.$dirty && form.name.$valid"></i>
                              <div ng-show="form.name.$dirty && form.name.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                                 <span ng-show="form.fullname.$error.pattern">Họ tên chỉ bao gồm các kí tự chữ cái</span>
                                  <span ng-show="form.name.$error.required">Tên giảng viên không được bỏ trống</span>
                                  <span ng-show="form.name.$error.name">Bạn chưa nhập tên giảng viên</span>
                                  <span ng-show="form.name.$error.minlength">tên giảng viên phải dài hơn 6 kí tự</span>
                                   <span ng-show="form.name.$error.maxlength">tên giảng viên phải ngắn hơn 50 kí tự</span>
                              </div>
                          </div>
                      </div>
                      <div class="form-group">
                         <label for="cn" class="col-xs-4 control-label required">Chuyên ngành:</label>
                         <div class="col-md-7">
                              <input name="cn" type="text" class="form-control" placeholder="chuyên ngành" ng-model="cn" autocomplete="off" required >
                              <i class="fa fa-check text-success" ng-show="form.cn.$dirty && form.cn.$valid"></i>
                              <div ng-show="form.cn.$dirty && form.cn.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                                  <span ng-show="form.cn.$error.required">Bạn chưa nhập chuyên ngành</span>
                                  <span ng-show="form.cn.$error.cn">chuyên ngành không được bỏ trống</span>
                              </div>
                        </div>
                      </div>
                       <br>

                     <div class="form-group">
                        <div class="col-sm-offset-7 col-xs-9">
                            <button type="save" class="btn btn-defaut" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)"><h style=color:blue>lưu</h></button>
                        </div>
                     </div>
            </form>
      <script>
          var demoApp = angular.module('demoApp',[])
          .controller( "RegisterCtrl",['$scope', function($scope) {
              $scope.success=false;
              $scope.register = function(){
                  $scope.success=true;
              }
          }]);
      </script>
    </div>
  </div>     
    <div class="sidebar col-md-7 col-sm-4 col-xs-12">
              <div class="sidebar-item">
                 <span class="label label-primary" style="font-size:15px">Danh sách giảng viên</span>
                    <div class="col-md-offset- ">
                 
                <table class="table table-bordered">
                  <thead>
                    <tr>
                    <th>STT</th>
                      <th>Mã GV</th>
                      <th>Tên GV</th>
                      <th>Chuyên ngành</th>
                    </tr>
                    <tr>
                    <td>01</td>
                      <td> 01</td>
                      <td> Nguyễn Văn A</td>
                      <td> Công Nghệ phần mềm</td>
              
                     </tr>
                      <tr>
                    <td>01</td>
                      <td> 01</td>
                      <td> Nguyễn Văn A</td>
                      <td> Công Nghệ phần mềm</td>
                   
                     </tr>
                       <tr>

                    <td>01</td>
                      <td> 01</td>
                      <td> Nguyễn Văn A</td>
                      <td> Công Nghệ phần mềm</td>
              
                     </tr>
                       <tr>
                    <td>01</td>
                      <td> 01</td>
                      <td> Nguyễn Văn A</td>
                      <td> Công Nghệ phần mềm</td>
                   
                     </tr>
                       <tr>
                    <td>01</td>
                      <td> 01</td>
                      <td> Nguyễn Văn A</td>
                      <td> Công Nghệ phần mềm</td>
                  
                     </tr>
                       <tr>
                    <td>01</td>
                      <td> 01</td>
                      <td> Nguyễn Văn A</td>
                      <td> Công Nghệ phần mềm</td>
                 </tr>
                  </thead>
                </table>
              </div>
         </div>
    </div>
</div>
</div>
<div class="row"> 
     <div class="container">
       <div class="item col-md-5 col-sm-3 col-xs-6">
         <span class="label label-primary"><h style="font-size:15px">Nhập thông tin Đề tài</span>

        <br>
        <br>

        <div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
              <form class="form-horizontal" name="form" ng-submit="register()" novalidate>
                   <div class="form-group">
                      <label for="tendetai" class="col-xs-4 control-label required">Tên đề tài:</label>
                      <div class="col-md-7">
                          <input name="tendetai" type="text" class="form-control" placeholder="Tên đề tài" ng-model="tendetai" autocomplete="off" required >
                          <i class="fa fa-check text-success" ng-show="form.tendetai.$dirty && form.tendetai.$valid"></i>
                          <div ng-show="form.tendetai.$dirty && form.tendetai.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                              <span ng-show="form.tendetai.$error.required">Bạn chưa nhập tên đề tài</span>
                               <span ng-show="form.tendetai.$error.tendetai">Tên đề tài không được bỏ trống</span>
                        </div>
                      </div>
                    </div>
                     <div class="form-group">
                                <label for="name" class="col-md-4 control-label required">GVHD:</label>
                                <div class="col-md-7">
                                     <input name="name" type="text" class="form-control" placeholder="Họ tên GVHD" ng-model="name" autocomplete="off" required >
                                     <i class="fa fa-check text-success" ng-show="form.name.$dirty && form.name.$valid"></i>
                                    <div ng-show="form.name.$dirty && form.name.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                                        <span ng-show="form.fullname.$error.pattern">Họ tên chỉ bao gồm các kí tự chữ cái</span>
                                         <span ng-show="form.name.$error.required">Tên giảng viên không được bỏ trống</span>
                                         <span ng-show="form.name.$error.name">Bạn chưa nhập tên giảng viên</span>
                                         <span ng-show="form.name.$error.minlength">tên giảng viên phải dài hơn 6 kí tự</span>
                                          <span ng-show="form.name.$error.maxlength">tên giảng viên phải ngắn hơn 50 kí tự</span>
                                      </div>
                                    </div>
                      </div>
        </div>
</div>
</div>
</div>      

</body>
</html>