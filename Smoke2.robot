*** Settings ***
Library  AppiumLibrary
Library  OperatingSystem
Library  DateTime
test setup  Open Navigation
test teardown  Test Finish


Documentation  Smoke Test ${Phone}

Force Tags  Device Porting

*** Variables ***
${Phone}  Pixel3 XL
${OS}  8.1.0
${Server}  http://localhost:4733/wd/hub
${CategoryPhotos}  Grand Prix of Sonoma - Friday, September 14, 2018




*** Test Cases ***

Social Features

  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[4]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[4]
  Wait Until Element Is Visible  id=com.vzw.indycar:id/tweet_item_retweet_btn
  Click Element  id=com.vzw.indycar:id/tweet_item_retweet_btn
  Run Keyword And Ignore Error  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[1]
  Run Keyword And Ignore Error    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[1]
  Run Keyword And Ignore Error  Wait Until Element Is Visible  id=You Retweeted
  Go Back
  Go Back
  Wait Until Element Is Visible    com.vzw.indycar:id/tweet_item_follow_btn
  Super Swipe
  Super Swipe
  Wait Until Element Is Visible  id=com.vzw.indycar:id/loadMoreButton
  Click Element  id=com.vzw.indycar:id/loadMoreButton
  Sleep  2
  Swipy1

# News Features
#
#   Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#   Capture Page Screenshot
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#   Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text
#   Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
#   Run Keyword And Return Status  Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  Exclusive News
#   Wait Until Element Is Visible  com.vzw.indycar:id/media_item_title
#   Super Swipe
#   Super Swipe
#   Wait Until Element Is Visible  id=com.vzw.indycar:id/loadMoreButton
#   Click Element  id=com.vzw.indycar:id/loadMoreButton
#   Wait Until Element Is Visible    com.vzw.indycar:id/media_item_title
#   Click Element    com.vzw.indycar:id/media_item_title
#   Wait Until Element Is Visible    Share
#   Swipy1
#   Capture Page Screenshot
#
# Photo Features
#
#   Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[5]
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[5]
#   Category Switch
#   Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.TextView
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.TextView
#   Run Keyword And Return Status    Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  ${CategoryPhotos}
#   Super Swipe
#   Super Swipe
#   Wait Until Element Is Visible  id=com.vzw.indycar:id/loadMoreButton
#   Click Element  id=com.vzw.indycar:id/loadMoreButton
#   Wait Until Element Is Visible  com.vzw.indycar:id/media_item_title
#   Click Element  com.vzw.indycar:id/media_item_title
#   Wait Until Element Is Visible    Share
#   Run Keyword And Return Status  Swipy1
#   Capture Page Screenshot
#   Tap  id=com.vzw.indycar:id/photo_thumbnail
#   Wait Until Element Is Visible  Share
#   Capture Page Screenshot
#   Sideswipe
#   Capture Page Screenshot
#   Wait Until Element Is Visible  Share
#   Landscape
#   Capture Page Screenshot
#   Wait Until Element Is Visible  Share
#   Portrait
#   Capture Page Screenshot

# Social Media
#   #photo
#
#   Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[5]
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[5]
#   Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#   Facebook Share2
#   Go Back
#   Twitter Share5
#   Go Back
#   #video
#   Wait Until Element Is Visible  Open
#   Click Element  Open
#   Wait Until Page Contains    Video
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
#   Wait Until Element Is Visible  id=com.vzw.indycar:id/play_icon
#   Click Element  id=com.vzw.indycar:id/play_icon
#   Facebook Share2
#   Go Back
#   Twitter Share5
#   #News
#   Wait Until Element Is Visible    Open
#   Click Element  Open
#   Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#   Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#   Twitter Share5
#   Go Back
#   Facebook Share2
#   Close Application

# Podcast Download
#
#   Open Podcast
#   Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
#   Click Element  id=com.vzw.indycar:id/podcast_icon
#   Click Element  id=com.vzw.indycar:id/podcast_icon
#   Sleep  60
#   Close Application

Podcast Features

  Open Podcast
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  id=com.vzw.indycar:id/podcast_icon
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.FrameLayout/android.widget.ImageView
  Click Element  com.vzw.indycar:id/audio_play_button
  Click Element  com.vzw.indycar:id/audio_play_button
  Click Element  com.vzw.indycar:id/audio_forward_button
  Click Element  com.vzw.indycar:id/audio_rewind_button
  Click Element  com.vzw.indycar:id/audio_time_seek
  Click Element  sound on max
  Click Element  sound off
  Click Element  Edit
  Click Element  com.vzw.indycar:id/podcast_icon
  Click Element  Edit
  Wait Until Element Is Visible  Edit
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  Delete
  Wait Until Element Is Visible  id=android:id/button2
  Click Element  id=android:id/button2
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  Delete
  Wait Until Element Is Visible   id=android:id/button1
  Click Element  id=android:id/button1

Schedule Standings

  Open Schedule
  Wait Until Element Is Visible  id=com.vzw.indycar:id/action_fav_driver
  Run Keyword And Ignore Error    Swipy1
  Capture Page Screenshot
  Wait Until Element Is Visible  id=com.vzw.indycar:id/action_fav_driver
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[1]
  Sleep  3
  Capture Page Screenshot
  Go Back
  Wait Until Element Is Visible  id=com.vzw.indycar:id/race_item_results_btn
  Click Element  id=com.vzw.indycar:id/race_item_results_btn
  Sleep  3
  Capture Page Screenshot
  Go Back
  # Wait Until Element Is Visible  id=com.vzw.indycar:id/action_calendar
  # Click Element  com.vzw.indycar:id/action_calendar
  # Run Keyword And Return Status  Wait Until Page Contains  Create a calendar
  # Go Back
  Open Standings
  Wait Until Element Is Visible  id=com.vzw.indycar:id/common_spinner_secondary_text
  Run Keyword And Ignore Error  Swipy1
  Category Switch
  Wait Until Page Contains  Verizon P1 Standings
  Click Text  Verizon P1 Standings
  Run Keyword And Return Status  Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  Verizon P1 Standings

# Drivers/Teams/101/Fantasy
#
#   Open Drivers
#   Wait Until Element Is Visible  com.vzw.indycar:id/is_favorite
#   Click Element  com.vzw.indycar:id/is_favorite
#   Capture Page Screenshot
#   Wait Until Element Is Visible    com.vzw.indycar:id/drivers_and_teams_favorite_list_header
#   Click Element  com.vzw.indycar:id/drivers_and_teams_favorite_item
#   Wait Until Element Is Visible   com.vzw.indycar:id/driver_is_favorite
#   Capture Page Screenshot
#   Go Back
#   Open Teams
#   Wait Until Element Is Visible  com.vzw.indycar:id/is_favorite
#   Click Element  com.vzw.indycar:id/is_favorite
#   Capture Page Screenshot
#   Wait Until Element Is Visible    com.vzw.indycar:id/drivers_and_teams_favorite_list_header
#   Click Element  com.vzw.indycar:id/drivers_and_teams_favorite_item
#   Wait Until Element Is Visible   com.vzw.indycar:id/team_name
#   Capture Page Screenshot
#   Go Back
#   Open101
#   Sleep    3
#   Click Text    Overview
#   Capture Page Screenshot
#   Go Back
#   Open Fantasy
#
# Settings Main
#
#   Open Settings3
#   Sleep    2
#   Click Text  Notifications
#   Sleep  3
#   Click Element  	com.vzw.indycar:id/notification_value
#   Capture Page Screenshot
#   Click Element  Navigate up
#   Sleep  3
#   Click Text  Notifications
#   Capture Page Screenshot
#   Sleep  3
#   Click Element  Navigate up
#   Sleep  3
#   Click Text  INDYCAR Nation
#   Sleep  3
#   Click Element  com.vzw.indycar:id/personalization_include_email
#   Sleep  3
#   Input Text  id=com.vzw.indycar:id/personalization_email  Test Email
#   Sleep  2
#   Capture Page Screenshot
#   Click Element  Navigate up
#   Sleep  3
#   Click Text  Recommend to a Friend
#   Sleep  3
#   Capture Page Screenshot
#   Click Element  Navigate up
#
# Settings Rate Us/ Feedback No/Dismiss
#
#    Open Settings3
#    Sleep  3
#    Click Text  Rate Us / Feedback
#    Wait Until Element Is Visible    android:id/button2
#    Click Element  android:id/button2
#    Sleep  5
#    Capture Page Screenshot
#    Click Element  Navigate up
#    Sleep    3
#    Click Text  Rate Us / Feedback
#    Wait Until Element Is Visible    android:id/button2
#    Click Element  android:id/button3
#
# Settings Rate Us/ Feedback No Thanks
#
#   Open Settings3
#   Wait Until Page Contains    Rate Us / Feedback
#   Click Text  Rate Us / Feedback
#   Wait Until Element Is Visible  android:id/button1
#   Click Element  android:id/button1
#   Sleep  2
#   Click Text  NO, THANKS
#   Sleep  2
#
# Settings Google Play
#
#   Open Settings3
#   Wait Until Page Contains    Rate Us / Feedback
#   Click Text  Rate Us / Feedback
#   Wait Until Element Is Visible  android:id/button1
#   Click Element  android:id/button1
#   Sleep  2
#   Click Text  RATE IT NOW
#   Wait Until Page Contains    UNINSTALL



*** Keywords ***

Swipe Facebook

  Swipe  553  2013  518  1558
  Click Text  Facebook

Facebook Share

    Wait Until Element Is Visible  Share
    Click Element  Share
    ${Share}  Run Keyword And Return  Wait Until Page Contains    Facebook
    Run Keyword If  ${Share}=true  Click Text  Facebook  ELSE  Swipe Facebook
    Wait Until Page Does Not Contain Element  Share
    ${Status}  Run Keyword And Return  Page Should Contain Text  Create Post
    Run Keyword If    ${Status}=true    Log To Console  "pass"  ELSE  Page Should Contain Text  Tap to Log In


Sideswipe
    Swipe  979  1009  67  1025
    Wait Until Element Is Visible  Share
    Swipe  65  1029  981  1040

#Most Phones
Swipy1
    Swipe    522    1690    498    270
    Sleep    5
    Swipe    498  270  522  1690

Super Swipe

    Swipe  519  1498  523  209
    Swipe  519  1498  523  209
    Swipe  519  1498  523  209
    Swipe  519  1498  523  209
    Swipe  519  1498  523  209
    Swipe  519  1498  523  209
    Swipe  519  1498  523  209
    Swipe  519  1498  523  209

Open Navigation

    Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
    Wait Until Element Is Visible  Open
    Click Element  Open

Category Switch

    Wait Until Element Is Visible  id=com.vzw.indycar:id/common_spinner_secondary_text
    Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text

Open Podcast

    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[6]
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[6]

Open Schedule

    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[7]/android.widget.TextView
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[7]/android.widget.TextView

Open Standings

    Wait Until Element Is Visible  Open
    Click Element  Open
    Wait Until Page Contains  Standings
    Click Text  Standings

Open Drivers

    Sleep  2
    Swipe  397  1624  352  649
    Wait Until Page Contains  Drivers
    Click Text  Drivers

Open Teams

    Wait Until Element Is Visible  Open
    Click Element  Open
    Wait Until Page Contains    Drivers
    Swipe  397  1624  352  649
    Wait Until Page Contains  Teams
    Click Text  Teams

Open 101

    Wait Until Element Is Visible  Open
    Click Element  Open
    Wait Until Page Contains    Drivers
    Swipe  397  1624  352  649
    Wait Until Page Contains  INDYCAR 101
    Click Text  INDYCAR 101

Open Fantasy

    Wait Until Element Is Visible  Open
    Click Element  Open
    Wait Until Page Contains    Drivers
    Swipe  397  1624  352  649
    Wait Until Page Contains  Fantasy Challenge
    Click Text  Fantasy Challenge
    Sleep    3
    Capture Page Screenshot

Open Settings


    Sleep  3
    Swipe  397  1624  352  649
    Wait Until Page Contains  Settings
    Click Text  Settings
    Sleep    3
    Capture Page Screenshot

Open Settings3


    Wait Until Page Contains    Videos
    Swipe  326  1077  265  551
    Swipe  326  1077  265  551
    Wait Until Page Contains  Settings
    Click Text  Settings
    Sleep    3
    Capture Page Screenshot



Test Finish

   Close Application
   ${Epochtime}  Get Current Date  result_format=epoch
   Create Directory    ./screenshots/${Phone}_${Epochtime}
   Move Files    *.png  ./screenshots/${Phone}_${Epochtime}
