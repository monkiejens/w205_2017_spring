Assumptions:
- EC2 instance based on “UCB MIDS W205 EX2-FULL” with ID “ami-d4dd4ec3”
- psycopg installed
- hadoop and postgres started

Instructions:

1) As W205 user, clone the github repository:
git clone https://github.com/monkiejens/w205_2017_spring.git

2)  Start psql postgres:
psql -U postgres

3)  Create the tcount database:
CREATE DATABASE tcount

4)  Create the tweetwordcount table:
CREATE TABLE tweetwordcount (word TEXT PRIMARY KEY     NOT NULL,
>        count INT     NOT NULL);

5)  Exit from postgres

6)  Change directory to extweetwordcount

7)  Start storm for the extweetwordcount project:
sparse run

8)  Let it run for a while!  

9)  Use any of the python programs to check word counts.
histogram.py:  enter in the format <int,int> to get all words with counts between those 2 integers

finalresults.py:  without any input, this program will result in a sorted tuples in alphabetical order with their counts.  With a string input, it will show the count of the string.

