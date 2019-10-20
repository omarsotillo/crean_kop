# CreanCop

This repository hosts my personal configuration gem for rubocop.

The configuration provided here is intended to apply to all of my projects and crean repositories.

Your application might have special rules of its own, which you can freely override in your local configuration. But if you think a rule is of general
relevance, than it should probably live here.

## Usage

Include this gem in your Gemfile:

```ruby
gem 'crean_cop'
```

Let your `.rubocop.yml` inherit from this gem:

```yml
inherit_gem:
  crean_cop:
    - default.yml
```

## Customizing rules

The snippet above is everything needed to use this configuration as default.
Starting from there it is possible to make local changes to the configuration.

Take this example `.rubocop.yml`:

```yml
inherit_gem:
  crean_cop:
    - default.yml

# We still have unfixed offenses in some files
inherit_from: .rubocop_todo.yml

# This project agreed on a different line length than the rest of the company
Metrics/LineLength:
  Max: 120
```
