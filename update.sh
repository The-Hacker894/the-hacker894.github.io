dpkg-scanpackages -m . /dev/null > Packages

bzip2 -fskz Packages
