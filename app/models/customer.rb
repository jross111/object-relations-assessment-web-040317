require 'pry'

class Customer
  attr_accessor :first_name, :last_name
  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    #should return all of the customers
    ALL
  end



  def self.find_by_name(name)
    #given a string of a first name, returns an array containing all customers with that first name
    self.all.detect do |customer|
      customer.full_name == name
    end

  end

  def sef.find_all_by_first_name(first_name)
    #given a string of a first name, returns an array containing all customers with that first name

    self.all.detect do |customer|
      customer.first_name == name
    end

  end


  def self.all_names
    #should return an array of all of the customer full names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    #given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
    Review.new(self, restaurant, content)
  end




end
