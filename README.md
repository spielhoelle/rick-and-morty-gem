
# The Rick and Morty API Gem

> Hey, did you ever want to hold a terry fold?,
>  I got one right here, grab my terry flap.

[![Build Status](https://api.travis-ci.org/spielhoelle/rick-and-morty-gem.svg?branch=master)](https://travis-ci.org/spielhoelle/rick-and-morty-gem)

**Ruby implementation to the awesome Rick and Morty API**

[The Rick and Morty API](https://rickandmortyapi.com) (or ShlaAPI) is a RESTful API based on the television show [Rick and Morty](https://www.adultswim.com/videos/rick-and-morty). You will access to data about hundreds of characters, images, locations and episodes.

**To get started check the documentation on [rickandmortyapi.com](https://rickandmortyapi.com/documentation)**

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rickmorty'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rickmorty

## Usage
To get eg. all episodes you can do:

`episodes = Rickmorty::Episode.new`

`episodes.all`
and you get something like this returned:
```
[
  {
    "id"=>1,
    "name"=>"Pilot",
    "air_date"=>"December 2, 2013",
    "episode"=>"S01E01",
    "characters"=>[
      "https://rickandmortyapi.com/api/character/1",
      "https://rickandmortyapi.com/api/character/2",
      ...
   "created"=>"2017-11-10T12:56:33.798Z"
   }, {
    ...
  }
 ]
```

### All methods:

Episodes: `Rickmorty::Episode.new`

Characters: `Rickmorty::Character.new`

Locations: `Rickmorty::Location.new`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/spielhoelle/rick-and-morty-gem/issues. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
