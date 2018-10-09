*** Settings ***
Library  AppiumLibrary

Documentation  Settings/Navigation Testing

Force Tags  Settings/ Navigation Testing

*** Variables ***
${Phone}  K20 V
${OS}  7.0
${Server}  http://localhost:4723/wd/hub



*** Keywords ***
Super Swipe

  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209

Open Schedule

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[7]/android.widget.TextView
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[7]/android.widget.TextView

Open Standings

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Wait Until Page Contains  Standings
  Click Text  Standings

#Old Samsung
Open Standings2

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Sleep    3
  Wait Until Page Contains    Videos
  Swipe  279  1151   307  723
  Wait Until Page Contains  Standings
  Click Text  Standings

Category Switch

  Wait Until Element Is Visible  id=com.vzw.indycar:id/common_spinner_secondary_text
  Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text

Open Drivers

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Wait Until Page Contains    Videos
  Swipe  397  1624  352  649
  Wait Until Page Contains  Drivers
  Click Text  Drivers

#Old Samsung
Open Drivers2
  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Sleep    3
  Wait Until Page Contains    Videos
  Swipe  279  1151   307  723
  Wait Until Page Contains  Drivers
  Click Text  Drivers

#Tablets
Open Drivers3

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Sleep    3
  Wait Until Page Contains    Videos
  Wait Until Page Contains  Drivers
  Click Text  Drivers

Open Teams

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Wait Until Page Contains    Videos
  Swipe  397  1624  352  649
  Wait Until Page Contains  Teams
  Click Text  Teams

#Old Phones
Open Teams2

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Sleep    3
  Wait Until Page Contains    Videos
  Swipe  279  1151   307  723
  Wait Until Page Contains  Teams
  Click Text  Teams

#Tablets
Open Teams3
  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Sleep    3
  Wait Until Page Contains    Videos
  #Swipe  279  1151   307  723
  Wait Until Page Contains  Teams
  Click Text  Teams



Open 101

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Wait Until Page Contains    Videos
  Swipe  397  1624  352  649
  Wait Until Page Contains  INDYCAR 101
  Click Text  INDYCAR 101

#Tablets
Open 1012

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Wait Until Page Contains    Videos
  Swipe  278  1293  279  745
  Wait Until Page Contains  INDYCAR 101
  Click Text  INDYCAR 101

#Old Phones
Open1013

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Wait Until Page Contains    Videos
  Swipe  326  1077  265  551
  Wait Until Page Contains  INDYCAR 101
  Click Text  INDYCAR 101



Open Fantasy

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Wait Until Page Contains    Videos
  Swipe  397  1624  352  649
  Wait Until Page Contains  Fantasy Challenge
  Click Text  Fantasy Challenge
  Sleep    3
  Capture Page Screenshot

#Tablets
Open Fantasy2

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Wait Until Page Contains    Videos
  Swipe  278  1293  279  745
  Wait Until Page Contains  Fantasy Challenge
  Click Text  Fantasy Challenge
  Sleep    3
  Capture Page Screenshot

#Old Phones
Open Fantasy3

    Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
    Wait Until Element Is Visible  Open
    Click Element  Open
    Wait Until Page Contains    Videos
    Swipe  326  1077  265  551
    Wait Until Page Contains  Fantasy Challenge
    Click Text  Fantasy Challenge
    Sleep    3
    Capture Page Screenshot

Open Settings

  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open
  Wait Until Page Contains    Videos
  Swipe  397  1624  352  649
  Wait Until Page Contains  Settings
  Click Text  Settings
  Sleep    3
  Capture Page Screenshot

#Tablets
Open Settings2

    Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
    Wait Until Element Is Visible  Open
    Click Element  Open
    Wait Until Page Contains    Videos
    Swipe  278  1293  279  745
    Wait Until Page Contains  Settings
    Click Text  Settings
    Sleep    3
    Capture Page Screenshot

Open Settings3

    Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
    Wait Until Element Is Visible  Open
    Click Element  Open
    Wait Until Page Contains    Videos
    Swipe  326  1077  265  551
    Swipe  326  1077  265  551
    Wait Until Page Contains  Settings
    Click Text  Settings
    Sleep    3
    Capture Page Screenshot

#Most Phones
Swipy1

    Swipe    522    1690    498    270
    Sleep    5
    Swipe    498  270  522  1690

#Old Samsung
Swipy2

    Swipe  387  1167  373  767
    Sleep    5
    Swipe  380  388  366  795

#Tablets
Swipy3

    Swipe  1337  1477  1350  973
    Sleep  3
    Swipe  1354  706  1375  1207






*** Test Cases ***

Test 1 Scroll

  Open Schedule
  Wait Until Element Is Visible  id=com.vzw.indycar:id/action_fav_driver
  Swipy2
  # Swipe    513    1717    488    363
  # Sleep    5
  # Swipe    488  363  513  1717




Test 2 View Races

  Open Schedule
  Wait Until Element Is Visible  id=com.vzw.indycar:id/races_list
  Capture Page Screenshot


Test 3 Race hub

  Open Schedule
  Wait Until Element Is Visible  id=com.vzw.indycar:id/action_fav_driver
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[1]
  Wait Until Element Is Visible  Weather

Test 4 Results

  Open Schedule
  Wait Until Element Is Visible  id=com.vzw.indycar:id/race_item_results_btn
  Click Element  id=com.vzw.indycar:id/race_item_results_btn
  Sleep  3
  Capture Page Screenshot

Test 5 Calender

  Open Schedule
  Wait Until Element Is Visible  id=com.vzw.indycar:id/action_calendar
  Click Element  com.vzw.indycar:id/action_calendar
  Wait Until Page Contains  Create a calendar
  Capture Page Screenshot

Test 6 Standings

  Open Standings
  Wait Until Element Is Visible  id=com.vzw.indycar:id/common_spinner_secondary_text
  Swipy3
  # Swipe    513    1717    488    363
  # Sleep    5
  # Swipe    488  363  513  1717

Test 7 Standings Switch Category

  Open Standings2
  Category Switch
  Wait Until Page Contains  Verizon P1 Standings
  Click Text  Verizon P1 Standings
  Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  Verizon P1 Standings

Test 8 Drivers

  Open Drivers2
  Wait Until Element Is Visible  com.vzw.indycar:id/is_favorite
  Click Element  com.vzw.indycar:id/is_favorite
  Capture Page Screenshot
  Wait Until Element Is Visible    com.vzw.indycar:id/drivers_and_teams_favorite_list_header
  Click Element  com.vzw.indycar:id/drivers_and_teams_favorite_item
  Wait Until Element Is Visible   com.vzw.indycar:id/driver_is_favorite
  Capture Page Screenshot



Test 9 Teams

  Open Teams2
  Wait Until Element Is Visible  com.vzw.indycar:id/is_favorite
  Click Element  com.vzw.indycar:id/is_favorite
  Capture Page Screenshot
  Wait Until Element Is Visible    com.vzw.indycar:id/drivers_and_teams_favorite_list_header
  Click Element  com.vzw.indycar:id/drivers_and_teams_favorite_item
  Wait Until Element Is Visible   com.vzw.indycar:id/team_name
  Capture Page Screenshot

Test 10 Indycar 101

  Open1013
  Sleep    3
  Click Text    Overview
  Capture Page Screenshot

Test 11 Fantasy

  Open Fantasy3

Test 12 Settings

  Open Settings3
  Sleep    2
  Click Text  Notifications
  Sleep  3
  Click Element  	com.vzw.indycar:id/notification_value
  Capture Page Screenshot
  Click Element  Navigate up
  Sleep  3
  Click Text  Notifications
  Capture Page Screenshot
  Sleep  3
  Click Element  Navigate up
  Sleep  3
  Click Text  INDYCAR Nation
  Sleep  3
  Click Element  com.vzw.indycar:id/personalization_include_email
  Sleep  3
  Input Text  id=com.vzw.indycar:id/personalization_email  Test Email
  Sleep  2
  Capture Page Screenshot
  Click Element  Navigate up
  Sleep  3
  Click Text  Recommend to a Friend
  Sleep  3
  Capture Page Screenshot
  Click Element  Navigate up

Test 12A Settings Tablets

  Open Settings2
  Sleep    2
  Click Text  Notifications
  Sleep  3
  Click Element  	com.vzw.indycar:id/notification_value
  Capture Page Screenshot
  Sleep  3
  Click Text  Notifications
  Capture Page Screenshot
  Sleep  3
  Sleep  3
  Click Text  INDYCAR Nation
  Sleep  3
  Click Element  com.vzw.indycar:id/personalization_include_email
  Sleep  3
  Input Text  id=com.vzw.indycar:id/personalization_email  Test Email
  Sleep  2
  Capture Page Screenshot
  Sleep  3
  Click Text  Recommend to a Friend
  Sleep  3
  Capture Page Screenshot



Test 13 Rate Us/ Feedback No/Dismiss

  Open Settings3
  Sleep  3
  Click Text  Rate Us / Feedback
  Wait Until Element Is Visible    android:id/button2
  Click Element  android:id/button2
  Sleep  5
  Capture Page Screenshot
  Click Element  Navigate up
  Sleep    3
  Click Text  Rate Us / Feedback
  Wait Until Element Is Visible    android:id/button2
  Click Element  android:id/button3
  Close Application

Test 13A Rate US/Feedback No/Dismiss Tablets

  Open Settings3
  Sleep  3
  Click Text  Rate Us / Feedback
  Wait Until Element Is Visible    android:id/button2
  Click Element  android:id/button2
  Sleep  2
  Capture Page Screenshot
  Close Application
  Open Settings2
  Sleep  2
  Click Text  Rate Us / Feedback
  Wait Until Element Is Visible    android:id/button2
  Click Element  android:id/button3

Test 14 Rate Us/ Feedback No Thanks
  Open Settings3
  Wait Until Page Contains    Rate Us / Feedback
  Click Text  Rate Us / Feedback
  Wait Until Element Is Visible  android:id/button1
  Click Element  android:id/button1
  Sleep  2
  Click Text  NO, THANKS
  Capture Page Screenshot

Test 15 Rate Us Google Play
  Open Settings3
  Wait Until Page Contains    Rate Us / Feedback
  Click Text  Rate Us / Feedback
  Wait Until Element Is Visible  android:id/button1
  Click Element  android:id/button1
  Sleep  2
  Click Text  RATE IT NOW
  Wait Until Element Is Visible   com.android.vending:id/title_content_rating
  Page Should Contain Text    UNINSTALL
  Close Application
