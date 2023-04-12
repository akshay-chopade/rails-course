class MainController < ApplicationController
  def index
  end
  def about
    render('main/about2')
  end
  def hello
    redirect_to(controller: 'main', action:'index')
  end
end
