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
              <div class="js-normal">
            	<div class="uploadAvatar-commonBox">
            		<div class="uploadAvatar-common-avatar">
            			<img class="js-avatar" src="http://imgsize.ph.126.net/?imgurl=http://img1.cache.netease.com/love/image/common/avatar/default_male_big.png_250x250x1x85.jpg">
            				<i class="uploadAvatar-image-middle">
            				</i>
            			    <div class="loadingBox loadingBox-s js-state">
            			    </div>
            	    </div>
            	    <div class="uploadAvatar-common-again">
            	    <a class="link-lightBlue uploadAgain-trigger" href="javascript:;">重新上传</a>
                </div>
                <div class="uploadAvatar-btn n-btn-box">
                	<div class="disabled">
                		<a class="btnB btn-red n-btn-sure submit-trigger" id="btn-commit" href="javascript:;">提交，完成</a>
                	</div>
               </div>
             </div>
           </div>
           <div class="uploadAvatar-flash avatarCropper-big js-advanced">
 	          <object type="application/x-shockwave-flash" data="http://static.t.126.net/frontend/flash/avatar/avatarCropperB_131210.swf" width="525" height="467" id="5de0" style="visibility: visible;">
 				<param name="flashvars" value="saveUrl=http://love.163.com/upload&amp;maxSize=8388608&amp;minSize=10240&amp;errAnalyse=true&amp;keyfrom=pS_face&amp;urlPic=http%3A%2F%2Fimgsize.ph.126.net%2F%3Fimgurl%3Dhttp%3A%2F%2Fimg1.cache.netease.com%2Flove%2Fimage%2Fcommon%2Favatar%2Fdefault_male_big.png_250x250x1x85.jpg&amp;saveBtnText=%E6%8F%90%E4%BA%A4%EF%BC%8C%E5%AE%8C%E6%88%90">
 				<param name="allowScriptAccess" value="always">
 				<param name="wmode" value="transparent">
 			  </object>
           </div>
               <div class="uploadAvatar-state" style="bottom: 8px;"><span class="text-icon-tips hidden js-errorTips"></span></div>
            </div>
         </div>
      </div>
   </div>
</div>

   
<script type="text/javascript" language="javascript">
(function(){_ntes_nacc="love";var a=document.createElement("script");a.type="text/javascript",a.readyState?a.onreadystatechange=function(){("loaded"===a.readyState||"complete"===a.readyState)&&(a.onreadystatechange=null,neteaseTracker(),neteaseClickStat())}:a.onload=function(){neteaseTracker(),neteaseClickStat(),a.onload=null},a.src="http://analytics.163.com/ntes.js",document.getElementsByTagName("head")[0].appendChild(a)})();
var _gaq=_gaq||[];_gaq.push(["_setAccount","UA1373358407458"],["_setLocalGifPath","/UA1373358407458/__utm.gif"],["_setLocalServerMode"]),_gaq.push(["_trackPageview"]),function(){var a=document.createElement("script");a.type="text/javascript",a.async=!0,a.src="http://wr.da.netease.com/ga.js";var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)}();
</script>  
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>