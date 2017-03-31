import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT
import sys

arg = sys.argv

conn = psycopg2.connect(database = "tcount", user = "postgres", password = "pass", host = "localhost", port = "5432")
conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
cur = conn.cursor()
        
# output depends on length of command line arguments
if len(arg) > 2:
        print "Too many inputs, please revise"

# output count for specific word
elif len(arg) == 2:
	word = str(arg[1])
        cur.execute("SELECT word, count FROM tweetwordcount WHERE word = %s;", (word,))
        result = cur.fetchone()
        if result == None:
		print "Total number of occurrences of", word, ": 0"
	else:
		print "Total number of occurrences of",word,":", result[1]
	conn.commit()

# output all word and counts
elif len(arg) == 1:
        cur.execute("SELECT word, count FROM Tweetwordcount")
        wordlist = cur.fetchall()
        for word in sorted(wordlist):
		print word
	conn.commit() 
