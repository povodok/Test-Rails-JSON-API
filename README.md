# Rails JSON API

## Download

```bash
git clone git@github.com:povodok/test_rails_json_api.git
cd test_rails_json_api
```

Run

```bash
bundle install
```

## Setup database

```bash
rails db:setup
```

## Curl examples

Start rails server

```bash
rails s
```

Open new terminal tab and execute:

```bash
$ curl -i --request GET http://localhost:3000/categories --header "Accept: application/json"
```

This returns all categories.

Now request one category by it's slug:

```bash
$ curl -i --request GET http://localhost:3000/categories/phones --header "Accept: application/json"
