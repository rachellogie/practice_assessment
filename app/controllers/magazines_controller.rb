class MagazinesController < ApplicationController
  def index
    @magazines = Magazine.all
  end

  def new
    @magazine = Magazine.new
  end

  def create
    @magazine = Magazine.new(magazine_parameters)
    if @magazine.save
      redirect_to root_path
      flash[:notice] = 'You successfully created a magazine'
    else
      render :new
    end
  end

  private

  def magazine_parameters
    params.require(:magazine).permit!
  end
end