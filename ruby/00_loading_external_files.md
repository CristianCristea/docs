# load, require, require_relative

## load

- when ruby encounters load will read from the other file
- ruby will reload the file each time it find the load method
- usage:

```ruby
puts "first file code"
load "./another_file.rb"
puts "first file code"
```

## require

- even if called multiple times require will load the file only once
- you don't have to specify the file extension
- require treats the .rb files like the files(extensions) written in C

- usage:

```ruby
require 'feature'
```

## require_relative

Require relies on you having installed (e.g. gem install [package]) a package somewhere on your system for that functionality.
When using require you can use the "./" format for a file in the current directory, e.g. require "./my_file" but that is not a common or recommended practice and you should use require_relative instead.

require_relative
This simply means include the file 'relative to the location of the file with the require_relative statement'. I generally recommend that files should be "within" the current directory tree as opposed to "up", e.g. don't use

```ruby
require_relative '../../../filename'
```

- Use require for installed gems
- Use require_relative for local files
- require uses your \$LOAD_PATH to find the files.
- require_relative uses the current location of the file using the statement
