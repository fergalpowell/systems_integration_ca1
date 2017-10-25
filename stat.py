
#!/usr/bin/python
import os, sys
import getpass
import grp

fd = os.open("home", os.O_RDWR|os.O_CREAT)

info = os.fstat(fd)
username = getpass.getuser()

print "Username: %s" % username
print "Group name: %s" % grp.getgrgid(info.st_gid)[0]
print "iNode: %d" % info.st_ino
print "User ID: %d" % info.st_uid
print "Group ID: %d" % info.st_gid
