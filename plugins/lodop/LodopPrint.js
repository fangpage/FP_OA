function print() {
    LODOP = getLodop(parent.document.getElementById('LODOP'), parent.document.getElementById('LODOP_EM'));
    LODOP.PRINT_INIT("打印预览");
    LODOP.SET_PRINT_STYLE("FontSize", 18);
    LODOP.SET_PRINT_STYLE("Bold", 1);
    LODOP.ADD_PRINT_TEXT(50, 231, 260, 39, "");
    LODOP.SET_PRINT_PAGESIZE(1, "210mm", "297mm", "");
    LODOP.ADD_PRINT_HTM(10, 0, '99%', 1000, document.getElementById("data").innerHTML);

    LODOP.SET_PRINT_MODE("PRINT_PAGE_PERCENT", "Auto-Width"); //整宽 不变形
    LODOP.SET_SHOW_MODE("LANDSCAPE_DEFROTATED", 1); //横向时的正向显示
    LODOP.PREVIEW();
}