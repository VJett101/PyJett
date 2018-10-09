*** Settings ***
Library  AppiumLibrary

Documentation  News Test

Force Tags  News Pre Race

*** Variables ***
${Phone}  K20 V
${OS}  7.0
${7ShareFB}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ScrollView/android.widget.LinearLayout/com.android.internal.widget.ViewPager/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[3]
${7ShareTweet}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ScrollView/android.widget.LinearLayout/com.android.internal.widget.ViewPager/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.ImageView
${9ShareFB}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout[4]/android.widget.FrameLayout/android.widget.ImageView
${9ShareTweet}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView
${Article}  Honda dominates Texas Top 10


*** Keywords ***
Open Navigation

  Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open

#Most Phones
Swipy1

  Swipe    522    1690    498    270
  Sleep    5
  Swipe    498  270  522  1690

#Old Samsung Less Resolution
Swipy2

  Swipe  387  1167  373  767
  Sleep    5
  Swipe  380  388  366  795

#Tablets
Swipy3

   Swipe  1337  1477  1350  973
   Sleep  3
   Swipe  1354  706  1375  1207




Super Swipe

  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209
  Swipe  519  1498  523  209

Super Swipe2

  Swipe  367  1120  365  504
  Swipe  367  1120  365  504
  Swipe  367  1120  365  504
  Swipe  367  1120  365  504
  Swipe  367  1120  365  504
  Swipe  367  1120  365  504
  Swipe  367  1120  365  504
  Swipe  367  1120  365  504


#Same screen
Twitter Share

    Wait Until Element Is Visible  Share
    Click Element  Share
    Wait Until Element Is Visible  ${7ShareTweet}
    Click Element  ${7ShareTweet}
    Tap  ${7ShareTweet}
    Page Should Contain Text  TWEET

#3 Dots 3 of 3
Twitter Share2


    Wait Until Element Is Visible  Share
    Click Element  Share
    Wait Until Element Is Visible  xpath=//android.widget.ImageView[@content-desc="Page 3 of 3."]
    Click Element  xpath=//android.widget.ImageView[@content-desc="Page 3 of 3."]
    Wait Until Page Contains  Tweet
    Click Text  Tweet
    Wait Until Page Contains  TWEET
    Page Should Contain Text  TWEET

#3 Dots 2of3
Twitter Share3

    Wait Until Element Is Visible  Share
    Click Element  Share
    Wait Until Element Is Visible  xpath=//android.widget.ImageView[@content-desc="Page 2 of 3."]
    Click Element  xpath=//android.widget.ImageView[@content-desc="Page 2 of 3."]
    Wait Until Page Contains    Tweet
    Click Text    Tweet
    Wait Until Page Contains  TWEET
    Page Should Contain Text  TWEET

#LG One Swipe Down
Twitter Share4

  Wait Until Element Is Visible  Share
  Click Element  Share
  Wait Until Element Is Visible    com.lge:id/title_lg
  Swipe  729  2336  711  1579
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView
  Wait Until Page Contains  TWEET
  Page Should Contain Text  TWEET



Twitter Share5

  Wait Until Element Is Visible  Share
  Click Element    Share
  Wait Until Page Contains  Tweet
  Click Text  Tweet
  Wait Until Page Does Not Contain Element    Share
  Page Should Contain Text    TWEET

#Same Screen Pixel
Facebook Share

    Wait Until Element Is Visible  Share
    Click Element  Share
    Wait Until Element Is Visible  ${9ShareFB}
    Click Element  ${9ShareFB}
    Wait Until Page Does Not Contain Element  Share
    Page Should Contain Text  POST

#No Swipe Click Text
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
      #Wait Until Page Contains  Share video to…
      Swipe  553  2013  518  1558
      Wait Until Page Contains  Facebook
      Click Text  Facebook
      Wait Until Page Does Not Contain Element  Share
      Page Should Contain Text  POST

#One Swipe Samsung
Twitter Share6

      Wait Until Element Is Visible  Share
      Click Element  Share
      Sleep    3
      #Wait Until Page Contains  Share video to…
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
        #Wait Until Page Contains  Share video to…
        Click Element  //android.widget.ImageView[@content-desc="Page 2 of 2."]
        Wait Until Page Contains  Facebook
        Click Text  Facebook
        Wait Until Page Does Not Contain Element  Share
        Page Should Contain Text  POST

Twitter Share 7

        Wait Until Element Is Visible  Share
        Click Element  Share
        Sleep    3
        #Wait Until Page Contains  Share video to…
        Click Element  //android.widget.ImageView[@content-desc="Page 2 of 2."]
        Wait Until Page Contains  Tweet
        Click Text  Tweet
        Wait Until Page Does Not Contain Element  Share
        Page Should Contain Text  Tweet


*** Test Case ***
Test 1 Switch/Choose Category

  Open Navigation
  Page Should Contain Text  News
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
  Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
  Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  Track News
  Close Application

Test 2 Article Click and Scroll

  Open Navigation
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Wait Until Element Is Visible  Share
  #Scroll  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[11]/android.widget.Image  id=com.vzw.indycar.ic15:id/news_image
  Swipy1
  Close Application

Test 2A Click and Scroll Tablet

  Open Navigation
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
  Wait Until Element Is Visible  Share
  #Scroll  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[11]/android.widget.Image  id=com.vzw.indycar.ic15:id/news_image
  Swipy1
  Close Application

Test 3 Show More

  Open Navigation
  #Page Should Contain Text  News
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
  Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
  Sleep    5
  Super Swipe
  Super Swipe
  Wait Until Element Is Visible  id=com.vzw.indycar:id/loadMoreButton
  Click Element  id=com.vzw.indycar:id/loadMoreButton
  Close Application



Test 4 Sharing Twitter

    Open Navigation
    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
    Twitter Share5
    Close Application

Test 4A Sharing Twitter Tab

  Open Navigation
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
  Twitter Share5
  Close Application

Test 5 Sharing Facebook

    Open Navigation
    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
    Facebook Share2
    Close Application

Test 5A Sharing Facebook Tab

    Open Navigation
    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
    Facebook Share2
    Close Application
