import json
import requests as rq

url = "http://api.open-notify.org/astros.json"
rep = rq.get(url)

data = json.loads(rep.content)
# print(data.keys())
print(data['number'])


for p in data['people']:
    print(p['name'], "dans le vaisseau", p['craft'])