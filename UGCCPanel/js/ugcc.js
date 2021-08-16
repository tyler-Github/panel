function scrollBottom() {
    //$('textarea').scrollTop($('textarea')[1].scrollHeight);
    $('textarea').each(function () {
        $(this).scrollTop($(this).get(0).scrollHeight);
        //console.log($(this).attr('id'));
        //console.log($(this).get(0).scrollHeight);
    })
}
function updateUgccMenuItem() {
    var a = localStorage.getItem('cmd');
    var b = localStorage.getItem('restart');
    var c = localStorage.getItem('note');
    if (a == null)
        a = false;
    if (b == null)
        b = false;
    if (c == null)
        c = false;
    if ($('#restartSpan').length > 0) {
        if (b == 'true') {
            //$('#restartpanel').attr('aria-expanded') = 'false';
            $('#collapseOne').collapse('hide')
            $('#restartSpan')[0].className = 'glyphicon glyphicon-menu-down';
        } else {
            $('#collapseOne').collapse('show');
            $('#restartSpan')[0].className = 'glyphicon glyphicon-menu-up';
        }
    }
    if ($('#cmdSpan').length > 0) {
        if (a == 'true') {
            //$('#restartpanel').attr('aria-expanded') = 'false';
            $('#collapseCmd').collapse('hide')
            $('#cmdSpan')[0].className = 'glyphicon glyphicon-menu-down';
        } else {
            $('#collapseCmd').collapse('show');
            $('#cmdSpan')[0].className = 'glyphicon glyphicon-menu-up';
        }
    }
    if ($('#noteSpan').length > 0) {
        if (c == 'true') {
            //$('#restartpanel').attr('aria-expanded') = 'false';
            $('#collapseNote').collapse('hide')
            $('#noteSpan')[0].className = 'glyphicon glyphicon-menu-down';
        } else {
            $('#collapseNote').collapse('show');
            $('#noteSpan')[0].className = 'glyphicon glyphicon-menu-up';
        }
    }
}