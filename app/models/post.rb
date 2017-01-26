class Post < ApplicationRecord
#    attr_accesible :body, :title
    validates :title, :presence => true, :length => { :minimum => 5 } 
    validates :body, :presence => true

end
