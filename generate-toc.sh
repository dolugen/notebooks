#!/bin/bash

nbviewer_badge="https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg";

function get_notebook_title() {
    local filepath;
    local first_line;
    local title;

    filepath=$1;
    first_line=$(jq .cells[0].source[0] "$filepath");
    if [[ "$first_line" =~ ^\"\#.* ]]; then
        title=$(echo "$first_line" | sed 's/\"# //' | sed 's/\\n//' | sed 's/"$//');
        echo "$title"
    else
        echo "_no title_"
    fi
}

echo "| title | file | view notebook |"
echo "|-------|------|---------------|"
for filepath in $(fd ipynb); do
    title=$(get_notebook_title "$filepath");
    echo "| $title | $filepath | [![nbviewer]($nbviewer_badge)](https://nbviewer.jupyter.org/dolugen/notebooks/blob/main/$filepath) |"
done
