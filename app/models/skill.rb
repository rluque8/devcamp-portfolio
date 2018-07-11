class Skill < ApplicationRecord

  validates_presence_of :title, :pecent_utilized
end
