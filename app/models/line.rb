class Line < ApplicationRecord
    has_many :poem_lines
    has_many :poems, through: :poem_lines
end
