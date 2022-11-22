# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Primer
  module Alpha
    # @label OrderedList
    class OrderedListPreview < ViewComponent::Preview
      # @label Playground
      # @param type [Symbol] select [decimal, upper_alpha, lower_alpha, upper_roman, lower_roman]
      def playground(type: :upper_alpha)
        render(Primer::Alpha::OrderedList.new(type: type)) do |c|
          c.with_item { "Item 1" }
          c.with_item { "Item 2" }
          c.with_item { "Item 3" }
        end
      end

      # @label Default options
      def default
        render(Primer::Alpha::OrderedList.new) do |c|
          c.with_item { "Item 1" }
          c.with_item { "Item 2" }
          c.with_item { "Item 3" }
        end
      end
    end
  end
end
