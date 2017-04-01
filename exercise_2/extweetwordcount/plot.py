import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT
import sys

arg = sys.argv

conn = psycopg2.connect(database = "tcount", user = "postgres", password = "pass", host = "localhost", port = "5432")
conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
cur = conn.cursor()


cur.execute("SELECT word, count FROM Tweetwordcount ORDER BY count DESC")
wordlist = cur.fetchall()
sorted_list = []
for i in range(0,20):
	sorted_list.append(wordlist[i])
print sorted_list
conn.commit()
