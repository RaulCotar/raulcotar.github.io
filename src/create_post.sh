if [[ $# -ne 1 ]] || [[ ! -f "$1" ]]; then
    echo 'Error: bad file name!'
    echo 'Usage: create_post <md_file_path>'
    return -1
fi
pandoc $1 --from=commonmark_x --to=html --template='src/post-template.html' \
    --metadata "date=$(date '+%d %b %Y')" \
    --metadata "date_machine=$(date '+%Y-%m-%d')" \
    -o $(echo $1 | sed -r 's/(.*\/)?(.*)\..*/posts\/\2/' -).html