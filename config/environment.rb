require "sinatra/activerecord"
require "require_all"

require_all "app"

ActiveRecord::Base.establish_connection({adapter: "sqlite3", database:"db/treefarm.db"})