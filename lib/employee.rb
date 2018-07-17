class Employee < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :store, :first_name, :last_name
  validates :hourly_rate, inclusion: { in: 40..200 }

end
