<%controller(FP_WorkFlow.Controller.*) %>
<%using(FangPage.WMS.Model) %>
<%using(FangPage.WMS.Bll) %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>表单处理</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>
<meta name="renderer" content="webkit"/>
<link type="text/css" href="${plupath}/bootstrap/css/bootstrap.css" rel="stylesheet"/>
<link type="text/css" href="${plupath}/bootstrap/css/bootstrap-notify.css" rel="stylesheet"/>
<link type="text/css" href="${plupath}/bootstrap/css/bootstrap-modal.css" rel="stylesheet"/>
<link type="text/css" href="${plupath}/bootstrap/css/bootstrap-file-selector.css" rel="stylesheet"/>
<link type="text/css" href="${plupath}/bootstrap/css/icomoon.css" rel="stylesheet"/>
<script type="text/javascript" src="${plupath}/jquery/jquery.js"></script>
<script type="text/javascript" src="${plupath}/nicescroll/jquery.nicescroll.js"></script>
<script type="text/javascript" src="${plupath}/bootstrap/js/bootstrap.bootbox.min.js"></script>
<script type="text/javascript" src="${plupath}/bootstrap/js/bootstrap.notify.js"></script>
<script type="text/javascript" src="${plupath}/bootstrap/js/bootstrap-prompts.js"></script>
<script type="text/javascript" src="${plupath}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${plupath}/bootstrap/js/bootstrap-modal.js"></script>
<script type="text/javascript" src="${plupath}/bootstrap/js/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="${plupath}/multifile/jquery.multifile.js"></script>
<script type="text/javascript" src="${plupath}/jform/jquery.form.js"></script>
<script type="text/javascript" src="${plupath}/modernizr/modernizr-2.6.1.min.js"></script>
<script type="text/javascript" src="/oa/public/js/util.js"></script>
<script type="text/javascript" src="/oa/public/js/form.js"></script>
<script type="text/javascript" src="/oa/public/js/attachment.js"></script>
<script type="text/javascript" src="${plupath}/webuploader/webuploader.min.js"></script>
<link type="text/css" href="${plupath}/webuploader/webuploader.css" rel="stylesheet" >
<link type="text/css" href="/oa/public/css/fp-bootstrap.css" rel="stylesheet"/>
<link type="text/css" href="${plupath}/kindeditor/themes/default/default.css" rel="stylesheet"/>
<script type="text/javascript" src="${plupath}/kindeditor/kindeditor-min.js"></script>
<script type="text/javascript" src="${plupath}/kindeditor/lang/zh_CN.js"></script>
<link href="${plupath}/layer/skin/layer.css"  type="text/css" id="skinlayercss" rel="stylesheet"/>
<script type="text/javascript" src="${plupath}/layer/layer.js"></script>
<script type="text/javascript">
    var Operation = {
        save: function () {
            formUtils.formSave();
        }
    };
    var QuickInput = function (content) {
        content = $("#comment").val() + content;
        KindEditor.instances[0].html(content);
        $("#comment").val(content);
    };

    KindEditor.lang({
        sign: '签名'
    });
    KindEditor.lang({
        runi: '如拟'
    });
    KindEditor.lang({
        tongyi: '同意'
    });
    KindEditor.lang({
        yiyue: '已阅'
    });

    $(function () {
        KindEditor.create('#comment', {
            resizeType: 0,
            filterMode: false,
            minWidth: "300px",
            minHeight: "80px",
            items: [],
            afterBlur: function () { this.sync(); }
        });
        KindEditor.create('.EDITOR-MINI', {
            resizeType: 0,
            filterMode: false,
            minWidth: "300px",
            minHeight: "80px",
            items: ['sign', 'yiyue', 'tongyi', 'runi'],
            afterBlur: function () { this.sync(); }
        });
        $(window).resize(function () {
            var height = $(window).height();
            $("#container-scroller").height(height);
            $("#container-scroller").niceScroll({ cursorcolor: "#ccc", cursoropacitymin: 1, cursorwidth: 8 });
            <%if action=="comment"%>
            $("#container-scroller").getNiceScroll(0).doScrollTop(height, 1);
            <%/if%>
        });
        $(window).trigger("resize");
    });
</script>
<style type="text/css">
    a:link {
	    color: #6d6d6d;
	    text-decoration: none;
    }
    img {
	    border:0px
    }
    textarea {
	    outline: none;
    }
    a {
	    color:#4f4f4f;
	    text-decoration:none
    }
    ul, li {
	    list-style:none;
	    margin:0;
	    padding:0;
    }
    .content-remark{
        border: 1px solid #58C697;
        width:800px;
        margin:10px auto;
        height: auto;
        background-color: #fff;
    }
    .remark-block{
        background: url(statics/images/remark-title.jpg) no-repeat left top;
        position: relative;
        text-align: left;
        padding-left: 40px;
        height: 60px;
        font-size: 16px;
        line-height: 60px;
        font-weight: bold;
    }
    .remark-title {
       padding-left: 0px;
       color: #58C697;
    }
    .comment_list {
        width:100%;
    }
    .comment_list .msg_face, .comment_list .discussion_bubble_content {
        float: left;
    }
    .comment_list .comment_header {
        height: 33px;
        padding: 0 10px 0 6px;
        border-bottom: 1px solid #ccc;
        background-color: #e1e1e1;
        background-image: -moz-linear-gradient(#f8f8f8, #e1e1e1);
        background-image: -webkit-linear-gradient(#f8f8f8, #e1e1e1);
        background-image: linear-gradient(#f8f8f8, #e1e1e1);
        background-repeat: repeat-x;
        font-size: 12px;
    }
    .comment_list .discussion_bubble_content {
        padding: 3px;
        background: #eee;
        border-radius: 3px;
        width: 90%;
        float: left;
        margin-left: 18px;
    }
    .comment_list .discussion_bubble_content .discussion_bubble_inner{
        min-height: 32px;
        border: 1px solid #CACACA;
        background-color: #fff;position: relative;}
    .comment_list .discussion_bubble_content .discussion_bubble_inner .comment_header_task{
        max-width: 600px;
        float: left;
        line-height: 33px;
        font-weight: bold;
        font-size: 14px;
        color: #222;
        text-shadow: 1px 1px 0 rgba(255,255,255,0.7);
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        margin-right: 5px;
    }
    .comment_list .discussion_bubble_content .discussion_bubble_inner .comment_header_author{
        max-width: 600px;
        float: left;
        line-height: 33px;
        font-weight: bold;
        color: #222;
        text-shadow: 1px 1px 0 rgba(255,255,255,0.7);
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;}
    .comment_list .discussion_bubble_content .discussion_bubble_inner .comment_header_date{
        float:right;
        display: inline-block;
        margin: 0;
        height: 33px;
        font-size: 12px;
        line-height: 33px;
        font-style: normal;
        color: #777;
        text-shadow: 1px 1px 0 rgba(255,255,255,0.7);
        line-height: 33px;
    }
    .comment_list .discussion_bubble_content .discussion_bubble_inner .comment_content{
        padding: 10px;
    }
    .arrow {
        top:20px;
        position: absolute;
        margin: 0 0 0;
        margin: -1px 0 0/9;
        width: 19px;
        cursor: default;
    }

    .arrow * {
        font-family: "SimSun";
        overflow: hidden;
        font-size: 30px;
        line-height:40px;
        display: block;
        height: 40px;
    }
    .arrow em{
        color: #eee;
        font-style: normal;
        font-weight: normal;
    }
    .arrow span {
        color: #eee;
        margin: -12px 0 0 -1px;
    }
    .comment_box .arrow {
        left: -20px;
    }
    .comment_box .arrow span{
        margin-left:1px;
    }
     /* lch 2017-7-7 */
    .th {
        background-color:#edf2f3;
        /*#d6e1e4  rgb(239, 240, 245)*/
    }
    input {
	height: 30px;
	border: 0;
	border: 1px #ccc solid;
	padding-left: 5px;
	padding-right: 5px;
	border-radius: 4px;
    }
    input:focus {
	    height: 30px;
	    border: 1px #8ab7ed solid;
	    border-radius: 4px;
	    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);
	    -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);
	    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);
    }
    .ke-icon-sign
    {
        background-image: url(${plupath}/kindeditor/themes/default/icon_sign.png);
        width: 32px;
        height: 20px;
    }
    .ke-icon-runi
    {
        background-image: url(${plupath}/kindeditor/themes/default/icon_runi.png);
        width: 32px;
        height: 20px;
    }
    .ke-icon-tongyi
    {
        background-image: url(${plupath}/kindeditor/themes/default/icon_tongyi.png);
        width: 32px;
        height: 20px;
    }
    .ke-icon-yiyue
    {
        background-image: url(${plupath}/kindeditor/themes/default/icon_yiyue.png);
        width: 32px;
        height: 20px;
    }
</style>
</head>
<body style="overflow: hidden; ">
    <div id="container-scroller">
        <form enctype="multipart/form-data" id="frmpost" name="frmpost" action="" method="post">
        <input id="txtUser" type="hidden" value="${realname}" />
        <input id="txtDate" type="hidden" value='${fmdate(datetime,"yyyy年MM月dd日")}' />
        <div class="divTable">
            <input id="action" name="action" value="form" type="hidden" />
            <input id="id" name="id" value="${id}" type="hidden" />
            ${forminfo.content}
        </div>
        </form>
        <%if workflowinfo.isback==-1 %>
        <div style="width:800px;margin:0px auto;">
            <span style="font-weight:bold;color:#db3600">回退原因：${workflowinfo.content}</span>
        </div>
        <%/if %>
        <div class="content-remark">
            <div class="remark-block">
                <span class="remark-title" >会签意见区</span>
            </div>
            <div style="margin-left:10px;">
                <%loop (CommentInfo) item commentlist %>
                <div class="comment_list">
                  <dl class="T_linecolor  comment_box clearfix" style="margin:10px 0">
                    <dt class="msg_face"><img src="/${item.avatar}" width="50" height="50"> </dt>
                    <dd class="discussion_bubble_content">
                      <div class="discussion_bubble_inner">
                        <div class="R_msg">
                          <div class="private_operate clearfix">
                            <div class="comment_header">
                              <div class="comment_header_task">第${item.step}步：${item.stepname}</div>
                              <div class="comment_header_author" title="部门：${item.departname}" >${item.realname}/${item.title}</div>
                              <div class="comment_header_date" style="float:right;">${fmdate(item.postdatetime,"yyyy-MM-dd HH:mm")}</div>
                            </div>
                            <%set List<AttachInfo> attachlist=AttachBll.GetAttachList(item.attachid) %>
                            <div class="comment_content">${item.content}
                                <%if attachlist.Count>0 %>
                                   <br />附件：
                                   <%loop (AttachInfo) attr attachlist%>
                                   <div class="attachment-wrapper" id="attachment_${attr.id}">
                                       <div class="dropdown clearfix">
                                       <a class="dropdown-toggle" href="${plupath}/pdf/index.aspx?aid=${attr.id}"><img src="${webpath}/common/file/${FormatExt(attr.filename)}.gif" />${attr.name}</a>
                                       <ul class="dropdown-menu">
                                           <li><a href="${plupath}/attach/download.aspx?aid=${attr.id}">下载</a></li>
                                           <li><a target="_blank" href="${plupath}/pdf/index.aspx?aid=${attr.id}">阅读</a></li>
                                       </ul>
                                       </div>
                                   </div>
                                   <%/loop %>
                                <%/if %>
                            </div>
                          </div>
                        </div>
                        <div class="arrow"><span>◆</span></div>
                      </div>
                    </dd>
                  </dl>
                </div>
             <%/loop %>
             <%if workflowinfo.status<=2 %>
            <div class="comment_list">
              <dl class="T_linecolor  comment_box clearfix">
                <dt class="msg_face"><img src="/${workflowinfo.receive_avatar}" width="50" height="50"> </dt>
                <dd class="discussion_bubble_content">
                  <div class="discussion_bubble_inner">
                    <div class="comment_content">
                      <form style="margin:0px;" id="frmcomment" name="frmcomment" action="" method="post" enctype="multipart/form-data">
                        <input type="hidden" id="action_comment" name="action" value="comment" />
                        <label for="comment" class="required">第${workflowinfo.step}步：${workflowinfo.stepname}&nbsp;&nbsp;我的意见/${workflowinfo.isadmin_show}</label>
                        <textarea id="comment" name="comment" style="width:686px;height:80px">${commentinfo.content}</textarea>
                        <label style="width:100px;" class="required">
                            <div>
                               <a class="btn btn-link file-selector">
                                    <i class="icon-file-upload"></i>上传附件
                                    <div class="MultiFile-wrap">
                                    <input name="addfile" id="addfile" type="file" class="multi-pt" value=""/>
                                    </div>
                                </a>
                                <div id="file-container2"></div>
                                   <%loop (AttachInfo) attr AttachBll.GetAttachList(commentinfo.attachid) %>
                                   <div class="attachment-wrapper" id="attachment_${attr.id}">
                                       <div class="dropdown clearfix">
                                       <a class="dropdown-toggle" href="${plupath}/pdf/index.aspx?aid=${attr.id}"><img src="${webpath}/common/file/${FormatExt(attr.filename)}.gif" />${attr.name}</a>
                                       <ul class="dropdown-menu">
                                           <li><a href="${plupath}/attach/download.aspx?aid=${attr.id}">下载</a></li>
                                           <li><a target="_blank" href="${plupath}/pdf/index.aspx?aid=${attr.id}">阅读</a></li>
                                       </ul>
                                       </div>
                                   </div>
                                   <%/loop %>
                            </div>
                        </label>
                      </form>
                      <button id="btn_quick" class="btn btn-primary" name="btn_quick" type="button">快捷输入</button>
                      <button id="submitComment" class="btn btn-danger" name="submitComment" type="button">保存我的意见和附件</button>
                      <%if workflowinfo.isadmin==0&&workflowinfo.status<=1 %>
                      <div style="float:right;"><a style="margin-right:3px;" class="btn btn-warning" id="btn_end">办理完毕</a></div>
                      <%/if %>
                    </div>
                    <div class="arrow"><span>◆</span></div>
                  </div>
                </dd>
              </dl>
            </div>
            <%/if %>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            var uploader = WebUploader.create({
                // 选完文件后，是否自动上传。  
                auto: true,
                // swf文件路径  
                swf: '${plupath}/webupload/Uploader.swf',
                // 文件接收服务端。  
                server: '${plupath}/attach/upload.aspx',
                formData: { 'attachid': '${workflowinfo.attachid}', 'status': '1', 'app': '${setupinfo.markup}', 'postid': '${workflowinfo.id}' },
                // 选择文件的按钮。可选。  
                // 内部根据当前运行是创建，可能是input元素，也可能是flash.  
                pick: '#picker',
                method: 'POST'
            });

            // 当有文件被添加进队列的时候
            uploader.on('fileQueued', function (file) {
                $("#thelist").append('<div id="' + file.id + '" class="uploadify-queue-item">' +
                    '<div class="cancel">' +
                    '<a href="javascript:$(\'#' + file.id + '\').uploadify(\'cancel\', \'' + file.id + '\')">X</a>' +
                    '</div>' +
                    '<span class="fileName">' + file.name + '</span><span class="data"></span>' +
                    '<div class="uploadify-progress">' +
                        '<div class="uploadify-progress-bar"></div>' +
                    '</div>' +
                '</div>');
            });

            // 文件上传过程中创建进度条实时显示。
            uploader.on('uploadProgress', function (file, percentage) {
                var $li = $('#' + file.id),
                    $percent = $li.find('.uploadify-progress .uploadify-progress-bar');
                $percent.css('width', percentage * 100 + '%');
            });

            //当文件上传成功后
            uploader.on('uploadSuccess', function (file, response) {
                var html = "<div class=\"attachment-wrapper\" id=\"attachment_" + response.aid + "\">";
                html += "<div class=\"dropdown clearfix\">";
                html += "<a class=\"dropdown-toggle\" href=\"${plupath}/pdf/index.aspx?aid=" + response.aid + "\"><img src=\"${webpath}/common/file/" + response.filetype + ".gif\" />" + response.name + "</a><span class=\"size\">(" + response.size + ")</span>";
                html += "<ul class=\"dropdown-menu\">";
                html += "<li><a href=\"${plupath}/attach/download.aspx?aid=" + response.aid + "\">下载</a></li>";
                html += "<li><a target=\"_blank\" href=\"${plupath}/pdf/index.aspx?aid=" + response.aid + "\">阅读</a></li>";
                html += "<li><a target=\"_blank\" href=\"${plupath}/ntko/index.aspx?aid=" + response.aid + "\">编辑</a></li>";
                html += "<li><a onclick=\"javascript:Attachment.deleteAttach('${plupath}/attach/delete.aspx?aid=" + response.aid + "');return false;\" href=\"#\">删除</a></li>";
                html += "</div>";
                html += "</div>";
                $("#file-container").append(html);
            });

            uploader.on('uploadError', function (file) {
                alert('上传文件出错');
            });

            uploader.on('uploadComplete', function (file) {
                $('#' + file.id).fadeOut();
            });

            $("#submitComment").live("click", function () {
                $("#frmcomment").submit();
            });

            $("#btn_end").live("click", function () {
                if (parent.Operation !== undefined) {
                    parent.Operation.turnend();
                }
            });

            $("#btn_quick").live("click", function () {
                $.layer({
                    type: 2,
                    shade: [0],
                    fix: false,
                    title: '会签快捷输入',
                    maxmin: false,
                    iframe: { src: 'signlist.aspx' },
                    area: [500, 450]
                });
            });

            $('#addfile').MultiFile({
                'accept': '${AttachBll.GetAttachTypeString()}',
                'list': '#file-container2',
                'STRING': {
                    'remove': '<i class=\"icon-file-remove-2\" rel=\"tooltip\" title=\"移除文件\"><\/i>',
                    'selected': '文件：$file',
                    'denied': '禁止上传扩展名为$ext的文件',
                    'duplicate': '您已经选择了这个文件，请勿重复选择：$file'
                }
            });

            $(".MultiFile-remove").live("click", function () {
                $(this).parent().remove();
            });
        })
    </script>
</body>
</html>