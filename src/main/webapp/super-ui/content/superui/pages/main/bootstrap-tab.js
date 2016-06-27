var addTabs = function (options) {
    var url = window.location.protocol + '//' + window.location.host+"/";
    options.url = url + options.url;
    id = "tab_" + options.id;
    var title = "",content="";
    //如果TAB不存在，创建一个新的TAB
    if (!$("#" + id)[0]) {
      
        //固定TAB中IFRAME高度
        mainHeight = $(document.body).height() - 90;
        //创建新TAB的title
        title = '<li role="presentation" id="tab_' + id + '"><a href="#' + id + '" aria-controls="' + id + '" role="tab" data-toggle="tab">' + options.title;
        //是否允许关闭
        if (options.close) {
            title += ' <i class="glyphicon glyphicon-remove" style="cursor: pointer;" tabclose="' + id + '"></i>';
        }
        title += '</a></li>';
        //是否指定TAB内容
        if (options.content) {
            content = '<div role="tabpanel" class="tab-pane" id="' + id + '">' + options.content + '</div>';
        } else {//没有内容，使用IFRAME打开链接
            //如果打开窗体超过10个则提示打开窗体太多
            if ($(".tab-ui-menu").find('li').length >= 10) {
                toastrAlert("warning", "为保证系统效率,只允许同时运行10个功能窗口,请关闭一些窗口后重试！", "警告");
                return false;
            }
            content = '<div role="tabpanel" class="tab-pane" id="' + id + '"><iframe src="' + options.url + '" width="100%" height="' + mainHeight +
                    '" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="yes" allowtransparency="yes" id="iframe_'+id+'" class="tab_iframe"></iframe></div>';
        }
      
        //加入TABS
        $("#tab-menu").append(title);
        $("#tab-content").append(content);
    }
    $("#tab-menu > .active").removeClass("active");
    $("#tab-content > .active").removeClass("active");
    
    var height = $(".tab_iframe").height() + 1;
    $(".tab_iframe").css({
        height: height
    });
    //激活TAB
    $("#tab_" + id).addClass('active');
    $("#" + id).addClass("active");
  
};
/**
 * 弹出消息
 * @param {} type 类型：success,warning,info等
 * @param {} content 
 * @param {} title 
 * @returns {} 
 */
var toastrAlert = function (type, content, title) {
    
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "positionClass": "toast-bottom-right",
        "showDuration": "1000",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
    toastr[type](content, title);

}
var closeTab = function (id) {
    //如果关闭的是当前激活的TAB，激活他的前一个TAB
    if ($("#tab-menu > .active").attr('id') === "tab_" + id) {
        $("#tab_" + id).prev().addClass('active');
        $("#" + id).prev().addClass('active');
    }
  
    //关闭TAB
    $("#tab_" + id).remove();
    $("#" + id).remove();
  
};
$(function () {
    mainHeight = $(document.body).height() - 45;
    $('.main-left,.main-right').height(mainHeight);

    $(".nav-tabs").on("click", "[tabclose]", function (e) {
        id = $(this).attr("tabclose");
        closeTab(id);
    });
});