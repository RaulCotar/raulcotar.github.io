if [[ $# -ne 1 ]] || [[ ! -f "$1" ]]; then
    echo 'Error: bad file name!'
    echo 'Usage create_post <md_file_path>'
    return -1
fi
pandoc --from=commonmark_x --to=html --template='template/post.html' -o $(echo $1 | sed -r 's/(.*\/)?(.*)\..*/\2/' -).html $1