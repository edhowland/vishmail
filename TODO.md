# Todo list for VishMail

## Todo: Extract out the Buffer class from the Viper package.

Add a new ./lib/buffer folder w/ buffer.rb in there


## Todo  Add mkrepl task in Rakefile

Will create ibx.sh shell script.
Use ERb to load in template
Make executable
Add into clean task


## Todo: Find orphaned configuration shell script

This is the 3rd  shell script that is not using the .sh extension and has bad name


## Todo: Figure a way to recreate vishbase.rb from base.erb

It is a checken and egg problem. vishbase.rb is used to compute the location
of the /path/to/vish/bin/vishc file to load 
and get the compile + render methods from there.


