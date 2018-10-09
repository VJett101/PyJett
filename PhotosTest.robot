*** Settings ***
Library  AppiumLibrary

Documentation  Photos Test

Force Tags  Photos Post Race

*** Variables ***
${Phone}  K20 V
${OS}  7.0
${CatText}  Honda Indy Toronto - Saturday, July 14, 2018
${7ShareFB}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ScrollView/android.widget.LinearLayout/com.android.internal.widget.ViewPager/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[3]
${7ShareTweet}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ScrollView/android.widget.LinearLayout/com.android.internal.widget.ViewPager/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.ImageView
${9ShareFB}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout[4]/android.widget.FrameLayout/android.widget.ImageView
${9ShareTweet}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView


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

#Old Samsung Phones
Super Swipe2

    Swipe  367  1120  365  504
    Swipe  367  1120  365  504
    Swipe  367  1120  365  504
    Swipe  367  1120  365  504
    Swipe  367  1120  365  504
    Swipe  367  1120  365  504
    Swipe  367  1120  365  504
    Swipe  367  1120  365  504

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


Sideswipe
      Swipe  979  1009  67  1025
      Wait Until Element Is Visible  Share
      Swipe  65  1029  981  1040

#Old Samsung Phones
Sideswipe2
  Swipe  642  685  56  724
  Wait Until Element Is Visible  Share
  Swipe  75  726  607  714

Open Navigation

  Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open

Open Photos

  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[5]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[5]

Category Switch

  Wait Until Element Is Visible  id=com.vzw.indycar:id/common_spinner_secondary_text
  Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text

#Same Screen
Twitter Share
    #Add Boolean
    Wait Until Element Is Visible  Share
    Click Element  Share
    Wait Until Element Is Visible  ${7ShareTweet}
    Click Element  ${7ShareTweet}
    Tap  ${7ShareTweet}
    Page Should Contain Text  TWEET

#3 dots 3 of 3
Twitter Share2

    Wait Until Element Is Visible  Share
    Click Element  Share
    Wait Until Element Is Visible  xpath=//android.widget.ImageView[@content-desc="Page 3 of 3."]
    Click Element  xpath=//android.widget.ImageView[@content-desc="Page 3 of 3."]
    Wait Until Page Contains    Tweet
    Click Text  Tweet
    Wait Until Page Contains  TWEET
    Page Should Contain Text  TWEET

#3 dots 2 of 3
Twitter Share3

    Wait Until Element Is Visible  Share
    Click Element  Share
    Wait Until Element Is Visible  xpath=//android.widget.ImageView[@content-desc="Page 2 of 3."]
    Click Element  xpath=//android.widget.ImageView[@content-desc="Page 2 of 3."]
    Wait Until Page Contains    Tweet
    Click Text    Tweet
    Wait Until Page Contains  TWEET
    Page Should Contain Text  TWEET

#LG One Swipe Xpath
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
  CLick Element  Share
  Wait Until Page Contains    Tweet
  Click Text    Tweet
  Wait Until Page Contains    TWEET
  Page Should Contain Text    TWEET

#Same Screen
Facebook Share

    Wait Until Element Is Visible  Share
    Click Element  Share
    Wait Until Element Is Visible  ${7ShareFB}
    Click Element  ${7ShareFB}
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
#Samsung 2 of 2
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





*** Test Cases ***

Test 1 Switch Category

  Open Navigation
  Open Photos
  Category Switch
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.TextView
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.TextView
  Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  ${CatText}

Test 2 Swipe Up/Down

  Open Navigation
  Open Photos
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Wait Until Element Is Visible  Share
  Swipy2

Test 2A Tablet Share/Swipe

    Open Navigation
    Open Photos
    Capture Page Screenshot
    Wait Until Element Is Visible  	com.vzw.indycar:id/media_item_title
    Click Element  	com.vzw.indycar:id/media_item_title
    Sleep  3
    Swipe  1748  905  254  836
    Sleep  3
    Swipe  254  836  1748  905
    Facebook Share2
    Close Application
    Open Navigation
    Open Photos
    Capture Page Screenshot
    Wait Until Element Is Visible  	com.vzw.indycar:id/media_item_title
    Click Element  	com.vzw.indycar:id/media_item_title
    Sleep  3
    Twitter Share5


Test 3 View Photo Details

  Open Navigation
  Open Photos
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Wait Until Element Is Visible  Share
  Capture Page Screenshot

Test 4 Fullscreen Photo view

  Open Navigation
  Open Photos
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Wait Until Element Is Visible  Share
  Tap  id=com.vzw.indycar:id/photo_thumbnail
  Wait Until Element Is Visible  Share
  Capture Page Screenshot

Test 5 Show More

  Open Navigation
  Open Photos
  Category Switch
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.TextView
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.TextView
  Wait Until Element Is Visible  Favorites
  Super Swipe2
  Super Swipe2
  Wait Until Element Is Visible  id=com.vzw.indycar:id/loadMoreButton
  Click Element  id=com.vzw.indycar:id/loadMoreButton

Test 6 Swipe Photos Full Screen

  Open Navigation
  Open Photos
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Wait Until Element Is Visible  Share
  Tap  id=com.vzw.indycar:id/photo_thumbnail
  Wait Until Element Is Visible  Share
  Sideswipe2
  Capture Page Screenshot

Test 7 Auto Rotate

  Open Navigation
  Open Photos
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Wait Until Element Is Visible  Share
  Tap  id=com.vzw.indycar:id/photo_thumbnail
  Wait Until Element Is Visible  Share
  Landscape
  Capture Page Screenshot
  Wait Until Element Is Visible  Share
  Portrait
  Capture Page Screenshot

Test 8 Facebook Share

  Open Navigation
  Open Photos
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Facebook Share2
  Close Application

Test 9 Twitter Share

  Open Navigation
  Open Photos
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
  Twitter Share5
  Close Application
