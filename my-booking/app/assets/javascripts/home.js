var header={};
header.custom={
  headerFooterHide:function(){
    $('.video-banner').parents('body').find('header').css('display','none');
  }
},
$(document).ready(function(){
  header.custom.headerFooterHide()
});
