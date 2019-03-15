module Common 
  extend ActiveSupport::Concern
    
  def calculation
    second = params[:second].to_i 
    first = params[:first].to_i
    operator = params[:operator]
    if operator == "addition"
      output= first.to_i + second.to_i
    elsif operator == "subtraction"
      output = first.to_i - second.to_i
    elsif operator == "multiplication"
      output = first.to_i * second.to_i
    elsif operator == "division"
      begin
        answer = first.to_i / second.to_i
        remainder = first.to_i % second.to_i
        output = answer.. remainder 
      rescue ZeroDivisionError => error
        output = error
      end
    output
    end
  end
end