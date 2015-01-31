Band Tracker App
========

by Alister Fenix

This app allows the user to create a list of their favorite bands and associate each band with any number of venues. Bands can play at many venues, and venues can of course have many bands making this an exercise in creating a many to many relationship using Active Record. All data that is inputted is stored in a postgres database.

Installation
------------

Install band_tracker by first cloning the repository.  
```
$ git clone http://github.com/afenix/band_tracker
```

```

Install all of the required gems:
```
$ gem pry
$ gem rspec
$ gem pg
$ gem sinatra
$ gem sinatra-contrib
$ gem("sinatra-activerecord")
$ gem("rake")
$ gem("shoulda-matchers")
$ bundle install

```
Install and start PostGres on system

```
```
$ brew install postgres
echo "export PGDATA=/usr/local/var/postgres" >> ~/.bash_profile
echo "export PGHOST=/tmp" >> ~/.bash_profile
source ~/.bash_profile

To start the Postgres server, simply run:
postgres

````
Start the webserver:

```
$ ruby app.rb
```

In your web browser, go to http://localhost:4567

Contribute
----------

- Issue Tracker: github.com/afenix/band_tracker

```/issues

- Source Code: github.com/afenix/band_tracker

Support
-------

This app is a work in progress.  By no means is it complete. However, if you are having issues, please let me know at: a.fenix@icloud.com

License
=======

Free and OS License. Code for the people by the people. 2015 Alister Fenix
