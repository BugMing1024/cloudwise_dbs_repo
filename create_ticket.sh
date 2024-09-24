curl --location 'https://demo.cloudwise.sg/gatewayApi/dosm/api/v2/open/api/orderCreate' \
--header 'AppKey: CwmR8qaYCwmR' \
--header 'AppSecret: xRFmu27Lv4t2oEeWNmQBk79eyNfltpVK' \
--header 'Content-Type: application/json' \
--data-raw '{
    "processDefKey": "cgtlouop",
    "formData": {
        "urgentLevel_value": "中",
        "title": "testaaa",
        "TEXTAREA_QeqUv0JtNxL": "测试一下1321",
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
