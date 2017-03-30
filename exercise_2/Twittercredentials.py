import tweepy

consumer_key = "KsRHdFVPSfjWPeN3g94eX94XX";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "OBLxPGJoClWYL9wjCt0Zead22SoWsliJ2oghKyCrs8AqiUvq2V";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "1511952991-tc8ULziyVQZqs7eVz52Vswg7X9DqlzeBVxDWabZ";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "qnjejyIWb6qfavon8646Rx6FXJusEYqQ2EMMZhbbieHWw";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



