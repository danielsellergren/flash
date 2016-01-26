# Flashcards

Simple flashcard app for programming concepts because I couldn't find any index cards.

## Installation

Clone the repository.

    git clone https://github.com/danielsellergren/flashcards.git
    cd flashcards

Bundle the Gemfile.

    bundle

Create the database.

    createdb flashcards_development
    bundle exec rake db:migrate
    bundle exec rake db:seed

## Usage

Add your own cards to the seed file or add the resources route and set up a little CMS for creating and managing your cards. I'll probably do something like it soon, I just wanted something that was functional at the moment.
