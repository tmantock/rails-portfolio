class Application < ApplicationRecord
    validates_presence_of :title, :image, :thumbnail, :body

    def self.ember
        where(subtitle: "Ember.js")
    end

    scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails")}
end
