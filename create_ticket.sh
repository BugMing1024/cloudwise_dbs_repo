DATE=`date`
content="DATE: $DATE\nDRONE_BRANCH: $DRONE_BRANCH\nGIT_COMMITTER_NAME: $GIT_COMMITTER_NAME\nDRONE_GIT_SSH_URL: $DRONE_GIT_SSH_URL"
echo $content
curl --location 'https://demo.cloudwise.sg/gatewayApi/dosm/api/v2/open/api/orderCreate' \
--header 'AppKey: CwmR8qaYCwmR' \
--header 'AppSecret: xRFmu27Lv4t2oEeWNmQBk79eyNfltpVK' \
--header 'Content-Type: application/json' \
--data-raw '{
    "processDefKey": "cgtlouop",
    "formData": {
        "urgentLevel_value": "中",
        "title": "'"$CI_COMMIT_MESSAGE"'",
        "build_branch": "'"$DRONE_BRANCH"'",
        "build_committer_name": "'"$GIT_COMMITTER_NAME"'",
        "build_ssh_url": "'"$DRONE_GIT_SSH_URL"'",
        "build_ssh_url": "'"$DRONE_BUILD_NUMBER"'",
        "DRONE_REPO_NAMESPACE": "'"$DRONE_REPO_NAMESPACE"'",
        "DRONE_REPO_NAME": "'"$DRONE_REPO_NAME"'",
        "TEXTAREA_QeqUv0JtNxL": "'"$content"'",
        "stepIndex": 0,
        "urgentLevel": "1"
    },
    "testFlag": false,
    "candidateList": [
        {
            "userId": "cw@cloudwise.com"
        }
    ]
}'
