class CalcsController < ApplicationController
  include Common
  def show
    @calculate = calculation
  end
end