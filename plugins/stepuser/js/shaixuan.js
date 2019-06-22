
$('.clearDd').show();
var okSelect = []; //已经选择好的
var oClearList = $(".hasBeenSelected .clearList");
var radioVal = '';

function selectInit(vals, names) {
    var infor = '';
    okSelect.length = 0;
    reval = vals.split(",");
    rename = names.split(",");
    for (var i = 0; i < reval.length; i++) {
        if (reval[i] != "" && rename[i] != "") {
            okSelect.push(reval[i] + '|' + rename[i]);
        }
    }
    var vals = [];
    for (var i = 0, size = okSelect.length; i < size; i++) {
        vals = okSelect[i].split('|');
        infor += '<div class=\"selectedInfor selectedShow\"><span style=\"display:none;\">' + vals[0] + '</span><label>' + vals[1] + '</label><em></em></div>';
    }
    oClearList.html(infor);
};

//清空全部
function clearAll() {

 
}

//选择后删除
$('.clearList').find('em').live('click', function () {
    var self = $(this);
    var val = self.prev().prev().html() + '|' + self.prev().html();
    delStr(val, okSelect);
    var infor = "";
    var ids = "";
    var names = "";
    var vals = [];
    for (var i = 0, size = okSelect.length; i < size; i++) {
        vals = okSelect[i].split('|');
        if (reval[i] != "" && rename[i] != "") {
            ids += vals[0] + ",";
            names += vals[1] + ",";
            infor += '<div class=\"selectedInfor selectedShow\"><span style=\"display:none;\">' + vals[0] + '</span><label>' + vals[1] + '</label><em></em></div>';
        }
    }
    $("#prcsUserId").val(ids);
    $("#prcsUserName").val(names);
    if (ids == "") {
        $("#prcsOpUserId").val("");
        $("#prcsOpUserName").val("");
    }
    oClearList.html(infor);
})


//删除
function delStr(str, arr) { //删除数组给定相同的字符串
    var n = -1;
    for (var i = 0,
    len = arr.length; i < len; i++) {
        if (str == arr[i]) {
            n = i;
            break;
        }
    }
    n > -1 && arr.splice(n, 1);
};
function trim(str) {
    return str.replace(/^\s+|\s+$/g, '')
};
function text(e) {
    var t = '';
    e = e.childNodes || e;
    for (var j = 0; j < e.length; j++) {
        t += e[j].nodeType != 1 ? e[j].nodeValue : text(e[j].childNodes);
    }
    return trim(t);
}

function prev(elem) {
    do {
        elem = elem.previousSibling;
    } while (elem && elem.nodeType != 1);
    return elem;
};

function next(elem) {
    do {
        elem = elem.nextSibling;
    } while (elem && elem.nodeType != 1);
    return elem;
}

function parents(elem, parents) {  //查找当前祖先辈元素需要的节点  如 parents(oDiv, 'dd') 查找 oDiv 的祖先元素为dd 的
    if (!elem || !parents) return;
    var parents = parents.toUpperCase();
    do {
        elem = elem.parentNode;
    } while (elem.nodeName.toUpperCase() != parents);
    return elem;
};
