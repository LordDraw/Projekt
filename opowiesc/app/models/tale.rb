class Tale < ActiveRecord::Base
  belongs_to :user
  attr_accessible :link, :title, :rate, :rating, :tag_list
  acts_as_taggable
  has_many :comments, :as => :commentable
end
