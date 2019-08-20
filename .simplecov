SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new(
  [
    SimpleCov::Formatter::HTMLFormatter,
  ]
)

SimpleCov.start do
  add_filter '/spec/'
  add_filter '/config/'
  add_filter '/public/'
  add_filter '/system/'
  add_filter '/bin/'

  add_group 'Domains', 'domains'
  add_group 'Library code', 'lib'
end
