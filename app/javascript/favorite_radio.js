function favorite_radio (){
  const favoriteBtn = document.getElementById('favorite-btn');
  favoriteBtn.addEventListener('click',() => {
    let state = favoriteBtn.dataset.status;
    //data-statusが1で、ラジオボタンがchecked状態で解除
    if( state == "1" && favoriteBtn.checked == true ){
      favoriteBtn.checked = false;
      favoriteBtn.dataset.status = "0";
    } else {
      //data-statusが0の場合、ラジオボタンがchecked、data-statusを1に変更
      favoriteBtn.checked = true;
      favoriteBtn.dataset.status = "1";
    };
  });
};


window.addEventListener('load', favorite_radio);