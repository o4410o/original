
window.addEventListener('load', function(){
  const memos = document.getElementsByClassName('memo')

    for(let i = 0; i < memos.length; i++){
      memos[i].addEventListener('click', function(){
        const result = memos[i].hasAttribute('style')
        if(result === false){
          memos[i].setAttribute("style", "background-color:#808080;")
        }
    })
   }
})