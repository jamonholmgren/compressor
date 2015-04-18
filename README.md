# Compressor

Compressor is a RubyMotion gem that speeds up your RubyMotion compile times by concatenating your source files. It typically speeds up your fresh builds by 70-95%.

## Installation

```ruby
gem "compressor"
```

## Usage

In your Rakefile, add the following to the bottom of your setup block:

```ruby
# ...

Motion::Project::App.setup do |app|
  # ...

  app.concat_files
end
```

### Options

Exclude files by passing in regex or strings:

```ruby
app.concat_files exclude: [ /app/, "/app/" ]
```

Choose the number of files to break into, for parallel builds (default is 4):

```ruby
app.concat_files parallel: 3
```

A typical setup is:

```ruby
app.development do
  app.concat_files exclude: [ "/app/" ], parallel: 3
end

app.release do
  app.concat_files
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
