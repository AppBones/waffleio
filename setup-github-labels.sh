#!/bin/bash
# Inspired by: https://robinpowered.com/blog/best-practice-system-for-organizing-and-tagging-github-issues/

echo -n "GitHub User: "
read USER

echo -n "GitHub Password: "
read -s PASS

echo -n "GitHub Repo User (user or organization): "
read REPO_USER

echo -n "GitHub Repo: "
read REPO

REPO_USER=$(echo "$REPO_USER" | cut -f1 -d /)
REPO_NAME=$(echo "$REPO" | cut -f2 -d /)

# Delete default GitHub labels
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/bug"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/duplicate"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/enhancement"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/invalid"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/question"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/wontfix"


# Create labels

## Platform
# curl --user "$USER:$PASS" --include --request POST --data '{"name":"clojure","color":"BFD4F2"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
# curl --user "$USER:$PASS" --include --request POST --data '{"name":"ios","color":"BFD4F2"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
# curl --user "$USER:$PASS" --include --request POST --data '{"name":"android","color":"BFD4F2"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Problems
curl --user "$USER:$PASS" --include --request POST --data '{"name":"bug","color":"EE3F46"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"security","color":"EE3F46"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"production","color":"EE3F46"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Mindless
curl --user "$USER:$PASS" --include --request POST --data '{"name":"chore","color":"FEF2C0"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"legal","color":"FEF2C0"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Experience
curl --user "$USER:$PASS" --include --request POST --data '{"name":"copy","color":"FFC274"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"design","color":"FFC274"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"ux","color":"FFC274"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Environment
# curl --user "$USER:$PASS" --include --request POST --data '{"name":"staging","color":"FAD8C7"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"test","color":"FAD8C7"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Feedback
curl --user "$USER:$PASS" --include --request POST --data '{"name":"discussion","color":"CC317C"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
# curl --user "$USER:$PASS" --include --request POST --data '{"name":"rfc","color":"CC317C"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"question","color":"CC317C"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Improvements
curl --user "$USER:$PASS" --include --request POST --data '{"name":"enhancement","color":"5EBEFF"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
# curl --user "$USER:$PASS" --include --request POST --data '{"name":"optimization","color":"5EBEFF"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Additions
curl --user "$USER:$PASS" --include --request POST --data '{"name":"feature","color":"91CA55"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"user story","color":"91CA55"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Pending
curl --user "$USER:$PASS" --include --request POST --data '{"name":"in progress","color":"FBCA04"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"in review","color":"FBCA04"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
# curl --user "$USER:$PASS" --include --request POST --data '{"name":"watchlist","color":"FBCA04"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Inactive
curl --user "$USER:$PASS" --include --request POST --data '{"name":"invalid","color":"D2DAE1"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"wontfix","color":"D2DAE1"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"duplicate","color":"D2DAE1"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"on hold","color":"D2DAE1"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
