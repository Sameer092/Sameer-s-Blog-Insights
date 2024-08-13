# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exist?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"

guard 'livereload' do
  watch(%r{^app/views/.*\.(erb|haml|slim)})     # Watch for changes in view templates
  watch(%r{^app/assets/stylesheets/.*\.(css|tailwind\.css)}) # Watch for changes in Tailwind CSS files
end

guard 'rake', task: 'tailwindcss:build' do
  watch(%r{^app/javascript/.*\.js})
  watch(%r{^app/views/.*\.(erb|haml|slim)})
  watch(%r{^app/helpers/.*\.rb})
  watch(%r{^app/assets/stylesheets/.*\.css})
  watch(%r{^app/assets/stylesheets/.*\.(css|tailwind\.css)})
end
