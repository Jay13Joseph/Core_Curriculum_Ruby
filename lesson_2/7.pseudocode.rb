keyword	            meaning
START	              start of the program
SET	                sets a variable we can use for later
GET	                retrieve input from user
PRINT	              displays output to user
READ	              retrieve value from variable
IF / ELSE IF / ELSE	show conditional branches in logic
WHILE	              show looping logic
END	                end of the program

1. a method that returns the sum of two integers

FORMAL
START
  GET integer1
  GET integer2
  SET result = integer1 + integer2
  PRINT result
END

2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

FORMAL
SET arr = {'1', '2', '3', '4', '5'}
COUNT = 0
  WHILE COUNT <= arr.length
  ADDS string to new_arr
  END LOOP
  PRINT new_arr
END

3. a method that takes an array of integers,
and returns a new array with every other element from the original array,
starting with the first element. For instance:

Get values at indices 0, 2, 4 (define a method that simply returns all values at even-numbered indices)
Add new values to a new array
Print new array

4. a method that determines the index of the 3rd occurrence of a given character in a string.
For instance, if the given character is 'x' and the string is 'axbxcdxex',
the method should return 6 (the index of the 3rd 'x').
If the given character does not occur at least 3 times, return nil.

GET string
Index the characters within the string
Return the index of the 3rd occurrence, or 'nil' if there are fewer than 3
END

5. a method that takes two arrays of numbers and returns the result of merging the arrays.
The elements of the first array should become the elements at the even indexes of the returned array,
while the elements of the second array should become the elements at the odd indexes.

Get 2 arrays
Iterate through arrays, alternating between arr1 and arr2
Push values to new_arr as it iterates, first from arr1, then arr2
Return new_arr
