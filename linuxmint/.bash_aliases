# to get a list of files in the current folder and subfolders which contains the word
ftext () {
  grep -iIHrn --color=always "$1" . | less -R -r
}

# to create a list of duplicated files
duplicatefind () {
  find -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find -type f -size {}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate
}
