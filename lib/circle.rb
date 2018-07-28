class Circle < ActiveRecord::Base
  has_many(:decisions)
end
