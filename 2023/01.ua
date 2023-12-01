# Read the input onto the stack. The only value on the
#  stack will be a string array. Its newlines `\n` are
#  encoded as `\n` characters.
&fras "2023/01"

# Create a mask that selects all characters except \n.
#  Put it onto the stack.
≠,@\n

# Paritions the input based on the above mask. For every
# partitioned substring it does the following:
#  - duplicating the puzzle input `.`
#  - create a mask for characters smaller <= `9`, aka
#    integers.
#  - only keep those elements by applying the keep filter `▽`
#  - duplicating the resulting string, as we need it twice (`.`)
#  - first selecting the last element by reversing it and selecting
#    the first character (`⊢⇌`)
#  - swapping the first two stack values (our last letter and input)
#  - selecting the first character (`⊢`)
#  - joining both together, creating the required code number (`⊂`)
#  - parsing it into an integer (`parse`)
# 
# The result is an array with integers where each integer represents
#  the code number of a single row of our puzzle input.
#  We then fold over the array, summing its elements together (`/+`).
PartI ← /+⊜(parse⊂⊢:⊢⇌.▽≤@9.)
PartI
