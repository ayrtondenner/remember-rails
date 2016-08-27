class Friend < ActiveRecord::Base
    has_many :annotations
    
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
