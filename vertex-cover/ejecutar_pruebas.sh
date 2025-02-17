#!/bin/bash

dir_pruebas="pruebas"
programa="python3 vertex_cover.py"

for prueba in $dir_pruebas/*prueba.txt; do
    echo -n $(sed -e 's/.*\/\(.*\)_\(.*\)_prueba.txt/\1, \2/' <<< $prueba | tr "-" ".")
    echo -n ", "
    $programa -rpe $prueba /dev/null
done
