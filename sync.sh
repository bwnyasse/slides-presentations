REPO="https://github.com/bwnyasse"
GITHUB_PAGE="https://bwnyasse.github.io/slides-presentations/"

counter=$(git config -f gitrepos  -l | grep '^app[0-9].name' | wc -l | xargs)

LINK=
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
    LINK="${LINK} <li class=\"list-group-item\"><a href=\"${GITHUB_PAGE}${DIRECTORY}\">${NAME} : ${TAG}</a></li>"
    ((counter--))
done

cat <<EOF > index.html
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>bwnyasse | slides collection</title>
  <meta name="description" content="Collection of slides presentations by bwnyasse , host of github">
  <meta name="author" content="bwnyasse">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<h3>My collections of slides </h3>
    <br/>
    <div class="alert alert-primary" role="alert">
    Theses slides are host here : https://bwnyasse.github.io/slides-presentations/
    </div>
    <ul class="list-group">
    ${LINK}
    </ul>
</div>
<body>
</html>

EOF

#
