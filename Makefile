all: test

INVALID_FILES=complex1.yml complex2.yml no-rulesets.yml with-gitignore.yml with-maxfilesize.yml
VALID_FILES=complex1.yml complex2.yml simple.yml with-gitignore.yml with-maxfilesize.yml

test:
	for v in ${INVALID_FILES}; do pajv test -s schema.json -d examples/invalid/$$v --invalid ; done
	for v in ${VALID_FILES}; do pajv test -s schema.json -d examples/valid/$$v --valid ; done
