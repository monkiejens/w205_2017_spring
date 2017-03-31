import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT
import sys

arg = sys.argv

conn = psycopg2.connect(database = "tcount", user = "postgres", password = "pass", host = "localhost", port = "5432")
conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
cur = conn.cursor()

# split the input into 2 conditions
threshold = arg[1].split(",")
threshold1 = threshold[0]
threshold2 = threshold[1]

# get list of all words with values between those conditions
cur.execute("SELECT word, count FROM tweetwordcount WHERE count >= %s AND count <= %s;", (threshold1, threshold2))
records = cur.fetchall()
for rec in records:
	print rec[0],":",rec[1]

