# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Card.destroy_all
Card.create!(
  topic: "Polymorphic association",
  definition: %{
With polymorphic associations, a model can belong to more than one other model, on a single association. For example, you might have a picture model that belongs to either an employee model or a product model. You can think of a polymorphic belongs_to declaration as setting up an interface that any other model can use.

* [Ruby on Rails Guide](http://guides.rubyonrails.org/association_basics.html#polymorphic-associations)
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

When you do `Firm.create(name: "37signals")`, this record will be saved in the companies table with `type = "Firm"`. You can then fetch this row again using `Company.where(name: '37signals').first` and it will return a Firm object.

If you don't have a type column defined in your table, single-table inheritance won't be triggered. In that case, it'll work just like normal subclasses with no special magic for differentiating between them or reloading the right type with find.

Note, all the attributes for all the cases are kept in the same table.

* [Ruby on Rails API](http://api.rubyonrails.org/classes/ActiveRecord/Inheritance.html)
  }
)
Card.create!(
  topic: "ActiveSupport::Inflector",
  definition: %{
The Inflector transforms words from singular to plural, class names to table names, modularized class names to ones without, and class names to foreign keys. The default inflections for pluralization, singularization, and uncountable words are kept in `inflections.rb`.
  }
)
Card.create!(
  topic: "Active Record Callbacks",
  definition: %{
Callbacks are methods that get called at certain moments of an object's life cycle. With callbacks it is possible to write code that will run whenever an Active Record object is created, saved, updated, deleted, validated, or loaded from the database.

### Creating an Object
* `before_validation`
* `after_validation`
* `before_save`
* `around_save`
* `before_create`
* `around_create`
* `after_create`
* `after_save`
* `after_commit`/`after_rollback`

### Updating an Object
* `before_validation`
* `after_validation`
* `before_save`
* `around_save`
* `before_update`
* `around_update`
* `after_update`
* `after_save`
* `after_commit`/`after_rollback`

### Destroying an Object
* `before_destroy`
* `around_destroy`
* `after_destroy`
* `after_commit`/`after_rollback`
  }
)
Card.create!(
  topic: "Mock Objects",
  definition: %{
In object-oriented programming, mock objects are simulated objects that mimic the behavior of real objects in controlled ways. A programmer typically creates a mock object to test the behavior of some other object, in much the same way that a car designer uses a crash test dummy to simulate the dynamic behavior of a human in vehicle impacts.

In a unit test, mock objects can simulate the behavior of complex, real objects and are therefore useful when a real object is impractical or impossible to incorporate into a unit test.

Classification between mocks, fakes, and stubs is highly inconsistent across literature. Consistent among the literature, though, is that they all represent a production object in a testing environment by exposing the same interface.

Example: Mocha asynchronous test framework for JS

### Links

* [Wikipedia - Mock Objects](https://en.wikipedia.org/wiki/Mock_object)
  }
)
Card.create!(
  topic: "Authentication vs. Authorization",
  definition: %{
Authentication is determining whether or not someone who visits your site is who you think they are, like logging in. Authorization is deciding whether or not a user is allowed to perform some sort of action, like creating a new post.
  }
)
Card.create!(
  topic: "Railties",
  definition: %(
All major components of Rails are created as a subclass of `Rails::Railtie`. For example, Active Record (which handles query syntax to a database) and Action Controller (which handles the base controller logic) are both Railties. `Railtie` is an abstract class which is not meant for instantiation, and even throws an error on the `#initialize` method unless it's overwritten in a subclass. Other methods on the `Railtie` class include `#rake_tasks`, `#console`, `#runner`, and `#generators`.

### Links

* [Class definition](https://github.com/rails/rails/blob/master/railties/lib/rails/railtie.rb)
* [Introduction to Railties](http://wangjohn.github.io/railties/rails/gsoc/2013/07/10/introduction-to-railties.html)
  )
)
Card.create!(
  topic: "Antipattern",
  definition: %(
According to the authors of Design Patterns, there must be at least two key elements present to formally distinguish an actual anti-pattern from a simple bad habit, bad practice, or bad idea:

1. A commonly used process, structure or pattern of action that despite initially appearing to be an appropriate and effective response to a problem, typically has more bad consequences than beneficial results, and
2. A good alternative solution exists that is documented, repeatable and proven to be effective.

### Links

* [Wikipedia - Anti-pattern](https://en.wikipedia.org/wiki/Anti-pattern)
  )
)
Card.create!(
  topic: "Foreign Key",
  definition: %(
A foreign key is a column (or columns) that references a column (most often the primary key) of another table. The purpose of the foreign key is to ensure referential integrity of the data. In other words, only values that are supposed to appear in the database are permitted. For example a `Book` might have an `author_id` that contains the unique primary key of the Author so that they are linked.

Rails supports database-enforced foreign keys as of version 4.2.

### Links

* [Rails 4.2 Release Notes](http://edgeguides.rubyonrails.org/4_2_release_notes.html#foreign-key-support)
* [Foreign Keys in Rails 4.2](https://richonrails.com/articles/foreign-keys-in-rails-4-2)
* [Thoughtbot Guide to Rails foreign_keys](https://robots.thoughtbot.com/referential-integrity-with-foreign-keys)
* [Foreign Key Gotchas](http://sevenseacat.net/2015/02/24/add_foreign_key_gotchas.html)
  )
)
Card.create!(
  topic: "Rack",
  definition: %(
Rack provides a modular and adaptable interface for developing web applications in Ruby. By wrapping HTTP requests and responses it unifies the API for web servers, web frameworks, and software in between (the so-called middleware) into a single method call.

Rack is used by many Ruby web frameworks and libraries, such as Ruby On Rails and Sinatra. It is available as a Ruby Gem.

### Links

* [Wikipedia - Rack (web server interface)](https://en.wikipedia.org/wiki/Rack_(web_server_interface))
* [Introducing Rack](http://chneukirchen.org/blog/archive/2007/02/introducing-rack.html)
  )
)
Card.create!(
  topic: "Active Job",
  definition: %(
Active Job is a framework for declaring jobs and making them run on a variety of queuing backends. These jobs can be everything from regularly scheduled clean-ups, to billing charges, to mailings. Anything that can be chopped up into small units of work and run in parallel, really.

The main point is to ensure that all Rails apps will have a job infrastructure in place. We can then have framework features and other gems build on top of that, without having to worry about API differences between various job runners such as Delayed Job and Resque. Picking your queuing backend becomes more of an operational concern, then. And you'll be able to switch between them without having to rewrite your jobs.

### Links

* [Active Job Basics](http://edgeguides.rubyonrails.org/active_job_basics.html)
  )
)
