class Word < ApplicationRecord
  def self.random
    order("RAND()").limit(1).first
  end
end
