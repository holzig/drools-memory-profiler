#!/bin/bash

FILE_COUNT=${1:-10}
RULE_COUNT=${2:-10}
CONSEQUENCE_BLOAT=${3:-1}
TARGETDIR=src/main/resources/org/example
find $TARGETDIR -type f -name '*.drl' -delete
mkdir -p $TARGETDIR
for ((f = 1; f <= $FILE_COUNT; f++)); do
  FILE_NAME=$TARGETDIR/Rule_$f.drl
  cat src/main/resources/header.tmpl > $FILE_NAME
  for ((r = 1; r <= $RULE_COUNT; r++)); do
      echo "" >> $FILE_NAME
      sed -e "s/\$f/$f/" -e "s/\$r/$r/" src/main/resources/Rule_header.tmpl >> $FILE_NAME
      for ((b = 1; b <= $CONSEQUENCE_BLOAT; b++)); do
          sed -e "s/\$f/$f/" -e "s/\$r/$r/" src/main/resources/Rule_consequence.tmpl >> $FILE_NAME
      done
      sed -e "s/\$f/$f/" -e "s/\$r/$r/" src/main/resources/Rule_footer.tmpl >> $FILE_NAME
  done
done