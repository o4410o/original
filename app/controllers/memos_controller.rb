class MemosController < ApplicationController

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.create(memo_params)
    
    if @memo.valid?
      @memo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def checked
    memo = Memo.find(memi_params[:id])
    if memo.checked
      memo.update(checked: false)
    else
      memo.update(checked: true)
    end

    item = Memo.find(memo_params[:id])
    render ison: {memo: item}
  end


  private
  def memo_params
    params.require(:memo).permit(:item, :text)
  end
end
