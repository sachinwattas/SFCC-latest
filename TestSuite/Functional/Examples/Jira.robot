
*** Variables ***
${JIRA_PROJECT}     https://aws-tools.standardbank.co.za/jira/
${JIRA_PROJECT_ID}  DBP
${JIRA_ASSIGNEE}    currentUser()
${JIRA_ISSUE_TYPE}  Test Scenario

*** Test Cases ***

Failed test Case
    [Documentation]  This test fails. A jira issue will be opened.
    log to Console  \nThis is failed!  stream=STDOUT  no_newline=False
