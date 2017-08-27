class Application < ApplicationRecord
    include Placeholder

    validates_presence_of :title, :image, :thumbnail, :body

    def self.ember
        where(subtitle: "Ember.js")
    end

    scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails")}

    after_initialize :set_defaults

    def set_defaults
        self.image ||= Placeholder.image_generator(height: '600', width: '400')
        self.thumbnail ||= Placeholder.image_generator(height: '350', width: '200')
    end
end
