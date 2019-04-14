# -*- coding:utf-8 -*-  
import json

f = file("/usr/local/shadowsocksr/mudb.json");

json = json.load(f);

print "用户名\t\t端口"

for x in json:

  #Print In Format
  print "%s\t\t%s" %(x[u"user"],x[u"port"])

f.close();
