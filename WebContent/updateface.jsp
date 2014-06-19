<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上传头像</title>
<link rel="stylesheet" href="css/jquery.Jcrop.css" />
<link rel="stylesheet" href="css/main.min.css" />
<link rel="stylesheet" href="css/page.min.css" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery.Jcrop.js"></script>
<script type="text/javascript" src="js/common.js"></script>
</head>
<body >
    <jsp:include page="header.jsp"></jsp:include>
  <div class="contentBox">
   <div class="contentBox-inner">
      <div class="titleBar">
         <h2>修改头像</h2>
      </div>
      <div id="settingBox" data-page="face" class="mainBox">
         <div class="uploadAvatar js-setting">
            <div class="uploadAvatar-tipsBox">
                              <!--
               <p class="mess-tips-close hidden js-errorTips">
                  <span class="js-text"></span>
               </p>
               -->
                              <p class="mess-tips-close js-tips hidden" data-status="1">
                  <a class="icon-close close-trigger" href="javascript:;"></a><span>您的形象照成功上传，我们会在1个小时（夜间审核需要8小时）内审核您的形象照。</span>
               </p>
                                             <div class="uploadAvatar-tips">
                  <dl class="text-gray">
                     <dt>请上传清晰美观的个人近照，给别人留下美好的第一印象。</dt>
                     <dd>支持jpg、gif、png格式，单张照片在10k-8M之间；<span class="uploadAvatar-common-tips">正方形图片，250*250像素显示最佳。</span></dd>
                     <dd>
                        如果无法上传图像，请尝试使用
                        <a class="uploadAvatar-advanced-link link-red advanced-trigger" href="javascript:;">高级上传模式</a>
                        <a class="uploadAvatar-common-link link-red normal-trigger" href="javascript:;">普通上传模式</a>
                     </dd>
                  </dl>
               </div>
            </div>
            <div class="uploadAvatar-exampleBox">
               <div class="uploadAvatar-example-wrong">
                  <p class="uploadAvatar-example-tips"><em class="icon-error-s"></em>错误示范</p>
                  <dl class="uploadAvatar-example-item1">
                     <dt></dt>
                     <dd class="text-gray">非本人照片</dd>
                  </dl>
                  <dl class="uploadAvatar-example-item2">
                     <dt></dt>
                     <dd class="text-gray">照片不清晰</dd>
                  </dl>
                  <dl class="uploadAvatar-example-item3">
                     <dt></dt>
                     <dd class="text-gray">非头部位置</dd>
                  </dl>
                  <dl class="uploadAvatar-example-item4">
                     <dt></dt>
                     <dd class="text-gray">裸露不文明</dd>
                  </dl>
               </div>
               <div class="uploadAvatar-example-right">
                  <p class="uploadAvatar-example-tips"><em class="icon-correct-s"></em>正确示范</p>
                  <dl>
                     <dt></dt>
                  </dl>
               </div>
            </div>
            <div id="avatarUpload" style="position: relative;">
	           <div class="uploadAvatar-flash avatarCropper-big js-advanced">
				 <OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"
					WIDTH="650" HEIGHT="450" id="myMovieName">
					<PARAM NAME=movie VALUE="swf/avatar.swf">
					<PARAM NAME=quality VALUE=high>
					<PARAM NAME=bgcolor VALUE=#FFFFFF>
					<param name="flashvars" value="imgUrl=img/default.jpg&uploadUrl=upfile.jsp&uploadSrc=false" />
					<EMBED src="swf/avatar.swf" quality=high bgcolor=#FFFFFF WIDTH="650" HEIGHT="450" wmode="transparent" flashVars="imgUrl=upload/avatar/${user.getId() }/${user.getId() }_162.jpg&uploadUrl=upfile.jsp&uploadSrc=false"
					NAME="myMovieName" ALIGN="" TYPE="application/x-shockwave-flash" allowScriptAccess="always"
					PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer">
					</EMBED>
				  </OBJECT>
	           </div>
	           <div id="avatar_priview"></div>
            </div>
			 <script type="text/javascript" language="javascript">
				   function uploadevent(status,picUrl,callbackdata){
				  //alert(picUrl); //后端存储图片
				//	alert(callbackdata);
				        status += '';
				     switch(status){
				     case '1':
						var time = new Date().getTime();
						var filename162 = picUrl+'_162.jpg';
						var filename48 = picUrl+'_48.jpg';
						var filename20 = picUrl+"_20.jpg";
				        
						//document.getElementById('avatar_priview').innerHTML = "头像1 : <img src='"+filename162+"?" + time + "'/> <br/> 头像2: <img src='"+filename48+"?" + time + "'/><br/> 头像3: <img src='"+filename20+"?" + time + "'/>" ;
						window.location.replace("mainpage.jsp");
						window.location.reload();
					break;
				     case '-1':
					  window.location.reload();
				     break;
				     default:
				     window.location.reload();
				    } 
				   }
			</script>
         </div>
      </div>
   </div>
</div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>