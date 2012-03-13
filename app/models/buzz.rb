class Buzz < ActiveRecord::Base
	belongs_to :bee
	
	validates :content, :length => { :maximum => 140 }
end
