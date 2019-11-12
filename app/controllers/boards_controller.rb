class BoardsController < ApplicationController
  def index
    @title = "Hello World"
    @description = "これはトップページになります。"
  end

  def new
    @board = Board.new
  end

  def create 
  end
end
