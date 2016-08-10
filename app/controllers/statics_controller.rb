class StaticsController < ApplicationController
  def about
  end

  def home
    render layout: "home"
  end
end
