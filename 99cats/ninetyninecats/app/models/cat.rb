# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birthdate   :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "action_view"

class Cat < ApplicationRecord
    COLORS = ["Orange", "Black", "Calico", "Gray", "Tabby", "White"]

    validates :birthdate, :color, :name, :sex, :description, presence: true
    validates :color, inclusion: COLORS
    validates :sex, inclusion: ["M", "F"] 

    include ActionView::Helpers::DateHelper

    def age
        time_ago_in_words(birthdate)
    end

end
