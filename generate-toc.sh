#!/bin/bash

nbviewer_badge="https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg";

function get_notebook_title() {
    local filepath;
    local first_line;
    local first_cell_type;
    local title;

    filepath=$1;
    first_cell_type=$(jq .cells[0].cell_type "$filepath");
    first_line=$(jq .cells[0].source[0] "$filepath");
    if [ "$first_cell_type" == '"markdown"' ] && [[ "$first_line" =~ ^\"\#.* ]]; then
        title=$(echo "$first_line" | sed 's/\"# //' | sed 's/\\n//' | sed 's/"$//');
        echo "$title"
    else
        return 1
    fi
}

echo "| title | file | view notebook |"
echo "|-------|------|---------------|"
for filepath in $(fd ipynb); do
    title=$(get_notebook_title "$filepath");
    if [ $? != 1 ]; then
        echo "| $title | \`$filepath\` | [![nbviewer]($nbviewer_badge)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/$filepath) |";
    fi
done
