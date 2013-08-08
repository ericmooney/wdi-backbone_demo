class Question < ActiveRecord::Base
  attr_accessible :content

  validates :content, :presence => true, :uniqueness => true, :format => {:with => /\?/}
end
