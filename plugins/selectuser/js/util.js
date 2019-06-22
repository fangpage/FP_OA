function OpenWin(URL)
{
    var t, l, d = new Date(), newWindow, h = 600 + 85, w = 900 + 50;

    t = (screen.availHeight - h) / 2 - 30;
    l = (screen.availWidth - w) / 2 - 10;

    newWindow = window.open(URL, d.getTime(), "height=" + h + ",width=" + w + ",status=0,toolbar=no,menubar=yes,location=no,scrollbars=no,top=" + t + ",left=" + l + ",resizable=yes");
    newWindow.moveTo(l, t);
    newWindow.resizeTo(w, h);
    newWindow.MacIspiritOpened = true;
    newWindow.focus();
}