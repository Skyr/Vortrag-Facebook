#!/bin/bash
for i in *.jpg ; do AUTHOR=`exiftool $i | grep ^Artist | sed "s/^.*: //"` ; COMMENT=`exiftool $i | grep "^User" | sed "s/^[^:]*: //"` ; LICENSE=`echo $COMMENT | sed "s/^License: //;s/ License Source:.*$//"` ; LINK=`echo $COMMENT | sed "s/^.*Source: //"` ; echo "<li><a href=\"$LINK\">$i</a> $AUTHOR $LICENSE</li>" ; done

