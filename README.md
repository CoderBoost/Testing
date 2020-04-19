# Testing

### How to complete this task ###
Complete the following steps:

1. Clone this project to your machine
2. Add a second textField below the first with 20pt space between.
3. Write the anagram function (details) below
4. Write unit tests to validate the code
5. Add your name to the Bottom of the ReadMe file
6. Create a pull request back to this project

### The anagram function ###
Create a function that returns a boolean based on the following criteria

1. The contents of the second textField is an anagram of the contents of the first
2. Both empty should return false
3. Spacing shouldn't matter
4. Capitalization shouldn't matter

### Example results ###
- "Dormitory", "Dirty room" is true
- "Listen", "silent" is true
- "The eyes",  "They see  " is true
- "what", "what" is false <- same word is not an anagram
- "not", "same" is false
