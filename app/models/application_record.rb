class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  class Restaurant < ApplicationRecord
    validates :name, :category, :address, presence: true
    validates :category, inclusion: {in: %w("chinese", "italian", "japanese", "french", "belgian")}
    has_many :reviews, :dependent => :destroy
  end

  class Review < ApplicationRecord
    belongs_to :restaurant
    validates :restaurant_id, :presence => true
    validates :ratings, inclusion: {in: %w()}
    
  end


end
