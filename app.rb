require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @new_name = params[:name].reverse
  end

  get "/square/:number" do
    @product = params[:number].to_i * params[:number].to_i
    @product.to_s
  end

  get "/say/:number/:phrase" do
    body = ""

    params[:number].to_i.times do |i|
      body += params[:phrase]
    end

    body
    # @times = params[:number].to_i
    # @phrase = params[:phrase]
    # @times.times do |i|
    #   "<p>#{@phrase}</p>"
    # end
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    # the_num = params[:number1].to_i params[:operation].to_i  params[:number2].to_i
    # puts params[:number1]
    # puts params[:number2]
    # puts params[:operation]
    # binding.pry
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      # puts "lol"
      answ = (@num1 + @num2).to_s
    when 'subtract'
      answ = (@num1 - @num2).to_s
    when 'multiply'
      answ = (@num1 * @num2).to_s
    when 'divide'
      answ = (@num1 / @num2).to_s
    end
    answ
  end
end
