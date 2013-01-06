class Comment < ActiveRecord::Base
  belongs_to :commantable, :polymorphic => true
  attr_accessible :content, :tale_id
end
