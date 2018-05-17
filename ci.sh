#!/bin/bash
set -xe

# Include CI scripts
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
(
	git clone -b master --single-branch --depth 1 git@github.com:Elium/template-ci.git template-ci ||
	( cd template-ci && git fetch && git reset --hard origin/master )
)
source "$DIR/template-ci/ci-tool.sh"


build () {
    docker build -t $IMAGE:$HASH .
}

testit () {
	docker run --rm -ti \
		--name "$TAG" \
		$IMAGE:$HASH sh -c "--version" \
		| tail -n 1
}

publish () {
	create_tag $BRANCH
	push_tags
}

case "$1" in
  build)
    build
    ;;
  test)
    testit
    ;;
  publish)
    publish
    ;;
  *)
    echo "Usage: $0 {build|test|publish}"
esac
