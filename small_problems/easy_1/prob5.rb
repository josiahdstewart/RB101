# input: short string, output: string in box
# requirements: when empty, small box
# tests: medium legnth string, empty string, space in string
# Data structure: array
# Algo: create empty variable for strint
# create basic format of 2D array: 5 tall, 4 wide: 2 spaces, two edges;
# take string variable, find length.
# loop through array
# add horizontal dashes (number of string length) to 1st, last arr
# print string in middle array
# finish
require 'pry'

WRAPPING_LENGTH = 76

def format_empty_lines(wrap, string_length, external_lines, internal_lines)
  (wrap ? WRAPPING_LENGTH : string_length).times do
    external_lines.insert(2, external_lines[2])
    internal_lines.insert(2, internal_lines[2])
  end
end

def add_space_message(wrap, message, message_length, index_to_insert)
  # inserting blank spots at end of message to fill to 80 characters
  if wrap then message.insert(index_to_insert + 1, (' ' * (WRAPPING_LENGTH - message_length))) end
end

def print_array(arr)
  arr.each do |row|
    row.each_with_index do |col, i|
      if i == row.length - 1
        puts col
      else
        print col
      end
    end
  end
end

def print_in_box(input)
  input_string_length = input.length
  wrapping = input_string_length > WRAPPING_LENGTH
  plus = ['+', '-', '-', '+']
  line = ['|', ' ', ' ', '|']
  input = input.split
  text_length = 0
  text = line.clone # basic format text is being built on; clone is ensuring text isn't a line alias
  box = [plus, line, line, plus]
  box_index = 2 # tracks where each line of text is inserted into box
  insertion_index = 1 # tracking where to insert words in text

  input.each_with_index do |word, index|
    word << ' ' unless !wrapping && index == input.length - 1 # to add spaces in between words
    insertion_index += 1

    if text_length + word.length < WRAPPING_LENGTH
      text_length += word.length # tracking if line exceeds 76 characters
      text.insert(insertion_index, word)
    else
      add_space_message(wrapping, text, text_length, insertion_index)
      insertion_index = 1
      box.insert(box_index, text)
      box_index += 1
      text_length = 0 # resets text_length back to 0; fresh text for next line
      text = line.clone # takes advantage of creating new object; doesn't interfere with other texts added to box
    end
  end

  add_space_message(wrapping, text, text_length, insertion_index)
  format_empty_lines(wrapping, input_string_length, plus, line)
  box.insert(box_index, text)
  print_array(box)
end

print_in_box('The quick brown fox jumped over the lazy dog')
print_in_box('')
print_in_box('Hello, world!')
print_in_box('The self is a relation which relates itself to its own self, or it is that in the relation that the relation relates itself to its own self; the self is not the relation but that the relation relates itself to its own self.')
