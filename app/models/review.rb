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
