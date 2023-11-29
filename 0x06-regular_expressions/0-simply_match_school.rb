#!/usr/bin/env ruby

# Check if an argument is provided
if ARGV.empty?
    puts "Usage: #{$PROGRAM_NAME} <input_string>"
    exit 1
  end
  
  # Get the input string from the command line argument
  input_string = ARGV[0]
  
  # Define the regular expression
  regex = /School/
  
  # Use the regular expression to find matches
  matches = input_string.scan(regex)
  
  # Output the matches
  puts matches.join
  