module ActiveRecord
  class Relation
    protected

      def load_records(records)
        @records = records
        @loaded = true
      end
  end
end
