//以下是程序引用页面的定义
var editMScode="editoffice.aspx";//编辑MS OFFICE文档页面程序
var editWPScode="editwps.aspx";//编辑WPS文档页面程序
var savecode="save.aspx";//保存文档程序程序
var readcode="read.aspx";//读取后台二进制数据程序
var delcode="delete.aspx";//执行数据删除后台程序


//以下变量为JS公共变量
var TANGER_OCX_bDocOpen = false;
var TANGER_OCX_filename;//文件名称
var filetype;//文件类型
var savetype;//文件保存类型
var TANGER_OCX_actionURL; //For auto generate form fiields
var TANGER_OCX_OBJ; //控件对象
var TANGER_OCX_Username="匿名用户";//User Name
var TANGER_OCX_key="";//设置加载印章的key
var IsFileOpened;  //控件是否打开文档
var svisble=true;//印章显示状态
var url="";//初始化URL值
var newwin,newdoc;

//创建新的文档
function CreatNew(newofficetype)
{
    //根据传递文档类型参数新建文档
    switch(newofficetype)
    {
     case "1":
     openoffice(url,newofficetype)
     break
     case "2":
     openoffice(url,newofficetype)
     break
     case "3":
     openoffice(url,newofficetype)
     break
     case "4":
     openoffice(url,newofficetype)
     break
     case "5":
     openoffice(url,newofficetype)
     break
     default:
     openoffice(url,"1")
     break;
    }
}
function openoffice(url,newofficetype)
{
    window.open(editMScode+"?newofficetype="+newofficetype+"&url="+url,"editoffice","height=100%,width=100%,top=0,left=0,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
}
//当前表单不可编辑,当整个表单只读时调用
function FormDisabled(bool)
{ 
    var formid=document.forms.item(0)
    var elelength=formid.length;
    for (var i=0; i<elelength; i++)
    {formid.elements[i].disabled = bool;}
    //下面是控件标题栏,状态栏,工具栏,菜单栏不显示
    TANGER_OCX_OBJ.TitleBar=!bool;
    TANGER_OCX_OBJ.Statusbar=!bool;
    TANGER_OCX_OBJ.ToolBars=!bool;
    TANGER_OCX_OBJ.Menubar=!bool;
}
//示例程序帮助文档
function NtkoHelp()
{
    window.open("help.htm","help");
}
//编辑文档
function editoffice(url,newofficetype)
{
    TANGER_OCX_OBJ = document.all.item("TANGER_OCX");//;初始化控件对象
    //根据文档URL和newofficetype编辑文档,如果有url是编辑已有文档,如果为空根据newofficetype新建文档
    if( (typeof(url) != "undefined") && (url != "") )
	{	
	    var filename=document.all("filename").value;
		try{TANGER_OCX_OBJ.BeginOpenFromURL("uploadOfficeFile/"+filename);}catch(err){};
	}
    else
    {
        switch(newofficetype)
        {
            //新建文档
            case "1":
            TANGER_OCX_OBJ.CreateNew("word.document");//word文档
            break
            case "2":
            TANGER_OCX_OBJ.CreateNew("excel.sheet");//excel电子表格
            break
            case "3":
            TANGER_OCX_OBJ.CreateNew("PowerPoint.Show");//微软幻灯片
            break
            case "4":
            TANGER_OCX_OBJ.CreateNew("WPS.Document");//金山文档
            break
            case "5":
            TANGER_OCX_OBJ.CreateNew("ET.WorkBook");//金山电子表格
            break
            default:
            alert("文档编辑出错!")
            break
        }
    }
}
function intializePage(fileUrl)
{
	TANGER_OCX_OBJ=document.all("TANGER_OCX");
	TANGER_OCX_OpenDoc(fileUrl);
	if(!TANGER_OCX_OBJ.IsNTKOSecSignInstalled())
	{   
		document.all("addSecSignFromUrl").disabled = true;
		document.all("addSecSignFromLocal").disabled = true;
		document.all("addSecSignFromEkey").disabled = true;
		document.all("handSecSign").disabled = true;
	}
	if(!TANGER_OCX_OBJ.IsPDFCreatorInstalled())
	{
		document.all("savePdfTOUrl").disabled = true;
	}
}
//文档编辑页面关闭事件
function onPageClose()
{
    if(IsFileOpened)
    {
	    if(!TANGER_OCX_OBJ.ActiveDocument.Saved)
	    {
		    if(confirm( "文档修改过,还没有保存,是否需要保存?"))
		    {
			    saveFileToUrl();
		    }
	    }
	    window.opener.location.reload();
	}
}
function TANGER_OCX_OpenDoc(fileUrl)
{
    if(fileUrl!=null||fileUrl!="")
    {
	    TANGER_OCX_OBJ.BeginOpenFromURL(fileUrl);
	}
	else
	{
	alert("dd");
        TANGER_OCX_OBJ.BegingOpenFromURL("templateFile/newWordTemplate.doc")
    }
}
//设置文件是打开还是关闭
function setFileOpenedOrClosed(bool)
{
	IsFileOpened = bool;
	fileType = TANGER_OCX_OBJ.DocType ;
}
function trim(str)
{ //删除左右两端的空格
　　return str.replace(/(^\s*)|(\s*$)/g, "");
}
//保存office文档
function saveFileToUrl()
{
	var fileName =trim(document.all("filetitle").value);
	if(fileName.length==0){alert("请输入文件标题!");document.all("filetitle").focus();return false;}//判断文件标题输入域
	var result,filedot;
	if(IsFileOpened)
	{
		switch (TANGER_OCX_OBJ.doctype)
		{
			case 1:
				fileType = "Word.Document";
				filedot=".doc";
				break;
			case 2:
				fileType = "Excel.Sheet";
				filedot=".xls";
				break;
			case 3:
				fileType = "PowerPoint.Show";
				filedot=".ppt";
				break;
			case 4:
				fileType = "Visio.Drawing";
				filedot=".vso"
				break;
			case 5:
				fileType = "MSProject.Project";
				filedot=".pro";
				break;
			case 6:
				fileType = "WPS Doc";
				filedot=".wps";
				break;
			case 7:
				fileType = "Kingsoft Sheet";
				filedot=".et";
				break;
			default :
				fileType = "unkownfiletype";
				filedot=".doc";
		}
		retHTML = TANGER_OCX_OBJ.saveToURL(savecode,//提交到的url地址
		"EDITFILE",//文件域的id，类似<input type=file id=upLoadFile 中的id
		"savetype=1&fileType="+fileType,          //与控件一起提交的参数,savetype参数为要保存的文件格式office,html,pdf。filetype参数保存文件类型
		fileName+filedot,    //上传文件的名称，类似<input type=file 的value
		0  //与控件一起提交的表单id，也可以是form的序列号，这里应该是0.
		);
		newwin = window.open("","_blank","left=200,top=200,width=400,height=300,status=0,toolbar=0,menubar=0,location=0,scrollbars=1,resizable=1",false);
		newdoc = newwin.document;
		newdoc.open();
		newdoc.write("<center><hr>"+retHTML+"<hr><input type=button VALUE='关闭窗口' onclick='window.close();if(window.opener){window.opener.location.reload()};'></center>");
		newdoc.close();
		window.opener.focus();
	}
	else
	{
        alert("不能执行保存,没有编辑文档!");	
	}
}
//保存文档为html文件到服务器
function saveFileAsHtmlToUrl()
{
	var fileName =trim(document.all("filetitle").value);
	if(fileName.length==0){alert("请输入文件标题!");document.all("filetitle").focus();return false;}//判断文件标题输入域
	var result,filedot;
	if(IsFileOpened)
	{
		switch (TANGER_OCX_OBJ.doctype)
		{
			case 1:
				fileType = "Word.Document";
				filedot=".doc";
				break;
			case 2:
				fileType = "Excel.Sheet";
				filedot=".xls";
				break;
			case 3:
				fileType = "PowerPoint.Show";
				filedot=".ppt";
				break;
			case 4:
				fileType = "Visio.Drawing";
				filedot=".vso"
				break;
			case 5:
				fileType = "MSProject.Project";
				filedot=".pro";
				break;
			case 6:
				fileType = "WPS Doc";
				filedot=".wps";
				break;
			case 7:
				fileType = "Kingsoft Sheet";
				filedot=".et";
				break;
			default :
			    fileType = "Word.Document";
				filedot=".doc";
		}
		retHTML = TANGER_OCX_OBJ.PublishAsHTMLToURL(savecode,//提交到的url地址
		"EDITFILE",//文件域的id，类似<input type=file id=upLoadFile 中的id
		"savetype=2&fileType="+fileType,          //与控件一起提交的参数,savetype参数为要保存的文件格式office,html,pdf。filetype参数保存文件类型
		fileName+filedot+".html",    //上传文件的名称，类似<input type=file 的value
		0  //与控件一起提交的表单id，也可以是form的序列号，这里应该是0.
		);
		newwin = window.open("","_blank","left=200,top=200,width=400,height=300,status=0,toolbar=0,menubar=0,location=0,scrollbars=1,resizable=1",false);
		newdoc = newwin.document;
		newdoc.open();
		newdoc.write("<center><hr>"+retHTML+"<hr><input type=button VALUE='关闭窗口' onclick='window.close();if(window.opener){window.opener.location.reload()};'></center>");
		newdoc.close();
		window.opener.focus();
	}
	else
	{
        alert("不能执行保存,没有编辑文档!");	
	}
}
//保护文档为pdf格式
function saveFileAsPdfToUrl()
{
	var fileName =trim(document.all("filetitle").value);
	if(fileName.length==0){alert("请输入文件标题!");document.all("filetitle").focus();return false;}//判断文件标题输入域
	var result,filedot;
	if(IsFileOpened && TANGER_OCX_OBJ.IsPDFCreatorInstalled())
	{
		switch (TANGER_OCX_OBJ.doctype)
		{
			case 1:
				fileType = "Word.Document";
				filedot=".doc";
				break;
			case 2:
				fileType = "Excel.Sheet";
				filedot=".xls";
				break;
			case 3:
				fileType = "PowerPoint.Show";
				filedot=".ppt";
				break;
			case 4:
				fileType = "Visio.Drawing";
				filedot=".vso"
				break;
			case 5:
				fileType = "MSProject.Project";
				filedot=".pro";
				break;
			case 6:
				fileType = "WPS Doc";
				filedot=".wps";
				break;
			case 7:
				fileType = "Kingsoft Sheet";
				filedot=".et";
				break;
			default :
			    fileType = "Word.Document";
				filedot=".doc";
		}
		TANGER_OCX_OBJ.PublishAsPDFToURL(savecode,//提交到的url地址
		"EDITFILE",//文件域的id，类似<input type=file id=upLoadFile 中的id
		"savetype=3&fileType="+fileType,          //与控件一起提交的参数,savetype参数为要保存的文件格式office,html,pdf。filetype参数保存文件类型
		fileName+filedot,    //上传文件的名称，类似<input type=file 的value
		0,  //与控件一起提交的表单id，也可以是form的序列号，这里应该是0.
		null, //sheetname,保存excel的哪个表格
	    true, //IsShowUI,是否显示保存界面
	    false, // IsShowMsg,是否显示保存成功信息
	    false, // IsUseSecurity,是否使用安全特性
	    null, // OwnerPass,安全密码.可直接传值
	    false,//IsPermitPrint,是否允许打印
	    true //IsPermitCopy,是否允许拷贝
		);
	}
	else
	{
        alert("不能执行保存,没有编辑文档或者没有安装PDF虚拟打印机!");	
	}
}

function testFunction()
{
	alert(IsFileOpened);
}
function addServerSecSign()
{
	var signUrl=document.all("secSignFileUrl").options[document.all("secSignFileUrl").selectedIndex].value;
	if(IsFileOpened)
	{
		if(TANGER_OCX_OBJ.doctype==1||TANGER_OCX_OBJ.doctype==2)
		{
			try
			{TANGER_OCX_OBJ.AddSecSignFromURL("ntko",signUrl);}
			catch(error){}
		}
		else
		{alert("不能在该类型文档中使用安全签名印章.");}
	}	
}
function addLocalSecSign()
{
	if(IsFileOpened)
	{
		if(TANGER_OCX_OBJ.doctype==1||TANGER_OCX_OBJ.doctype==2)
		{
			try
			{TANGER_OCX_OBJ.AddSecSignFromLocal("ntko","");}
			catch(error){}
		}
		else
		{alert("不能在该类型文档中使用安全签名印章.");}
	}	
}
function addEkeySecSign()
{
	if(IsFileOpened)
	{
		if(TANGER_OCX_OBJ.doctype==1||TANGER_OCX_OBJ.doctype==2)
		{
			try
			{TANGER_OCX_OBJ.AddSecSignFromEkey("ntko");}
			catch(error){}
		}
		else
		{alert("不能在该类型文档中使用安全签名印章.");}
	}
}
function addHandSecSign()
{
	if(IsFileOpened)
	{
		if(TANGER_OCX_OBJ.doctype==1||TANGER_OCX_OBJ.doctype==2)
		{
			try
			{TANGER_OCX_OBJ.AddSecHandSign("ntko");}
			catch(error){}
		}
		else
		{alert("不能在该类型文档中使用安全签名印章.");}
	}
}

function addServerSign(signUrl)
{
	if(IsFileOpened)
	{
			try
			{
				TANGER_OCX_OBJ.AddSignFromURL("ntko",//印章的用户名
				signUrl,//印章所在服务器相对url
				100,//左边距
				100,//上边距 根据Relative的设定选择不同参照对象
				"ntko",//调用DoCheckSign函数签名印章信息,用来验证印章的字符串
				3,  //Relative,取值1-4。设置左边距和上边距相对以下对象所在的位置 1：光标位置；2：页边距；3：页面距离 4：默认设置栏，段落
				100,//缩放印章,默认100%
				1);   //0印章位于文字下方,1位于上方
				
			}
			catch(error){}
	}		
}

function addLocalSign()
{
	if(IsFileOpened)
	{
			try
			{
				TANGER_OCX_OBJ.AddSignFromLocal("ntko",//印章的用户名
					"",//缺省文件名
					true,//是否提示选择
					100,//左边距
					100,//上边距 根据Relative的设定选择不同参照对象
					"ntko",//调用DoCheckSign函数签名印章信息,用来验证印章的字符串
					3,  //Relative,取值1-4。设置左边距和上边距相对以下对象所在的位置 1：光标位置；2：页边距；3：页面距离 4：默认设置栏，段落
					100,//缩放印章,默认100%
					1);   //0印章位于文字下方,1位于上方
			}
			catch(error){}
	}
}
function addPicFromUrl(picURL)
{
	if(IsFileOpened)
	{
		if(TANGER_OCX_OBJ.doctype==1||TANGER_OCX_OBJ.doctype==2)
		{
			try
			{
				TANGER_OCX_OBJ.AddPicFromURL(picURL,//图片的url地址可以时相对或者绝对地址
				false,//是否浮动,此参数设置为false时,top和left无效
				100,//left 左边距
				100,//top 上边距 根据Relative的设定选择不同参照对象
				1,  //Relative,取值1-4。设置左边距和上边距相对以下对象所在的位置 1：光标位置；2：页边距；3：页面距离 4：默认设置栏，段落
				100,//缩放印章,默认100%
				1);   //0印章位于文字下方,1位于上方
				
			}
			catch(error){}
		}
		else
		{alert("不能在该类型文档中使用安全签名印章.");}
	}		
}
function addPicFromLocal()
{
	if(IsFileOpened)
	{
			try
			{
				TANGER_OCX_OBJ.AddPicFromLocal("",//印章的用户名
					true,//缺省文件名
					false,//是否提示选择
					100,//左边距
					100,//上边距 根据Relative的设定选择不同参照对象
					1,  //Relative,取值1-4。设置左边距和上边距相对以下对象所在的位置 1：光标位置；2：页边距；3：页面距离 4：默认设置栏，段落
					100,//缩放印章,默认100%
					1);   //0印章位于文字下方,1位于上方
			}
			catch(error){}
	}
}

function TANGER_OCX_AddDocHeader(strHeader)
{
	if(!IsFileOpened)
	{return;}
	var i,cNum = 30;
	var lineStr = "";
	try
	{
		for(i=0;i<cNum;i++) lineStr += "_";  //生成下划线
		with(TANGER_OCX_OBJ.ActiveDocument.Application)
		{
			Selection.HomeKey(6,0); // go home
			Selection.TypeText(strHeader);
			Selection.TypeParagraph(); 	//换行
			Selection.TypeText(lineStr);  //插入下划线
			// Selection.InsertSymbol(95,"",true); //插入下划线
			Selection.TypeText("★");
			Selection.TypeText(lineStr);  //插入下划线
			Selection.TypeParagraph();
			//Selection.MoveUp(5, 2, 1); //上移两行，且按住Shift键，相当于选择两行
			Selection.HomeKey(6,1);  //选择到文件头部所有文本
			Selection.ParagraphFormat.Alignment = 1; //居中对齐
			with(Selection.Font)
			{
				NameFarEast = "宋体";
				Name = "宋体";
				Size = 12;
				Bold = false;
				Italic = false;
				Underline = 0;
				UnderlineColor = 0;
				StrikeThrough = false;
				DoubleStrikeThrough = false;
				Outline = false;
				Emboss = false;
				Shadow = false;
				Hidden = false;
				SmallCaps = false;
				AllCaps = false;
				Color = 255;
				Engrave = false;
				Superscript = false;
				Subscript = false;
				Spacing = 0;
				Scaling = 100;
				Position = 0;
				Kerning = 0;
				Animation = 0;
				DisableCharacterSpaceGrid = false;
				EmphasisMark = 0;
			}
			Selection.MoveDown(5, 3, 0); //下移3行
		}
	}
	catch(err){
		alert("错误：" + err.number + ":" + err.description);
	}
	finally{
	}
}

function insertRedHeadFromUrl(headFileURL)
{
	if(TANGER_OCX_OBJ.doctype!=1)//TANGER_OCX_OBJ.doctype=1为word文档
	{return;}
	TANGER_OCX_OBJ.ActiveDocument.Application.Selection.HomeKey(6,0);//光标移动到文档开头
	TANGER_OCX_OBJ.addtemplatefromurl(headFileURL);//在光标位置插入红头文档
}
function openTemplateFileFromUrl(templateUrl)
{
	TANGER_OCX_OBJ.openFromUrl(templateUrl);
}
function doHandSign()
{
	if(TANGER_OCX_OBJ.doctype==1||TANGER_OCX_OBJ.doctype==2)//此处设置只允许在word和excel中盖章.doctype=1是"word"文档,doctype=2是"excel"文档
	{
		TANGER_OCX_OBJ.DoHandSign2(
									"ntko",//手写签名用户名称
									"ntko",//signkey,DoCheckSign(检查印章函数)需要的验证密钥。
									0,//left
									0,//top
									1,//relative,设定签名位置的参照对象.0：表示按照屏幕位置插入，此时，Left,Top属性不起作用。1：光标位置；2：页边距；3：页面距离 4：默认设置栏，段落（为兼容以前版本默认方式）
									100);
	}
}
function SetReviewMode(boolvalue)
{
	if(TANGER_OCX_OBJ.doctype==1)
	{
		TANGER_OCX_OBJ.ActiveDocument.TrackRevisions = boolvalue;//设置是否保留痕迹
	}
} 

function setShowRevisions(boolevalue)
{
	if(TANGER_OCX_OBJ.doctype==1)
	{
		TANGER_OCX_OBJ.ActiveDocument.ShowRevisions =boolevalue;//设置是否显示痕迹
	}
}
//接受或者取消所有修订
function TANGER_OCX_AllRevisions(bool)
{
    if(bool)
    {
	    TANGER_OCX_OBJ.ActiveDocument.AcceptAllRevisions();//接受所有的痕迹修订
	}
	else
	{
	    TANGER_OCX_OBJ.ActiveDocument.Application.WordBasic.RejectAllChangesInDoc();//拒绝所有的痕迹修订
	}
}
function setFilePrint(boolvalue)
{
	TANGER_OCX_OBJ.fileprint=boolvalue;//是否允许打印
}
function setFileNew(boolvalue)
{
	TANGER_OCX_OBJ.FileNew=boolvalue;//是否允许新建
}
function setFileSaveAs(boolvalue)
{
	TANGER_OCX_OBJ.FileSaveAs=boolvalue;//是否允许另存为
}

function setIsNoCopy(boolvalue)
{
	TANGER_OCX_OBJ.IsNoCopy=boolvalue;//是否禁止粘贴
}
function DoCheckSign()
{
   if(IsFileOpened)
   {	
			var ret = TANGER_OCX_OBJ.DoCheckSign
			(
			false,/*可选参数 IsSilent 缺省为FAlSE，表示弹出验证对话框,否则，只是返回验证结果到返回值*/
			"ntko"//使用盖章时的signkey,这里为"ntko"
			);//返回值，验证结果字符串
			//alert(ret);
   }	
}
function setToolBar()
{
	TANGER_OCX_OBJ.ToolBars=!TANGER_OCX_OBJ.ToolBars;
}
function setMenubar()
{
		TANGER_OCX_OBJ.Menubar=!TANGER_OCX_OBJ.Menubar;
}
function setInsertMemu()
{
		TANGER_OCX_OBJ.IsShowInsertMenu=!TANGER_OCX_OBJ.IsShowInsertMenu;
	}
function setEditMenu()
{
		TANGER_OCX_OBJ.IsShowEditMenu=!TANGER_OCX_OBJ.IsShowEditMenu;
	}
function setToolMenu()
{
	TANGER_OCX_OBJ.IsShowToolMenu=!TANGER_OCX_OBJ.IsShowToolMenu;
	}
	
//增加自定义菜单
function initCustomMenus1()
{
	var myobj = TANGER_OCX_OBJ;
	for(var menuPos=0;menuPos<1;menuPos++)
	{
		myobj.AddCustomMenu2(menuPos,"常用功能"+"(&"+menuPos+")"); 
		for(var submenuPos=0;submenuPos<1;submenuPos++)
		{
			myobj.AddCustomMenuItem2(menuPos,submenuPos,-1,true,"打印设置",false);
				//增加子菜单项目
				for(var subsubmenuPos=0;subsubmenuPos<3;subsubmenuPos++)
				{
					if(0 ==subsubmenuPos)//增加子菜单项目
					{
						myobj.AddCustomMenuItem2(menuPos,submenuPos,subsubmenuPos,false,
							"设置打印区域",false,menuPos*100+submenuPos*20+subsubmenuPos);
					}
					if(1 ==subsubmenuPos)//增加子菜单项目
					{
						myobj.AddCustomMenuItem2(menuPos,submenuPos,subsubmenuPos,false,
							"取消打印区域",false,menuPos*100+submenuPos*20+subsubmenuPos);
					}
					if(2==subsubmenuPos)
					{
						myobj.AddCustomMenuItem2(menuPos,submenuPos,subsubmenuPos,false,
							"手写批注",false,menuPos*100+submenuPos*20+subsubmenuPos);
					}
				}
		}
	}
}
//控件控制
function controlStyle()
{
	var myobj = TANGER_OCX_OBJ;	
	for(var menuPos=0;menuPos<1;menuPos++)
	{
		myobj.AddCustomMenu2(menuPos,"控件样式"+"(&"+menuPos+")"); 
		for(var submenuPos=0;submenuPos<1;submenuPos++)
		{
			myobj.AddCustomMenuItem2(menuPos,submenuPos,-1,true,"改变大小",false);
				//增加子菜单项目
				for(var subsubmenuPos=0;subsubmenuPos<2;subsubmenuPos++)
				{
					if(0 ==subsubmenuPos)//增加子菜单项目
					{
						myobj.AddCustomMenuItem2(menuPos,submenuPos,subsubmenuPos,false,
							"全网页查看",false,menuPos*100+submenuPos*20+subsubmenuPos);
					}
					if(1 ==subsubmenuPos)//增加子菜单项目
					{
						myobj.AddCustomMenuItem2(menuPos,submenuPos,subsubmenuPos,false,
							"恢复原大小",false,menuPos*100+submenuPos*20+subsubmenuPos);
					}
				}
		}
	}
}
//改变控件大小为当前网页可见区域
function objside()
{
	document.all.officecontrol.style.position="absolute";
	document.all.officecontrol.style.left="0px";
	document.all.officecontrol.style.top="0px";
	document.all.officecontrol.style.width=document.body.clientWidth;//网页可见区域宽
	document.all.officecontrol.style.height=document.body.clientHeight;//网页可见区域高
}
//恢复控件显示大小
function objside2()
{
	document.all.officecontrol.style.position="relative";
	document.all.officecontrol.style.left="0px";
	document.all.officecontrol.style.top="0px";
	document.all.officecontrol.style.width="100%";
	document.all.officecontrol.style.height="980px";
}
//显示或隐藏文档控件对象
function ObjectDisplay(boolvalue)
{
	var obj=document.getElementById("objside");
	if(!boolvalue)
		{
			obj.style.display="none";
		}
	else
		{
			obj.style.display="block";
		}
}