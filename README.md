Experimental backport of `ActiveRecord::Relation#in_batches` for Rails 4 applications.

## Install

Add this line to your Gemfile.

    gem "activerecord-in_batches", git: "git://github.com/siadat/in_batches.git"

## Usage

    Person.in_batches.each_record(&:party_all_night!)
    Person.in_batches.update_all(awesome: true)
    Person.in_batches.delete_all
    Person.in_batches(of: 10_000).map do |relation|
      relation.delete_all
      sleep 10 # Throttles delete queries
    end

## Options

Set batch size.

    of: 1000

Set limits.

    begin_at: nil
    end_at: nil

If true, yielded records will be loaded.

    load: false

## License

This gem is released under the [MIT License](http://www.opensource.org/licenses/MIT).
