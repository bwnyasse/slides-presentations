REPO="https://github.com/bwnyasse"

counter=$(git config -f gitrepos  -l | grep '^app[0-9].name' | wc -l | xargs)

while [ $counter -gt 0 ]
do
    NAME=$(git config -f gitrepos --get app${counter}.name)
    TAG=$(git config -f gitrepos --get app${counter}.tag)
    DIRECTORY="$NAME-$TAG"
    echo "CURRENT IS $DIRECTORY"
    rm -rf "${DIRECTORY}"
    rm -rf "${DIRECTORY}-tmp"
    git clone --depth 1 "${REPO}/$NAME" --branch "${TAG}" --single-branch "${DIRECTORY}-tmp"
    mv  -v "./${DIRECTORY}-tmp/src-reveal/export/" "./${DIRECTORY}"
    rm -rf "${DIRECTORY}-tmp"
    ((counter--))
done



#
