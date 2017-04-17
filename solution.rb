# Please copy/paste all three classes into this file to submit your solution!
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




require 'pry'


class Restaurant
  attr_accessor :name
  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    #returns an array of all restaurants
    ALL
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
    self.all.detect do |rest|
      rest.name == name

  end

  def reviews
    #returns an array of all reviews for that restaurant
    Review.all.find_all do |review|
      review.restaurant == self
    end
  end

  def customers
    #should return all of the customers who have written reviews of that restaurant.
    self.reviews.map do |review|
      review.customer
    end
  end




end


require 'pry'

class Review
  attr_reader :customer
  attr_accessor :content, :restaurant

  ALL = []

  def initialize( customer, restaurant, content )
    @content = content
    @customer = customer
    @restaurant = restaurant
    ALL << self
  end


  def self.all
    #returns all of the reviews
    ALL
  end
end
