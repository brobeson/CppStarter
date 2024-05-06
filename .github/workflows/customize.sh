#!/bin/bash

set -eu

# Remove template content from the README file.
sed --in-place '4,$d' README.md

# Update the project name and owner in the remaining files.
sed --in-place "s/CppStarter/${PROJECT_NAME}/g" README.md
sed --in-place "s/brobeson/${OWNER}/g" README.md

# Remove this workflow so it doesn't run again after this.
(
  cd .github/workflows
  rm template_customization.yaml customize.sh
)

# Create the "Next Release" milestone
gh api \
  --method POST \
  -H "Accept: application/vnd.github.v3+json" \
  "/repos/${OWNER}/${PROJECT_NAME}/milestones" \
  --raw-field title='Next Release' \
  --raw-field state='open' \
  --raw-field description='Task planning for the next release'
