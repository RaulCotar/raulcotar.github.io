if [[ $# -ne 1 ]] || [[ ! -f "$1" ]]; then
    echo 'Error: bad file name!'
    echo 'Usage: auto_compile <md_file_path>'
    return -1
fi
while inotifywait -e close_write $1; do
    src/create_post.sh $1
done