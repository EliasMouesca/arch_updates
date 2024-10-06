#!/bin/fish

set TRIGGER_FILE /path/to/path.txt

if [ (checkupdates | wc -l) -gt 0 ]
    touch (cat $TRIGGER_FILE)
else
    rm (cat $TRIGGER_FILE)
end
