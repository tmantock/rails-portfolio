class Application < ApplicationRecord
    validates_presence_of :title, :image, :thumbnail, :body
end
