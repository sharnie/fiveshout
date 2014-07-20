class Shout < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

  validates_presence_of :text

  scope :recent, -> (count){
    order('created_at DESC').limit(count)
  }
end
