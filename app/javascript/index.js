window.addEventListener('load', function(){
  const memos = document.getElementsByClassName('memo')

    for(let i = 0; i < memos.length; i++){
      memos[i].addEventListener('click', function(){
        const result = memos[i].hasAttribute('style')
        if(result == false){
          memos[i].setAttribute("style", "background-color:#808080;")
        }
        // const element = document.querySelector('section')
        // memos[i].addEventListener('click', function(){
        //   memos[i].remove()
        // })
      })
    }
    
      for(let num = 0; num < memos.length; num++){
        memos[num].addEventListener('click', function(){
          const result = memos[num].hasAttribute('style')
          if(result == true){
              memos[num].remove()
          
          }
          })
        }

})