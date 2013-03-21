$(function(){
    var options, a;
    jQuery(function(){
        options = { serviceUrl:'/agents/find.json' };
        a = $('#agent').autocomplete(options);
    });
})