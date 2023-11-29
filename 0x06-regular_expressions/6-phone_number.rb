#!/usr/bin/env ruby

# Check if an argument is provided
if ARGV.empty?
    puts "Usage: #{$PROGRAM_NAME} <phone_number>"
    exit 1
  end
  
  # Get the phone number from the command line argument
  phone_number = ARGV[0]
  
  # Define the regular expression for a 10-digit phone number
  regex = /^[0-9]{10}$/
  
  # Check if the phone number matches the regular expression
  if phone_number.match?(regex)
    puts "#{phone_number}$"
  else
    puts "$"
  end
  