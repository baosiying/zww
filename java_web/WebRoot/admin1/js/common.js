/**
 * Created by xiehui on 2017/7/17.
 */

$(document).ready(function () {
    //var arrMonth=['JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEPT','OCT','NOV','DEC'];
    //var months=$('.date p');
    //var num=0;
    //months.each(function (i) {
    //    num=parseInt($(this).html());
    //    $(this).html(arrMonth[num-1]);
    //});
    //
    $('.menu>li').hover(function () {
        $(this).find('.sub-menu').slideToggle();
    });

    var left_height=$('.aside').height();
    var right_height=$('.detail').height();
    if(left_height && right_height){
        left_height>right_height?$('.detail').height(left_height):$('.aside').height(right_height);
    }

    //首页日期格式处理
    (function (){
        var aNewsDate=$('http://www.hunnu.edu.cn/js/.news ul li .date');
        aNewsDate.each(function () {
            var date=$(this).find('span').html();
            if(date){
                var arrDate=date.split(' ');
                $(this).find('p').html(arrDate[0]);
                $(this).find('span').html(arrDate[1]+arrDate[2]);
            }
        });
    })();

    //列表页日期格式处理
    (function (){
        var aNewsListDate=$('http://www.hunnu.edu.cn/js/.newsList li .date');
        aNewsListDate.each(function () {
            var date=$(this).find('h1').html();
            if(date){
                var arrDate=date.split('-');
                $(this).find('p').html(arrDate[0]+"."+arrDate[1]);
                $(this).find('h1').html(arrDate[2]);
            }
        });
    })();

    (function (){
        $('.org-tag').on('mouseenter','a', function () {
            $(this).addClass('on').siblings().removeClass('on');
            $($(this).attr('data-id')).show().siblings().hide();
        });
    })();


    (function (){
        $('.aside ul').on('mouseenter','li', function () {
            $(this).find('.second-menu').slideDown();
            var aLi=$(this).siblings('li');
            aLi.each(function () {
                $(this).find('.second-menu').slideUp();
            });
        });
    })();

   $('.weChat').hover(function () {
        $('http://www.hunnu.edu.cn/js/.weChat .wx').show();
    }, function () {
        $('http://www.hunnu.edu.cn/js/.weChat .wx').hide();
    });

});