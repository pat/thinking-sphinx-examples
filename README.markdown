To get this running, you'll need Sphinx and PostgreSQL installed. If you want to use MySQL instead of PostgreSQL, that's fine, just modify the `Gemfile` and `config/database.yml` accordingly.

Then, once you've bundled, run the following to set things up:

```
rake db:create db:migrate ts:rebuild
rails s
```

Open up http://127.0.0.1:3000 and you'll find a very basic index page with both simple and advanced search options. Nothing too crazy here, and don't take the form layout as an example of something good and proper - it's just an example to show what's possible.

`app/controllers/articles_controller.rb` has all the smarts - and it could be cleaner too, but I wanted to go with simple and obvious.
