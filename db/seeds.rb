# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Card.destroy_all
Card.create!(
  topic: "Polymorphism",
  definition: %{
With polymorphic associations, a model can belong to more than one other model, on a single association. For example, you might have a picture model that belongs to either an employee model or a product model. You can think of a polymorphic belongs_to declaration as setting up an interface that any other model can use.

* http://guides.rubyonrails.org/association_basics.html#polymorphic-associations
  }
)
Card.create!(
  topic: "Single Table Inheritance",
  definition: %{
Active Record allows inheritance by storing the name of the class in a column that by default is named "type" (can be changed by overwriting Base.inheritance_column). This means that an inheritance looking like this:

    class Company < ActiveRecord::Base; end
    class Firm < Company; end
    class Client < Company; end
    class PriorityClient < Client; end

* http://api.rubyonrails.org/classes/ActiveRecord/Inheritance.html
  }
)
