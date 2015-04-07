import urllib2
import json
import urllib

headers = {'content-type': 'application/json'}

a = {'b' : 2, 'c' : 6}
payload = json.dumps(a)


encoded_data =  urllib.quote_plus(payload)

print payload

gh_url = 'http://localhost:3000/data/post?address=1&category=test&value=' + encoded_data
# gh_url = 'http://localhost:3000/data/get?address=1&category=test'
print gh_url


req = urllib2.Request(gh_url)


password_manager = urllib2.HTTPPasswordMgrWithDefaultRealm()
password_manager.add_password(None, gh_url, 'user', 'pass')

auth_manager = urllib2.HTTPBasicAuthHandler(password_manager)
opener = urllib2.build_opener(auth_manager)

urllib2.install_opener(opener)

handler = urllib2.urlopen(req)

print handler.read()


string= ""
for x in range(0, 2000):
  string += "a"

print "Max length of URL: " + string
