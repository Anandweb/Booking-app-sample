var hotel={};
hotel.custom={
  urlFinding:function(){
    $('.Book-rooms').on('click',function(){
        localStorage.setItem("user", "customer");
    });
    $('.Upload-rooms').on('click',function(){
        localStorage.setItem("user", "admin");
    });
    if(localStorage.getItem('user')=='admin'){
      $('.hide-btn').css('display','block');
      $('.book-now').css('display','none');
    }else{
      $('.hide-btn').css('display','none');
      $('.book-now').css('display','block');
    }
  },
  datePicker:function(){
    $('.daterange').daterangepicker({
      opens: 'left'
    }, function(start, end, label) {
    //  console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
    });
  },
  availabilityCheck:function(){
    $(document).on("click", '.availability_btn', function() {
        $.ajax({
          type:"get",
          url:"/hotels/availability",
          dataType:"json",
          data: {data_id: $(this).attr('data')},
          success:function(result){
            window.location.href = "/hotels";
          }
      })
    });
  }
},
$(document).ready(function(){
  hotel.custom.urlFinding();
  hotel.custom.datePicker();
  hotel.custom.availabilityCheck();
});
