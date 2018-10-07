mscan.f () 
{ 
    fmt=$(cat ~/mscan.fmt);
    mscan -f "$fmt" $1  2>/dev/null
}
export MAILDIR=~/mail
mlist.sort() {
  dir=$MAILDIR/$1

  mlist $dir | msort -d | tail -${2}
}
mscan.all() {
  dir=$MAILDIR/$1
  mlist $dir | msort -d | tail -${2} | xargs mscan -f '%10d | %17f | %t | %2i%s' 2>/dev/null
}

mscan.format() {
  mlist.sort $1 $2 | xargs mscan -f "$3" 2>/dev/null
}



mscan.date() {
  mscan.format $1 $2 %d
}
mscan.subject() {
  mscan.format $1 $2 %s
}
mscan.from() {
  mscan.format $1 $2 %f
}
# mscan.inbox - prepare for Vish inbox reader
mscan.inbox() {
  mscan.format inbox 10 '%R|%10d | %17f | %t | %2i%s' 2>/dev/null
}
# mshow1 - show 1 message from inbox
mshow1() {
  mlist.sort inbox 1 | xargs mshow 2>/dev/null
}




