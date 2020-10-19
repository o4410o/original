window.addEventListener('load', function(){
  const memos = document.getElementsByClassName('memo')

    for(let i = 0; i < memos.length; i++){
      memos[i].addEventListener('click', function(){
        memos[i].setAttribute("style", "background-color:#808080;")
        
        const element = document.querySelector('section')
        memos[i].addEventListener('click', function(){
          element.remove()
        })
    })
    }
})