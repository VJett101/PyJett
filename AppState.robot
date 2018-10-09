*** Settings ***
Library  SeleniumLibrary

Library  AppiumLibrary


Documentation  Application State Test



*** Variables ***
${Phone}  V40 ThinQ
${OS}  8.1.0

*** Keywords ***

Start App

  Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  AppiumLibrary.Wait Until Element Is Visible  Open

Open Drupal
  [Arguments]  ${Index}

  Open Browser  url=https://drupal-qa.indy.myomnigon.com/application-state-config  browser=Chrome
  Sleep    2
  SeleniumLibrary.Input Text  edit-name  vincent.funaro
  SeleniumLibrary.Input Text  edit-pass  1015885v
  SeleniumLibrary.Click Button    edit-submit
  Sleep  3
  Select From List By Index    edit-app-state    ${Index}
  Sleep  2
  SeleniumLibrary.Click Button    edit-submit
  SeleniumLibrary.Wait Until Page Contains    The information has been saved.
  Close Browser

Swipe1

  Swipe  469  1867  441  365

Swipe2
  Swipe  365  1047  373  767

#Pixel Reg
Swipe3
  Swipe  547  1601  579  1263


*** Test Cases ***

Pre-Season Mode

  Open Browser  url=https://drupal-qa.indy.myomnigon.com/application-state-config  browser=Chrome
  Sleep    2
  SeleniumLibrary.Input Text  edit-name  vincent.funaro
  SeleniumLibrary.Input Text  edit-pass  1015885v
  SeleniumLibrary.Click Button    edit-submit
  Sleep  3
  # SeleniumLibrary.Click Element   edit-app-state
  # SeleniumLibrary.Wait Until Page Contains    Pre-Season
  Select From List By Index    edit-app-state    0
  Sleep  2
  SeleniumLibrary.Click Button    edit-submit
  SeleniumLibrary.Wait Until Page Contains    The information has been saved.
  Close Browser

Test Case 1 Pre-Season Check

  Sleep  100
  Start App
  AppiumLibrary.Capture Page Screenshot
  Sleep  3
  Swipe  547  1601  579  1263
  AppiumLibrary.Click Text  FULL SCHEDULE
  AppiumLibrary.Wait Until Element Is Visible  com.vzw.indycar:id/action_calendar
  AppiumLibrary.Capture Page Screenshot
  Close Application

Pre-Race Mode

  Open Drupal    1

Test Case 2 Pre-Race Check Not Available

  Sleep  100
  Start App
  AppiumLibrary.Click Element  Open
  AppiumLibrary.Wait Until Element Is Visible    com.vzw.indycar:id/navigation_header_icon
  AppiumLibrary.Click Element  com.vzw.indycar:id/navigation_header_icon
  AppiumLibrary.Capture Page Screenshot
  #AppiumLibrary.Wait Until Page Contains
  AppiumLibrary.Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[1]
  AppiumLibrary.Wait Until Page Contains    Live content is not available at this time.
  Sleep  3
  AppiumLibrary.Click Element  Close
  AppiumLibrary.Wait Until Page Contains  Home
  AppiumLibrary.Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
  AppiumLibrary.Wait Until Page Contains    Live content is not available at this time.
  Sleep  3
  AppiumLibrary.Click Element  Close
  AppiumLibrary.Wait Until Page Contains  Home
  AppiumLibrary.Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[4]
  AppiumLibrary.Wait Until Page Contains    Live content is not available at this time.
  Close Application

Test Case 3 Pre-Race Live Audio

  Start App
  AppiumLibrary.Click Element  Open
  AppiumLibrary.Wait Until Element Is Visible    com.vzw.indycar:id/navigation_header_icon
  AppiumLibrary.Click Element  com.vzw.indycar:id/navigation_header_icon
  Sleep  2
  AppiumLibrary.Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]/android.widget.LinearLayout
  AppiumLibrary.Capture Page Screenshot
  AppiumLibrary.Wait Until Element Is Visible   Favorites
  Close Application

Live Race Mode

  Open Drupal    2

Test Case 4 Live Race Leaderboard

  Sleep  100
  Start App
  AppiumLibrary.Click Element  Open
  Sleep  2
  Click Text  Leaderboard
  Sleep  2
  AppiumLibrary.Capture Page Screenshot
  AppiumLibrary.Wait Until Element Is Visible    com.vzw.indycar:id/leaderboard_map_slider
  AppiumLibrary.Click Element  com.vzw.indycar:id/leaderboard_map_slider
  AppiumLibrary.Capture Page Screenshot
  Sleep  2
  AppiumLibrary.Click Element  com.vzw.indycar:id/leaderboard_map_slider
  Sleep  2
  AppiumLibrary.Click Element  com.vzw.indycar:id/leaderboard_column_follow_btn
  Sleep  2
  AppiumLibrary.Capture Page Screenshot
  Lock
  Sleep  3
  AppiumLibrary.Capture Page Screenshot
  Close Application

# Test Case 5 Background Leaderboard
#
#   Start App
#   AppiumLibrary.Click Element  Open
#   Sleep  2
#   Click Text  Leaderboard
#   Sleep  2
#   AppiumLibrary.Capture Page Screenshot
#   Background App
#   Sleep  3
#   AppiumLibrary.Capture Page Screenshot


Test Case 6 Points As They Run

   Start App
   AppiumLibrary.Click Element    Open
   Sleep  2
   Click Text  Points As They Run
   Sleep  2
   AppiumLibrary.Wait Until Element Is Visible    com.vzw.indycar:id/points_as_they_run_list
   AppiumLibrary.Capture Page Screenshot


Test Case 7 Live Audio

  Start App
  AppiumLibrary.Click Element    Open
  Sleep  2
  Click Text  Live Audio
  Sleep  3
  AppiumLibrary.Wait Until Page Contains  IMS Radio Broadcast - SpecialLiveRadio
  AppiumLibrary.Capture Page Screenshot
  Close Application


Test Case 8 Live Cameras

  Start App
  AppiumLibrary.Click Element    Open
  Sleep  2
  Click Text  Live Cameras
  Sleep  3
  AppiumLibrary.Wait Until Element Is Visible    com.vzw.indycar:id/play_icon
  AppiumLibrary.Capture Page Screenshot
  Close Application

# Test Case 9 Race Hub Weather
#
#   Start App
#   Swipe1
#   AppiumLibrary.Wait Until Element Is Visible    com.vzw.indycar:id/home_agenda_card_footer
#   AppiumLibrary.Click Element    com.vzw.indycar:id/home_agenda_card_footer
#   AppiumLibrary.Wait Until Element Is Visible    Weather

Post Race Mode

  Open Drupal    3

Test Case 10 Not Available

  Sleep  100
  Start App
  AppiumLibrary.Click Element    Open
  Sleep  2
  AppiumLibrary.Wait Until Element Is Visible    com.vzw.indycar:id/navigation_header_icon
  AppiumLibrary.Click Element  com.vzw.indycar:id/navigation_header_icon
  Sleep  2
  AppiumLibrary.Capture Page Screenshot
  AppiumLibrary.Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[1]
  AppiumLibrary.Wait Until Page Contains    Live content is not available at this time.
  Sleep  3
  AppiumLibrary.Click Element  Close
  AppiumLibrary.Wait Until Page Contains  Home
  AppiumLibrary.Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
  AppiumLibrary.Wait Until Page Contains    Live content is not available at this time.
  Sleep  3
  AppiumLibrary.Click Element  Close
  AppiumLibrary.Wait Until Page Contains  Home
  AppiumLibrary.Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[4]
  AppiumLibrary.Wait Until Page Contains    Live content is not available at this time.
  Sleep  3
  AppiumLibrary.Click Element  Close
  AppiumLibrary.Wait Until Page Contains  Home
  AppiumLibrary.Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]/android.widget.LinearLayout
  AppiumLibrary.Wait Until Page Contains    Live content is not available at this time.
  Close Application

Test Case 11 Race Results

  Start App
  Swipe1
  AppiumLibrary.Wait Until Element Is Visible    com.vzw.indycar:id/home_race_results_card_footer
  AppiumLibrary.Click Element    com.vzw.indycar:id/home_race_results_card_footer
  AppiumLibrary.Wait Until Element Is Visible    com.vzw.indycar:id/race_results_list
  Close Application
