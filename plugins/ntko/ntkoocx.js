var TANGER_OCX_bDocOpen = false;
var TANGER_OCX_op;
var TANGER_OCX_filename;
var TANGER_OCX_attachid;
var TANGER_OCX_attachmentid;
var TANGER_OCX_actionURL; //For auto generate form fiields
var TANGER_OCX_OBJ; //The Control
var TANGER_OCX_Username; //当前登陆用户

//Open Document From URL
function TANGER_OCX_OpenDoc(URL)
{
	TANGER_OCX_OBJ = document.all.item("TANGER_OCX");
	if( (typeof(URL) != "undefined") && (URL != "") )
	{	
		try
		{
			switch(TANGER_OCX_op)
			{		
				case "1":
					//info = "编辑文档";
					//以异步方式开始打开URL文档
					TANGER_OCX_OBJ.BeginOpenFromURL(URL,true,false);
					break;
				case "0":
					//info = "阅读文档";
					//以异步方式开始打开URL文档
					TANGER_OCX_OBJ.BeginOpenFromURL(URL,true,true);
					break;
				default:
					//info = "未知操作";
			}
			
		} 		
		catch(err){};
	}
}

function TANGER_OCX_SaveEditToServerDisk(op_flag)
{
	//alert("attachment_id=" + TANGER_OCX_attachmentid);
	//op_flag标志
	//0保存文件,1保存并关闭,2保存无提示
	if(!TANGER_OCX_bDocOpen)
	{
		alert("没有打开的文档!");
		return;
	}	
	//TANGER_OCX_filename = document.all.item("filename").value;
//	if ( (typeof(TANGER_OCX_filename) == "undefined")||(!TANGER_OCX_filename) || (strtrim(TANGER_OCX_filename)==""))
//	{
//		alert("没有指定文件名!");
//		return;
//	}
	var newwin,newdoc;
	//try
	//{
	 	if(!TANGER_OCX_doFormOnSubmit())return; //we may do onsubmit first
	 	//call SaveToURL WITOUT other form data
		var retHTML = TANGER_OCX_OBJ.SaveToURL
		(
			"uploaddisk.aspx",
			"EDITFILE",	
			"attachment_id=" + TANGER_OCX_attachmentid, //other params seperrated by '&'. For example:myname=tanger&hisname=tom
			TANGER_OCX_filename//, //filename
			//"myForm" //submit myForm's data with document data
		); //this function returns dta from server
		//open a new window to show the returned data
		//newwin = window.open("","_blank","left=200,top=200,width=400,height=300,status=0,toolbar=0,menubar=0,location=0,scrollbars=1,resizable=1",false);
		//newdoc = newwin.document;
		//newdoc.open();
		//newdoc.write("<html><head><title>Data returned from server:</title></head><body><center><hr>")
		//newdoc.write(+"<hr>");
		//newdoc.write("<input type=button VALUE='Close Window' onclick='window.close()'>");
		//newdoc.write('</center></body></html>');
		//newdoc.close();
		
		close_op_flag=1;		
		if(op_flag != 2)
			window.alert(retHTML);		
		if(op_flag==1)
		{		
			window.close();
		}
	/*}
	catch(err){
		alert("不能保存到URL：" + err.number + ":" + err.description);
	}
	finally{
	}*/
}

//从本地增加印章文档指定位置
function AddSignFromLocal()
{
    try
    {
        if(TANGER_OCX_bDocOpen)
        {
            TANGER_OCX_OBJ.AddSignFromLocal(
            TANGER_OCX_Username,//当前登陆用户
            "",//缺省文件
            true,//提示选择
            0,//left
            0,"",1,100,0)  //top
        }
    }
    catch(err){};
}

//从URL增加印章文档指定位置
function AddSignFromURL(URL)
{
    try
    {
       if(TANGER_OCX_bDocOpen)
       {
            TANGER_OCX_OBJ.AddSignFromURL(
            TANGER_OCX_Username,//当前登陆用户
            URL,//URL
            -50,//left
            -50,"",1,100,0)  //top
       }
    }
    catch(err){};
}


//开始手写签名
function DoHandSign()
{
   if(TANGER_OCX_bDocOpen)
   {
	TANGER_OCX_OBJ.DoHandSign(
	TANGER_OCX_Username,//当前登陆用户 必须
	0,//笔型0－实线 0－4 //可选参数
	0x000000ff, //颜色 0x00RRGGBB//可选参数
	2,//笔宽//可选参数
	100,//left//可选参数
	50, //top//可选参数
	false,
	"" //SignKey
	);
   }
}

//开始全屏手写签名
function DoHandSign2()
{
   if(TANGER_OCX_bDocOpen)
   {
		TANGER_OCX_OBJ.DoHandSign2(
		TANGER_OCX_Username,//当前登陆用户 必须
		"", //SignKey
		0,//left//可选参数
		0,//top
		0,//relative=0，表示按照屏幕位置批注
		100 //缩放100%，表示原大小
		);
   }
}

//开始手工绘图，可用于手工批示
function DoHandDraw()
{
	if(TANGER_OCX_bDocOpen)
	{
		TANGER_OCX_OBJ.DoHandDraw(
		0,//笔型0－实线 0－4 //可选参数
		0x00ff0000,//颜色 0x00RRGGBB//可选参数
		3,//笔宽//可选参数
		200,//left//可选参数
		50//top//可选参数
		);
	}
}

//开始全屏手工绘图，可用于手工批示
function DoHandDraw2()
{
	if(TANGER_OCX_bDocOpen)
	{
	TANGER_OCX_OBJ.DoHandDraw2();
	}
}

//检查签名结果
function DoCheckSign()
{
	if(TANGER_OCX_bDocOpen)
	{		
	var ret = TANGER_OCX_OBJ.DoCheckSign
	(
	/*可选参数 IsSilent 缺省为FAlSE，表示弹出验证对话框,否则，只是返回验证结果到返回值*/
	);//返回值，验证结果字符串
	//alert(ret);
	}	
}
function AddPictureFromLocal()
{
	if(TANGER_OCX_bDocOpen)
	{	
    TANGER_OCX_OBJ.AddPicFromLocal(
	"", //path 
	true,//prompt to select
	true,//is float
	0,//left
	0); //top
	};	
}

function AddPictureFromURL(URL)
{
	if(TANGER_OCX_bDocOpen)
	{
    TANGER_OCX_OBJ.AddPicFromURL(
	URL,//URL Note: URL must return Word supported picture types
	true,//is float
	0,//left
	0);//top
	};
}

function InsertDocFromURL(URL)
{
	if(TANGER_OCX_bDocOpen)
	{
		TANGER_OCX_OBJ.AddTemplateFromURL(URL);
	};
}


//将一个从URL下载的word文档插入到当前文档的光标处
function TANGER_OCX_AddDocHeader2(URL)
{
	try{
		//选择对象当前文档的所有内容
		var curSel = TANGER_OCX_OBJ.ActiveDocument.Application.Selection;
		TANGER_OCX_SetMarkModify(false);
		curSel.WholeStory();
		curSel.Cut();
		//插入模板
		URL=URL;
		TANGER_OCX_OBJ.AddTemplateFromURL(URL);
		var BookMarkName = "zhengwen";
		if(!TANGER_OCX_OBJ.ActiveDocument.BookMarks.Exists(BookMarkName))
		{
			alert("Word 模板中不存在名称为：\""+BookMarkName+"\"的书签！\n关于套红模版制作，请咨询技术支持人员。");
			return;
	  }
		var bkmkObj = TANGER_OCX_OBJ.ActiveDocument.BookMarks(BookMarkName);
		var saverange = bkmkObj.Range
		saverange.Paste();
		TANGER_OCX_OBJ.ActiveDocument.Bookmarks.Add(BookMarkName,saverange);
		TANGER_OCX_SetMarkModify(true);
	}
	catch(err)
	{
	  alert("错误：" + err.number + ":" + err.description);
	}
}
function TANGER_OCX_AddDocHeader( strHeader )
{
	var i,cNum = 30;
	var lineStr = "";
	try
	{
		for(i=0;i<cNum;i++) lineStr += "_"; 
		with(TANGER_OCX_OBJ.ActiveDocument.Application)
		{
			Selection.HomeKey(6,0); // go home
			Selection.TypeText(strHeader);
			Selection.TypeParagraph(); 
			Selection.TypeText(lineStr); 
			Selection.TypeText("★");
			Selection.TypeText(lineStr);  
			Selection.TypeParagraph();
			Selection.HomeKey(6,1); 
			Selection.ParagraphFormat.Alignment = 1; 
			with(Selection.Font)
			{
				Name = "Arial";
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
			Selection.MoveDown(5, 3, 0); 
		}
	}
	catch(err){
		//alert("err:" + err.number + ":" + err.description);
	}
	finally{
	}
}

//设置文档为只读
function TANGER_OCX_SetReadOnly(boolvalue)
{
	var appName,i;
	try
	{
		if (boolvalue) TANGER_OCX_OBJ.IsShowToolMenu = false;
		with(TANGER_OCX_OBJ.ActiveDocument)
		{
			appName = new String(Application.Name);
			if( (appName.toUpperCase()).indexOf("WORD") > -1 ) //Word
			{
				if (ProtectionType != -1 &&  !boolvalue)
				{
					Unprotect();
				}
				if (ProtectionType == -1 &&  boolvalue)
				{
					Protect(2,true,"");
				}
			}
			else if ( (appName.toUpperCase()).indexOf("EXCEL") > -1 ) //EXCEL
			{
				for(i=1;i<=Application.Sheets.Count;i++)
				{
					if(boolvalue)
					{
						Application.Sheets(i).Protect("",true,true,true);
					}
					else
					{
						Application.Sheets(i).Unprotect("");
					}
				}
				if(boolvalue)
				{
					Application.ActiveWorkbook.Protect("",true);
				}
				else
				{
					Application.ActiveWorkbook.Unprotect("");
				}
			}
			else
			{
			}
		}
	}
	catch(err){
		//alert("错误：" + err.number + ":" + err.description);
	}
	finally{
	}
}

function strtrim(value)
{
	return value.replace(/^\s+/,'').replace(/\s+$/,'');
}

//允许或禁止用户从控件拷贝数据
function TANGER_OCX_SetNoCopy(boolvalue)
{
	TANGER_OCX_OBJ.IsNoCopy = boolvalue;
}

//允许或禁止文件－>新建菜单
function TANGER_OCX_EnableFileNewMenu(boolvalue)
{
	TANGER_OCX_OBJ.EnableFileCommand(0) = boolvalue;
}
//允许或禁止文件－>打开菜单
function TANGER_OCX_EnableFileOpenMenu(boolvalue)
{
	TANGER_OCX_OBJ.EnableFileCommand(1) = boolvalue;
}
//允许或禁止文件－>保存菜单
function TANGER_OCX_EnableFileSaveMenu(boolvalue)
{
	TANGER_OCX_OBJ.EnableFileCommand(3) = boolvalue;
}
//允许或禁止文件－>另存为菜单
function TANGER_OCX_EnableFileSaveAsMenu(boolvalue)
{
	TANGER_OCX_OBJ.EnableFileCommand(4) = boolvalue;
}
//允许或禁止文件－>打印菜单
function TANGER_OCX_EnableFilePrintMenu(boolvalue)
{
	TANGER_OCX_OBJ.EnableFileCommand(5) = boolvalue;
}
//允许或禁止文件－>打印预览菜单
function TANGER_OCX_EnableFilePrintPreviewMenu(boolvalue)
{
	TANGER_OCX_OBJ.EnableFileCommand(6) = boolvalue;
}

//如果原先的表单定义了OnSubmit事件，保存文档时首先会调用原先的事件。
function TANGER_OCX_doFormOnSubmit()
{
	var form = document.forms[0];
  	if (form.onsubmit)
	{
    	var retVal = form.onsubmit();
     	if (typeof retVal == "boolean" && retVal == false)
       	return false;
	}
	return true;
}

//允许或禁止显示修订工具栏和工具菜单（保护修订）
function TANGER_OCX_EnableReviewBar(boolvalue)
{
	TANGER_OCX_OBJ.ActiveDocument.CommandBars("Reviewing").Enabled = boolvalue;
	TANGER_OCX_OBJ.ActiveDocument.CommandBars("Track Changes").Enabled = boolvalue;
	TANGER_OCX_OBJ.IsShowToolMenu = boolvalue;
}

//打开或者关闭修订模式
function TANGER_OCX_SetReviewMode(boolvalue)
{
	TANGER_OCX_OBJ.ActiveDocument.TrackRevisions = boolvalue;
}

//进入或退出痕迹保留状态，调用上面的两个函数
function TANGER_OCX_SetMarkModify(boolvalue)
{
	TANGER_OCX_SetReviewMode(boolvalue);
	TANGER_OCX_EnableReviewBar(!boolvalue);
}

//显示/不显示修订文字
function TANGER_OCX_ShowRevisions(boolvalue)
{
	TANGER_OCX_OBJ.ActiveDocument.ShowRevisions = boolvalue;
}

//打印/不打印修订文字
function TANGER_OCX_PrintRevisions(boolvalue)
{
	TANGER_OCX_OBJ.ActiveDocument.PrintRevisions = boolvalue;
}

//设置用户名
function TANGER_OCX_SetDocUser(cuser)
{
	with(TANGER_OCX_OBJ.ActiveDocument.Application)
	{
		//UserName = cuser;
		TANGER_OCX_Username = cuser;
	}	
}

function TANGER_OCX_ChgLayout()
{
 	try
	{
		TANGER_OCX_OBJ.showdialog(5); 
	}
	catch(err){
		alert("err:" + err.number + ":" + err.description);
	}
	finally{
	}
}

function TANGER_OCX_PrintDoc()
{
	try
	{
		TANGER_OCX_OBJ.printout(true);
	}
	catch(err){
		alert("err:"  + err.number + ":" + err.description);
	}
	finally{
	}
}

//此函数在文档打开时被调用。
function TANGER_OCX_OnDocumentOpened(str, obj)
{
	TANGER_OCX_bDocOpen = true;
	TANGER_OCX_SetDocUser(TANGER_OCX_Username);
	
	try
	{	
		TANGER_OCX_OBJ.Caption = TANGER_OCX_filename;							
		switch(TANGER_OCX_op)
		{
			case "1":
				TANGER_OCX_SetReadOnly(false);
				break;
			case "0":
				TANGER_OCX_SetReadOnly(true);
				break;
			default:
				break;
		}						
	}
	catch(err)
	{
		window.status = "OnDocumentOpened事件的Script产生错误。" + err.number + ":" + err.description;
	}
}

function TANGER_OCX_OnDocumentClosed()
{
   TANGER_OCX_bDocOpen = false;
}


function TANGER_OCX_SetInfo()
{
	TANGER_OCX_op = document.all('TANGER_OCX_op').value;
	TANGER_OCX_filename = document.all('TANGER_OCX_filename').value;
	TANGER_OCX_attachid = document.all('TANGER_OCX_attachid').value;
	TANGER_OCX_attachmentid = document.all('TANGER_OCX_attachmentid').value;
	TANGER_OCX_Username = document.all('TANGER_OCX_username').value;
}
