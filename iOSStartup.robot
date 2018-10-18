*** Settings ***
Library  AppiumLibrary

Library  Customlib

Documentation  Smoke Test

Force Tags  Device Porting

*** Variables ***
${Phone}  iPhone 8
${OS}  11.4.1
${udid}  bf2ccb493fe07a8daf99fe99caa41265fb1b8d83
${Server}  http://localhost:4723/wd/hub


*** Keywords ***
OpenApp

  Open application  ${Server}  platformName=iOS  platformVersion=${OS}  deviceName=${Phone}  udid=${udid}  automationName=XCUITest  xcodeOrgId=RZS8HCHYQL  xcodeSigningId=iPhone Developer  updatedWDABundleId=io.appium.Indycar  bundleId=com.verizon.indycar

NavButton

  Wait Until Element Is Visible    nav non live button
  Click Element  nav non live button

OpenVideo

  Wait Until Element Is Visible    Videos
  Click Element  Videos


*** Test Cases ***

# 1st StartUp
#
#   OpenApp
#   Wait Until Element Is Visible    DECLINE
#   Click Element  DECLINE
#   Wait Until Element Is Visible    Please accept the Terms & Conditions before using the INDYCAR app.
#   Page Should Contain Element    Please accept the Terms & Conditions before using the INDYCAR app.
#   Click Element    OK
#   #Close Application
#   #OpenApp
#   Wait Until Element Is Visible    ACCEPT
#   Click Element  ACCEPT
#   Wait Until Element Is Visible    check box unselected
#   Page Should Contain Element    check box unselected
#   Click Element    check box unselected
#   Click Element  //XCUIElementTypeApplication[@name="INDYCAR"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeTextField
#   Input Text    //XCUIElementTypeApplication[@name="INDYCAR"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeTextField    vincent.funaro@omnigon.com
#   Click Element  SUBMIT
#   Wait Until Element Is Visible    OK
#   Click Element  OK
#   Page Should Contain Text    Pick a Favorite Driver
#   Click Element  Next
#   Page Should Contain Text    Pick a Favorite Team
#   Click Element  Next
#   Wait Until Element Is Visible    Allow
#   Click Element  Allow
#   Sleep  2
#   Click Element    //XCUIElementTypeSwitch[@name="Notifications"]
#   Capture Page Screenshot
#   Click Element  Done
#   Wait Until Page Contains    nav non live button
#   Page Should Contain Element    nav non live button
#   Close Application

# Video
#   OpenApp
#   NavButton
#   OpenVideo
#   Click Element  //XCUIElementTypeStaticText[@name="Videos"]
#   Wait Until Element Is Visible    Teams Videos
#   Click Element  Teams Videos
#   Capture Page Screenshot
#   Click Element  //XCUIElementTypeImage[@name="play_icon"][1]
#   Landscape
#   Capture Page Screenshot
#   Portrait
#   Capture Page Screenshot
#   Click Element At Coordinates    184    81
#   Click Element  pause button
#   Sleep  2
#   Click Element  pause button
#   Click Element  expand button
#   Landscape
#   Sleep  3
#   Capture Page Screenshot
#   Portrait
#   Capture Page Screenshot
#   Background App
#   Click Element  expand button
#   Click Element  share button
#   Get Contexts

VideoTest

  OpenApp
  NavButton
  OpenVideo
  Click Element  //XCUIElementTypeImage[@name="play_icon"][1]
  Click Element  share button
  Sleep  2
  Click Facebook
