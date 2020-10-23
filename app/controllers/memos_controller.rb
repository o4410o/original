class MemosController < ApplicationController

  def index
    @memos = Memo.all.order(id: "DESC")
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

  def destroy
    @memo = Memo.find(params[:id])
    if @memo.destroy
      redirect_to root_path
    end
  end

  private
  def memo_params
    params.require(:memo).permit(:item, :text)
  end
end
