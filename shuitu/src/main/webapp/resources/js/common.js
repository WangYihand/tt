//警告框
function confirm(msg,confirm_func) {
  $.confirm({
    title: '警告',
    content: msg,
    autoClose: 'cancel|3000',
    buttons: {
      confirm: {
        text:"确认",
        action:confirm_func
      },
      cancel:{
        text:"取消",
        action: function () {
          
        }
      },
    }
  });
}

//alert框
function alert(msg,cancel_func) {
  $.alert({
    title: '提示',
    content: msg,
    autoClose: 'cancel|3000',
    buttons: {
      cancel:{
        text:"确认",
        action: cancel_func
      },
    }
  });

}