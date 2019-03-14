class CalcsController < ApplicationController
  def show
    @operator = params[:operator]
    @first = params[:first].to_i
    @second = params[:second].to_i

    if @operator == "addition"
        @calculate = @first + @second
      elsif @operator == "subtraction"
        @calculate = @first - @second 
      elsif @operator == "multiplication"
        @calculate = @first * @second 
      elsif @operator == "division"
        @calculate = @first.to_f / @second.to_f 
    end 
  end
end
