require 'awesome_print'
AwesomePrint.pry!
Pry.config.editor = 'vim'

if defined?(PryDebugger)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

# Pry.config.prompt = proc do |obj, _, _|
#   ppt = "\e[1;32m"
#   ppt << RUBY_VERSION.to_s
#   "#{ppt} >.< [#{obj}]>\e[0m "
# end


# Pry.config.exception_handler = proc do |output, exception, _|
#   output.puts "\e[31m#{exception.class}: #{exception.message}"
#   output.puts "from #{exception.backtrace.first}\e[0m"
# end
