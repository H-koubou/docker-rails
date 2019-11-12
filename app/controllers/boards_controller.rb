class BoardsController < ApplicationController
  def index
    @title = "Hello World"
    @description = "これはトップページになります。"
  end

  def new
    @board = Board.new
  end

  def create
    Board.create(board_params)
    binding.pry
  end

  private 
  def board_params
    params.require(:board).permit(:name, :title, :body)
  end
end
