# to get a list of files in the current folder and subfolders which contains the word
ftext () {
  grep -iIHrn --color=always "$1" . | less -R -r
}

# to create a list of duplicated files
duplicate-find () {
  find -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find -type f -size {}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate
}

mkdir-cd() {
    mkdir $1 && cd $1
}

git-clone-cd() {
    git clone "$1" && cd "$(basename "$1" .git)"
}
