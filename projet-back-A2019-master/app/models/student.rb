# frozen_string_literal: true
class Student < ApplicationRecord
    validates :name, :last_name, presence: true
end
