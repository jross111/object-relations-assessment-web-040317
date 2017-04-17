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
