class MainController < ApplicationController
  def home
    render({ :template=> "templates/home"})
  end

  def square_new
    render({ :template=> "templates/home"})
  end

  def square_root_new
    render({ :template=> "templates/square_root_new"})
  end

  def random_new
    render({ :template=> "templates/random_new"})
  end

  def payment_new
    render({ :template=> "templates/payment_new"})
  end

  def square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({ :template=> "templates/square_results"})
  end
  
  def square_root_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 0.5
    render({ :template=> "templates/square_root_results"})
  end
  
  def random_results
    @the_min = params.fetch("user_min").to_f
    @the_max = params.fetch("user_max").to_f
    @the_result = rand(@the_min..@the_max).to_f
    render({ :template=> "templates/random_results"})
  end
  
  def payment_results
    @the_apr = params.fetch("users_apr").to_f
    @the_years = params.fetch("users_years").to_f
    @the_principal = params.fetch("users_principal").to_f
  
    a_r = @the_apr/100
    r = a_r / 12
    n = -@the_years*12
  
    @the_result = ((r * @the_principal) / (1 - ((1+r)**n))).round(2)
    
    render({ :template=> "templates/payment_results"})
  end



















end
