
WS="${HOME}/leanis_ws"

for dir in ${WS}/src/*/; do
    echo $dir
    cd ${dir}
    git pull
done
