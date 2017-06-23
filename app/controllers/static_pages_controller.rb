class StaticPagesController < ApplicationController
  def home
    @images = Image.all
  end

  def help
  end
end
