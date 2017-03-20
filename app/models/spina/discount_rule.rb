module Spina
  class DiscountRule < ApplicationRecord
    include Spina::Preferable
    
    belongs_to :discount

    def eligible?(order_item)
      true
    end

  end
end

Dir[Spina::Shop::Engine.root.join *%w(app models spina discounts rules *) ].each do |file|
  require_dependency file
end
