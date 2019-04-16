class Galaxy < ApplicationRecord
    has_many :planets
    validates :name, presence: true

    #This allows us to post to the planets table in our nested form, the reject_if method will allows us to leave
    #the field blank and post to galaxy alone by ignoring our validation in the planet model.
    accepts_nested_attributes_for :planets, reject_if: proc { |attributes| attributes['name'].blank? } 
end
