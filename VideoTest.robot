*** Settings ***
Library  AppiumLibrary

Documentation  Video Test

Force Tags  Videos Post Race

*** Variables ***
${Cattext}  Teams Videos
${OS}  7.0
${Phone}  K20 V
${7ShareFB}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ScrollView/android.widget.LinearLayout/com.android.internal.widget.ViewPager/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[3]
${7ShareTweet}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ScrollView/android.widget.LinearLayout/com.android.internal.widget.ViewPager/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.ImageView
${9ShareFB}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout[4]/android.widget.FrameLayout/android.widget.ImageView
${9ShareTweet}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView

*** Keywords ***
Start Navigation

  Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open

#No Swipe Xpath Click
Twitter Share
  #Add Boolean
  Wait Until Element Is Visible  Share
  Click Element  Share
  Wait Until Element Is Visible  ${9ShareTweet}
  Click Element  ${9ShareTweet}
  Tap  ${9ShareTweet}
  Page Should Contain Text  TWEET

#Text Click No Swipe
Twitter Share4
  Wait Until Element Is Visible  Share
  Click Element  Share
  Wait Until Page Contains    Tweet
  Click Text    Tweet
  Wait Until Page Contains  TWEET
  Page Should Contain Text  TWEET

#Samsung 3dot Share PG 2 out of 3
Twitter Share2

  Wait Until Element Is Visible  Share
  Click Element  Share
  Wait Until Element Is Visible  xpath=//android.widget.ImageView[@content-desc="Page 2 of 3."]
  Click Element  xpath=//android.widget.ImageView[@content-desc="Page 2 of 3."]
  Wait Until Page Contains    Tweet
  Click Text    Tweet
  Wait Until Page Contains  TWEET
  Page Should Contain Text  TWEET

  #Samsung 3dot Share PG 3 out of 3
Twitter Share7

  Wait Until Element Is Visible  Share
  Click Element  Share
  Wait Until Element Is Visible  xpath=//android.widget.ImageView[@content-desc="Page 3 of 3."]
  Click Element  xpath=//android.widget.ImageView[@content-desc="Page 3 of 3."]
  Wait Until Page Contains    Tweet
  Click Text    Tweet
  Wait Until Page Contains  TWEET
  Page Should Contain Text  TWEET



#LG One Swipe
Twitter Share3

  Wait Until Element Is Visible  Share
  Click Element  Share
  Wait Until Element Is Visible    com.lge:id/title_lg
  Swipe  729  2336  711  1579
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView
  Wait Until Page Contains  TWEET
  Page Should Contain Text  TWEET


#No Swipe
Facebook Share

  Wait Until Element Is Visible  Share
  Click Element  Share
  Wait Until Element Is Visible  ${9ShareFB}
  Click Element  ${9ShareFB}
  Wait Until Page Does Not Contain Element  Share
  Page Should Contain Text  POST

#No Swipe
Facebook Share2

  Wait Until Element Is Visible  Share
  Click Element  Share
  Wait Until Page Contains    Facebook
  Click Text  Facebook
  Wait Until Page Does Not Contain Element  Share
  Page Should Contain Text  POST

#One Swipe Samsung
Facebook Share3

  Wait Until Element Is Visible  Share
  Click Element  Share
  Sleep    3
  Wait Until Page Contains  Share video to…
  Swipe  553  2013  518  1558
  Wait Until Page Contains  Facebook
  Click Text  Facebook
  Wait Until Page Does Not Contain Element  Share
  Page Should Contain Text  POST

#One Swipe Samsung
Twitter Share5
  Wait Until Element Is Visible  Share
  Click Element  Share
  Sleep    3
  Wait Until Page Contains  Share video to…
  Swipe  553  2013  518  1558
  Wait Until Page Contains  Tweet
  Click Text  Tweet
  Wait Until Page Does Not Contain Element  Share
  Page Should Contain Text  Tweet

#2dot SAMSUNG
Facebook Share4
  Wait Until Element Is Visible  Share
  Click Element  Share
  Sleep    3
  Wait Until Page Contains  Share video to…
  Click Element  //android.widget.ImageView[@content-desc="Page 2 of 2."]
  Wait Until Page Contains  Facebook
  Click Text  Facebook
  Wait Until Page Does Not Contain Element  Share
  Page Should Contain Text  POST

Twitter Share 6
  Wait Until Element Is Visible  Share
  Click Element  Share
  Sleep    3
  Wait Until Page Contains  Share video to…
  Click Element  //android.widget.ImageView[@content-desc="Page 2 of 2."]
  Wait Until Page Contains  Tweet
  Click Text  Tweet
  Wait Until Page Does Not Contain Element  Share
  Page Should Contain Text  Tweet









*** Test Cases ***

# Test 1 Video Play/Pause/Expand
#
#   Open application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=8.1.0  deviceName=Pixel  app=com.vzw.indycar.ic15  automationName=appium  appPackage=com.vzw.indycar.ic15  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
#   Wait Until Element Is Visible  id=com.vzw.indycar.ic15:id/wifi_notice_do_not_show_message_again_container
#   Click Element  id=com.vzw.indycar.ic15:id/wifi_notice_continue_btn
#   Click Element  id=com.vzw.indycar.ic15:id/action_fav_driver
#   Wait Until Element Is Visible  id=com.vzw.indycar.ic15:id/home_race_results_card_race_block  10
#   Click Element  Open
#   Page Should Contain Text  Videos
#
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[7]
#   Wait Until Element Is Visible  com.vzw.indycar.ic15:id/play_icon
#   Click Text  Latest Videos
#   Wait Until Element Is Visible  id=com.vzw.indycar.ic15:id/common_spinner_primary_text
#    Page Should Contain Text  Driver Blogs & Interviews
#   Click Element  com.vzw.indycar.ic15:id/play_icon
#   Wait Until Page Does Not Contain  id=com.vzw.indycar.ic15:id/video_view_play_pause_btn
#   Tap  id=com.vzw.indycar.ic15:id/video_player  456.8  620.0  3
#   Wait Until Element Is Visible  com.vzw.indycar.ic15:id/video_view_play_pause_btn  10
#   Click Button  '0'
#   Click Element At Coordinates  60.0  814.0
#   Click Element At Coordinates  1041.8  814.5
#   Click Element At Coordinates  60.0  814.0
#   Click Element  com.vzw.indycar.ic15:id/video_view_play_pause_btn
#   Landscape

Test 1 Start Navigation

  Start Navigation

Test 2 Switch/Choose Category

  Start Navigation
  #Page Should Contain Text  Videos
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
  Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]
  Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  ${CatText}
  Close Application

Test 3 Sharing Facebook

  Start Navigation
  Page Should Contain Text  Videos
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
  Wait Until Element Is Visible  id=com.vzw.indycar:id/play_icon
  Click Element  id=com.vzw.indycar:id/play_icon
  Facebook Share2
  Close Application

Test 4 Sharing Twitter

  Start Navigation
  Sleep    3
  Page Should Contain Text  Videos
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
  Wait Until Element Is Visible  id=com.vzw.indycar:id/play_icon
  Click Element  id=com.vzw.indycar:id/play_icon
  Twitter Share4
  Close Application



# Test 5A Play Lock/Unlock Tablet
#
#   Start Navigation
#   Page Should Contain Text  Videos
#   Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
#   Wait Until Element Is Visible  id=com.vzw.indycar:id/play_icon
#   Click Element  com.vzw.indycar:id/video_view_play_pause_btn
#   Sleep  5
#   Tap  com.vzw.indycar:id/video_view_surface
#   Lock
