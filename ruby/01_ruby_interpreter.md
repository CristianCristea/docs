# Ruby interpreter

Switch : Description : Example of usage

-c Checks the syntax of a program file without executing the program
`$ ruby -c c2f.rb`
-w Gives warning messages during program execution
`$ ruby -w c2f.rb`
-e Executes the code provided in quotation marks on the command line
`ruby -e 'puts "Code demo!"'`
-l Line mode: prints a newline after every line of output
`$ ruby -le 'print "+ newline!"'`
-rname Requires the named feature
`$ ruby –rprofile`
-v Shows Ruby version information and executes the program in verbose mode
`$ ruby –v`
--version Shows Ruby version information
`$ ruby –-version`
-h Shows information about all command-line switches for the interpreter
`$ ruby –h`
-cw combination, which checks the syntax of the file without executing it, while also giving you warnings:
`$ ruby -cw filename`
