module ActiveRecord
  module Querying
    delegate :find_each, :find_in_batches, :in_batches, to: :all
  end
end
