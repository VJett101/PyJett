*** Settings ***
Library  SeleniumLibrary


Documentation  Application State Test

*** Variables ***

${No1}  Actual value set dynamically at suite setup.
${No2}  Actual Value set dynamically at suite setup.
${TotalConcurrent}  Actual Value set dynamically at suite setup.

*** Keywords ***

Get Connection

  ${No1}= Get Element Attribute  id=serverHealthTable Overall


    ${No1} =    Withdraw From User Account    ${USER}    ${amount}
    Set Test Variable    ${No1}


*** Test Cases ***

Concurrent Connections

  Open Browser  url=http://cdn.indy.myomnigon.com/turbine-web-client-prod-prod1/index.html  browser=Chrome
  Sleep    5
  ${No1}  Get Table Cell  id=serverHealthTable  7  5
  Log To Console  ${No1}
  Close Browser
  Open Browser  url=http://cdn.indy.myomnigon.com/turbine-web-client-prod-prod0/index.html  browser=Chrome
  Sleep    5
  ${No2}  Get Table Cell  id=serverHealthTable  7  5
  Log To Console  ${No2}
  ${TotalConcurrent}  Evaluate    ${No1}+${No2}
  Log To Console    ${TotalConcurrent}
  Close Browser
  # Open Browser  url=https://omnigonllc.slack.com/messages/D9CPPUX3K/team/U8T1PQ7LZ/  browser=Chrome
  # Sleep  5
  # Input Text  email  vincent.funaro@omnigon.com
  # Input Text  password  1015885vJf
  # Click Button  signin_btn
  # Sleep  5
  # Click Element  class=ql-editor.ql-blank
  # Input Text    food  class=ql-editor.ql-blank
