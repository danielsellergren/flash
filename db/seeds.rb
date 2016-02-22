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
Card.create!(
  topic: "Duck Typing",
  definition: %(
In computer programming with object-oriented programming languages, duck typing is a layer of programming language and design rules on top of typing. Typing is concerned with assigning a type to any object. Duck typing is concerned with establishing the suitability of an object for some purpose. With normal typing, suitability is assumed to be determined by an object's type only. In duck typing, an object's suitability is determined by the presence of certain methods and properties (with appropriate meaning), rather than the actual type of the object.

The name of the concept refers to the duck test, attributed to James Whitcomb Riley, which may be phrased as follows:

> When I see a bird that walks like a duck and swims like a duck and quacks like a duck, I call that bird a duck.

In duck typing, a programmer is only concerned with ensuring that objects behave as demanded of them in a given context, rather than ensuring that they are of a specific class. For example, in a non-duck-typed language, one would create a function that requires that the object passed into it be of type Duck, or descended from type Duck, in order to ensure that that function can then use the object's walk and quack methods. In a duck-typed language, the function would take an object of any type and simply call its walk and quack methods, producing a run-time error if they are not defined. Instead of specifying types formally, duck typing practices rely on documentation, clear code, and testing to ensure correct use.

    class Duck
      def quack
        puts "Quaaaaaack!"
      end

      def feathers
        puts "The duck has white and gray feathers."
      end
    end

    class Person
      def quack
        puts "The person imitates a duck."
      end

      def feathers
        puts "The person takes a feather from the ground and shows it."
      end
    end
  )
)
Card.create!(
  topic: "String #{ 'interpolation' }",
  definition: %(
In computer programming, string interpolation or variable interpolation (also variable substitution or variable expansion) is the process of evaluating a string literal containing one or more placeholders, yielding a result in which the placeholders are replaced with their corresponding values. It is a form of simple template processing, or, in formal terms, a form of Quasi-quotation (or logic substitution interpretation). String interpolation allows for easier and more intuitive string formatting and content-specification compared with string concatenation.

    apples = 4
    puts "I have \#{apples} apples"
    # or
    puts "I have %s apples" % apples
    # or
    puts "I have %{a} apples" % {a: apples}

The output will be:

    I have 4 apples
  )
)
Card.create!(
  topic: "Finite-state Machine",
  definition: %(
A finite-state machine (FSM) or finite-state automaton (plural: automata), or simply a state machine, is a mathematical model of computation used to design both computer programs and sequential logic circuits. It is conceived as an abstract machine that can be in one of a finite number of states. The machine is in only one state at a time; the state it is in at any given time is called the current state. It can change from one state to another when initiated by a triggering event or condition; this is called a transition. A particular FSM is defined by a list of its states, and the triggering condition for each transition.

### Links

* [Wikipedia - Finite-state machine](https://en.wikipedia.org/wiki/Finite-state_machine)
  )
)
Card.create!(
  topic: "Foreign Function Interface",
  definition: %(
A foreign function interface (FFI) is a mechanism by which a program written in one programming language can call routines or make use of services written in another. In most cases, a FFI is defined by a "higher-level" language, so that it may employ services defined and implemented in a lower level language, typically a systems language like C or C++. This is typically done to either access OS services in the language in which the OS' API is defined, or for performance considerations.

The primary function of a FFI is to mate the semantics and calling conventions of one programming language (the host language, or the language which defines the FFI), with the semantics and conventions of another (the guest language). This process must also take into consideration the runtime environments and/or application binary interfaces of both. This can be done in several ways:

* Requiring that guest-language functions which are to be host-language callable be specified or implemented in a particular way; often using a compatibility library of some sort.
* Use of a tool to automatically "wrap" guest-language functions with appropriate glue code, which performs any necessary translation.
* Use of wrapper libraries
* Restricting the set of host language capabilities which can be used cross-language. For example, C++ functions called from C may not (in general) include reference parameters or throw exceptions.

The major dynamic languages, such as Python, Perl, Tcl, and Ruby, all provide easy access to native code written in C/C++ (or any other language obeying C/C++ calling conventions).

### Links

* [Wikipedia - Foreign function interface](https://en.wikipedia.org/wiki/Foreign_function_interface)
  )
)
Card.create!(
  topic: "Functional programming",
  definition: %(
In computer science, functional programming is a programming paradigm—a style of building the structure and elements of computer programs—that treats computation as the evaluation of mathematical functions and avoids changing-state and mutable data. It is a declarative programming paradigm, which means programming is done with expressions. In functional code, the output value of a function depends only on the arguments that are input to the function, so calling a function f twice with the same value for an argument x will produce the same result f(x) each time. Eliminating side effects, i.e. changes in state that do not depend on the function inputs, can make it much easier to understand and predict the behavior of a program, which is one of the key motivations for the development of functional programming.

Functional programming has its roots in lambda calculus, a formal system developed in the 1930s to investigate computability, the Entscheidungsproblem, function definition, function application, and recursion. Many functional programming languages can be viewed as elaborations on the lambda calculus. Another well-known declarative programming paradigm, logic programming, is based on relations.[1]

In contrast, imperative programming changes state with commands in the source language, the most simple example being assignment. Imperative programming does have functions—not in the mathematical sense—but in the sense of subroutines. They can have side effects that may change the value of program state. Functions without return values therefore make sense. Because of this, they lack referential transparency, i.e. the same language expression can result in different values at different times depending on the state of the executing program.

### Links

* [Wikipedia - Functional programming](https://en.wikipedia.org/wiki/Functional_programming)
  )
)
Card.create!(
  topic: "Segmentation Fault",
  definition: %(
In computing, a segmentation fault (often shortened to segfault) or access violation is a fault raised by hardware with memory protection, notifying an operating system (OS) about a memory access violation; on x86 computers this is a form of general protection fault. The OS kernel will in response usually perform some corrective action, generally passing the fault on to the offending process by sending the process a signal. Processes can in some cases install a custom signal handler, allowing them to recover on their own, but otherwise the OS default signal handler is used, generally causing abnormal termination of the process (a program crash), and sometimes a core dump.

Segmentation faults are a common class of error in programs written in languages like C that provide low-level memory access. They arise primarily due to errors in use of pointers for virtual memory addressing, particularly illegal access. Another type of memory access error is a bus error, which also has various causes, but is today much rarer; these occur primarily due to incorrect physical memory addressing, or due to misaligned memory access – these are memory references that the hardware cannot address, rather than references that a process is not allowed to address.

### Links

* [Wikipedia - Segmentation fault](https://en.wikipedia.org/wiki/Segmentation_fault)
  )
)
