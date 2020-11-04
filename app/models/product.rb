class Product < ApplicationRecord
    has_one :cart_item, dependent: :destroy
end
