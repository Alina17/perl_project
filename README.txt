Part 1:
Write a Perl program to accomplish each of the following on the file solar.txt (see link at
the class homepage)
1. Print all records that do not list a discoverer in the eighth field.
2. Print every record after erasing the second field. Note: It would be better to say
"print every record" omitting the second field.
3. Print the records for satellites that have negative orbital periods. (A negative
orbital period simply means that the satellite orbits in a counterclockwise
direction.)
4. Print the data for the objects discovered by the Voyager2 space probe.
5. Print each record with the orbital period given in seconds rather than days

About solar.txt file:

This file contains lines of 9 items, the first being:
Adrastea XV Jupiter 129000 0.30 0.00 0.00 Jewitt 1979
in alphabetical order by the name of the planet or moon (first field).
The text in [] is the corresponding field from the line above.
The fields in this file are:
1. Name of planet or moon [Adrastea]
2. Number of moon or planet (roman numerals) [XV]
3. Name of the abject around which the satellite orbits [Jupiter]
4. Orbital radius (semimajor axis) in kilometers [129000]
5. Orbital period in days [0.30]
6. Orbital inclination in degrees [0.00]
7. Orbital eccentricity [0.00]
8. Discoverer [Jewitt]
9. Year of discovery [1979] 

Part 2:
Separate, count and sort the words in the example text file, electricity.txt (see link at the
class homepage). Sort in the following orders and your output should be nicely lined up
in columns to the output file.
1. alphabetically (ignoring capitalization),
2. alphabetically with upper case words just in front of lower case words with the
same initial characters
3. by frequency, from high to low, (any order for equal frequency)
4. by frequency, with alphabetical order for words with the same frequency

Part 3: 
Write a perl program that replaces all digits with the name of the digit, so every "0" is
replaced with "zero" , "1" is replaced with "one", ... "9" is replaced with "nine". Test your
program with your own input file containing digits and letters. Your program should
write the result to output file and you need to print both input and output files along with
your source code. 