class Assit < ApplicationRecord
  enum status: %i[good poor bad]
end
