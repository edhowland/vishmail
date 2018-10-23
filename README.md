# vishmail
A mail client written Vish


## Abstract

This project is an email client written in  the Vish language  with Ruby
bindings.  It assumes you have some Maildir folders somewhere and you
have installed the MBlaze mail handler CLI package. The user interface
assumes familiarity with Vim navigation commands.

## Features

-  Mimics the Mutt key bindings
- Optimized for screen reader users like Voice Over on the Mac


## Meta Goals of this project

- A larger project than a toy project written in the the Vish language.
- Preamble to recrating Viper using this version of Vish.


So, this project should test the suitability of Vish in a larger context.
It should partition the UI elements into Vish using a functional style
of programming and the low-level stuff in Ruby itself via the Vish FFI
interface.





## Installation

You need Ruby version 2.2+ and Vish 0.6.3+.

### Installing Vish

Pleas follow the steps at [Vish](https://github.com/edhowland/vish)

Once you have it downloaded, add the ./vish/bin to your path.

#### Dependancy on Viper buffer class

Currently, VishMail requires Viper version 2 exact version to be installed
as a folder direct sibling of this folder.
Eventually, the Buffer class will be extracted and be stand-alone.



## Initial setup

In order to get the Rakefile to build the ibx.rb and/or ibx.vsc files
you need to make a valid vishbase.rb - to tell rake where the vishc Ruby file
can be loaded.

So, do these steps:

1. Edit setpath.sh to add the /path/to/vish/bin into your PATH environment
2. Run this code:

```
$ vishc -R -o vishbase.rb -r ./util.rb --template base.erb vishbase.vs
```

3. Test it out

```
$ ./vishbase.rb
/home/edh/dev/vish

$ ./vishbase.rb
```

Now, you can do:

```
$ rake compile_rb
$ ./ibx.rb
...
```


## Making a REPL version

```
$ rake compile_sh
$ ./ibx.sh

....
```

If you type 'q' at the top-level menu, you will be dropped into the Vish REPL.
To return to the program:

```
vish> %ibx
...

q
vish> exit
$
```
