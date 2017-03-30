from __future__ import absolute_import, print_function, unicode_literals

from collections import Counter
from streamparse.bolt import Bolt
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT



class WordCounter(Bolt):

    def initialize(self, conf, ctx):
        self.counts = Counter()
	# Write codes to increment the wordcount in Postgres
	# Connect to psycog - use psycopg to interact with Postgres
	# Database name: Tcount
	# Table name: Tweetwordcount
	# you need to create both the database and the table in advance
	
	# Using psycopg-sample.py structure
	# Connect to postgres database
	conn = psycopg2.connect(database = "postgres", user="postgres", password = "pass", host = "localhost", port = "5432")
	conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
           
	# Create database tcount
        try:
                conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
                cur = conn.cursor()
                cur.execute("CREATE DATABASE tcount")
                cur.close()
                conn.close()
        except:
                print("Could not create tcount") 

    def process(self, tup):
        
	conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
	#create cursor
	cur = conn.cursor()
	conn.commit()

	word = tup.values[0]
	
        # Increment the local count
        self.counts[word] += 1
        self.emit([word, self.counts[word]])
	
	# check the word, if exists, add 1 to value / if not, initiate word
        if self.counts[word] == 0:
		cur.execute("INSERT INTO tweetwordcount (word, count) VALUES (word, self.counts[word])")
	else:
		cur.execute("UPDATE tweetwordcount SET count=%s WHERE word=%s", (self.counts[word], word))
	conn.commit()
	

	# Log the count - just to see the topology running
        self.log('%s: %d' % (word, self.counts[word]))
