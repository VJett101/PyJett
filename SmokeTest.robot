*** Settings ***
Library  AppiumLibrary

Documentation  Smoke Test ${Phone}

Force Tags  Device Porting

*** Variables ***
${Phone}  Pixel3 XL
${OS}  8.1.0
${Server}  http://localhost:4733/wd/hub
${CategoryPhotos}  Grand Prix of Sonoma - Friday, September 14, 2018
${Article}

*** Test Cases ***

Uninstall/Install from Google Play

  Open application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.android.vending  automationName=appium  appPackage=com.android.vending  appActivity=com.android.vending.AssetBrowserActivity
  Remove Application  com.vzw.indycar
  Sleep  5
  Click Element  Search
  Input Text  com.android.vending:id/search_box_text_input  Indycar
  Sleep  3
  Click Element  com.android.vending:id/tab_bar
  Sleep  3
  Click Element  App: INDYCAR
  Sleep  3
  Click Text  INSTALL
  Sleep  50
  Close Application

Location Access
  Open App
  Click Element  id=com.vzw.indycar:id/ok_btn
  Click Element  id=com.android.packageinstaller:id/permission_allow_button
  Wait Until Element Is Visible  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Close Application

Terms and Conditions Verification
  Open App
  Click Element  id=com.vzw.indycar:id/ok_btn
  Click Element  id=com.android.packageinstaller:id/permission_allow_button
  Wait Until Element Is Visible  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Close Application

Decline Terms and Conditions
  Open App
  Click Element  id=com.vzw.indycar:id/ok_btn
  Click Element  id=com.android.packageinstaller:id/permission_allow_button
  Wait Until Element Is Visible  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Click Element  id=com.vzw.indycar:id/terms_and_conditions_decline_btn
  Wait Until Element Is Visible  id=com.vzw.indycar:id/ok_btn
  Close Application

Accept Terms and Conditions
  Open App
  Click Element  id=com.vzw.indycar:id/ok_btn
  Click Element  id=com.android.packageinstaller:id/permission_allow_button
  Wait Until Element Is Visible  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Click Element  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Wait Until Element Is Visible  id=com.vzw.indycar:id/personalization_include_email
  Close Application

Verify Email Submission
  Open App
  Click Element  id=com.vzw.indycar:id/ok_btn
  Click Element  id=com.android.packageinstaller:id/permission_allow_button
  Wait Until Element Is Visible  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Click Element  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Wait Until Element Is Visible  id=com.vzw.indycar:id/personalization_include_email
  Click Element  id=com.vzw.indycar:id/personalization_include_email
  Input Text  id=com.vzw.indycar:id/personalization_email  vincent.funaro@omnigon.com
  Click Element  id=com.vzw.indycar:id/personalization_submit_btn
  Wait Until Element Is Visible  id=com.vzw.indycar:id/ok_btn
  Close Application

Verify Pick a Favorite Driver and Team Smartphone
  Open App
  Click Element  id=com.vzw.indycar:id/ok_btn
  Click Element  id=com.android.packageinstaller:id/permission_allow_button
  Wait Until Element Is Visible  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Click Element  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Wait Until Element Is Visible  id=com.vzw.indycar:id/personalization_include_email
  Click Element  id=com.vzw.indycar:id/personalization_decline_btn
  Wait Until Element Is Visible  id=com.vzw.indycar:id/favorite_name
  Click Element  id=com.vzw.indycar:id/action_on_top
  Wait Until Element Is Visible  id=com.vzw.indycar:id/favorite_name
  Click Element  com.vzw.indycar:id/action_on_top
  Wait Until Element Is Visible  id=com.vzw.indycar:id/notification_value
  Close Application

# Pick Fav Driver and Team Tablet
#   Open App
#   Click Element  id=com.vzw.indycar:id/ok_btn
#   Click Element  id=com.android.packageinstaller:id/permission_allow_button
#   Wait Until Element Is Visible  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
#   Click Element  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
#   Wait Until Element Is Visible  id=com.vzw.indycar:id/personalization_include_email
#   Click Element  id=com.vzw.indycar:id/personalization_decline_btn
#   Wait Until Element Is Visible  id=com.vzw.indycar:id/favorite_name
#   Click Element  com.vzw.indycar:id/select_favorite_next_btn
#   Wait Until Element Is Visible  id=com.vzw.indycar:id/favorite_name
#   Click Element  com.vzw.indycar:id/select_favorite_next_btn
#   Wait Until Element Is Visible  id=com.vzw.indycar:id/notification_value
#   Close Application
#

Toggle Notifications
  Open App
  Click Element  id=com.vzw.indycar:id/ok_btn
  Click Element  id=com.android.packageinstaller:id/permission_allow_button
  Wait Until Element Is Visible  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Click Element  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
  Wait Until Element Is Visible  id=com.vzw.indycar:id/personalization_include_email
  Click Element  id=com.vzw.indycar:id/personalization_decline_btn
  Wait Until Element Is Visible  id=com.vzw.indycar:id/favorite_name
  Click Element  id=com.vzw.indycar:id/action_on_top
  Wait Until Element Is Visible  id=com.vzw.indycar:id/favorite_name
  Click Element  com.vzw.indycar:id/action_on_top
  Wait Until Element Is Visible  id=com.vzw.indycar:id/notification_value
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.Switch
  Page Should Not Contain Text  Breaking News
  Close Application

# Toggle Notifications Tablet
#    Open App
#    Click Element  id=com.vzw.indycar:id/ok_btn
#    Click Element  id=com.android.packageinstaller:id/permission_allow_button
#    Wait Until Element Is Visible  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
#    Click Element  id=com.vzw.indycar:id/terms_and_conditions_agree_btn
#    Wait Until Element Is Visible  id=com.vzw.indycar:id/personalization_include_email
#    Click Element  id=com.vzw.indycar:id/personalization_decline_btn
#    Wait Until Element Is Visible  id=com.vzw.indycar:id/favorite_name
#    Click Element  com.vzw.indycar:id/select_favorite_next_btn
#    Wait Until Element Is Visible  id=com.vzw.indycar:id/favorite_name
#    Click Element  com.vzw.indycar:id/select_favorite_next_btn
#    Wait Until Element Is Visible  id=com.vzw.indycar:id/notification_value
#    Click Element  com.vzw.indycar:id/notifications_done_btn
#    Page Should Not Contain Text  Breaking News
#    Close Application

# Video Switch/Choose Category
#    Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
#    # Wait Until Element Is Visible  com.vzw.indycar:id/action_on_top
#    # Click Element  com.vzw.indycar:id/action_on_top
#    # Wait Until Element Is Visible    com.vzw.indycar:id/action_on_top
#    # Click Element  com.vzw.indycar:id/action_on_top
#    Wait Until Element Is Visible    com.vzw.indycar:id/action_on_top
#    #${Element1}   Run Keyword And Return Status    Element Should Be Visible  id=com.vzw.indycar:id/action_on_top
#
#    #Run Keyword If    ${Element1}  Click Element  id=com.vzw.indycar:id/action_on_top  ELSE  Click Element  Open
#    # ${Element2}  Open
#    # ${IsElementVisible}=  Run Keyword And Return Status    Element Should Be Visible   ${Element1}
#    # Run Keyword If    ${IsElementVisible}  MyCase1  ELSE  Click Element  ${Element2}
#    Click Element  com.vzw.indycar:id/action_on_top
#    Wait Until Element Is Visible    Open
#    Click Element  Open
#    Page Should Contain Text  Videos
#    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
#    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
#    Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text
#    Wait Until Page Contains    Teams Videos
#    Click Text  Teams Videos
#    Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  Teams Videos
#    Close Application

# Video Sharing Facebook
#     Start Navigation
#     Page Should Contain Text  Videos
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/play_icon
#     Click Element  id=com.vzw.indycar:id/play_icon
#     Facebook Share2
#     Close Application
#
# Video Sharing Twitter
#     Start Navigation
#     Sleep    3
#     Page Should Contain Text  Videos
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[2]
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/play_icon
#     Click Element  id=com.vzw.indycar:id/play_icon
#     Twitter Share5
#     Close Application

# Social Share
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[4]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[4]
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/tweet_item_retweet_btn
#     Click Element  id=com.vzw.indycar:id/tweet_item_retweet_btn
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[1]
#     Wait Until Element Is Visible  id=You Retweeted
#
# Social Show More
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[4]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[4]
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/tweet_item_retweet_btn
#     Super Swipe
#     Super Swipe
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/loadMoreButton
#     Click Element  id=com.vzw.indycar:id/loadMoreButton
#
# Social Swipe Up/Down
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[4]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[4]
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/tweet_item_retweet_btn
#     Swipy2
#
# News Switch/Choose Category
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
#     Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  Track News
#     Close Application
#
# News Article Click and Scroll
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Wait Until Element Is Visible  Share
#     Swipy1
#     Close Application

# News Click and Scroll Tablet
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Wait Until Element Is Visible  Share
#     Swipy2
#     Close Application

# News Show More
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
#     Sleep    5
#     Super Swipe
#     Super Swipe
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/loadMoreButton
#     Click Element  id=com.vzw.indycar:id/loadMoreButton
#     Close Application

# News Sharing Twitter
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Twitter Share5
#     Close Application

# News Sharing Twitter Tab
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Twitter Share3
#     Close Application

# News Sharing Facebook
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Facebook Share2
#     Close Application

# News Sharing Facebook Tab
#     Open Navigation
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[3]
#     Facebook Share2
#     Close Application

# Photos Switch Category
#     Open Navigation
#     Open Photos
#     Category Switch
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.TextView
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.TextView
#     Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  ${CategoryPhotos}
#     Close Application
#
# Photos Swipe Up/Down
#     Open Navigation
#     Open Photos
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Wait Until Element Is Visible  Share
#     Swipy1
#     Close Application

# Photos Tablet Share/Swipe
#     Open Navigation
#     Open Photos
#     Capture Page Screenshot
#     Wait Until Element Is Visible  	com.vzw.indycar:id/media_item_title
#     Click Element  	com.vzw.indycar:id/media_item_title
#     Sleep  3
#     Swipe  1748  905  254  836
#     Sleep  3
#     Swipe  254  836  1748  905
#     Facebook Share2
#     Close Application
#     Open Navigation
#     Open Photos
#     Capture Page Screenshot
#     Wait Until Element Is Visible  	com.vzw.indycar:id/media_item_title
#     Click Element  	com.vzw.indycar:id/media_item_title
#     Sleep  3
#     Twitter Share5
#     Close Application

# Photos View Photo Details
#     Open Navigation
#     Open Photos
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Wait Until Element Is Visible  Share
#     Capture Page Screenshot
#     Close Application
#
# Photos Fullscreen Photo view
#
#     Open Navigation
#     Open Photos
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Wait Until Element Is Visible  Share
#     Tap  id=com.vzw.indycar:id/photo_thumbnail
#     Wait Until Element Is Visible  Share
#     Capture Page Screenshot
#     Close Application
#
# Photos Show More
#
#     Open Navigation
#     Open Photos
#     Category Switch
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.TextView
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.TextView
#     Wait Until Element Is Visible  Favorites
#     Super Swipe
#     Super Swipe
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/loadMoreButton
#     Click Element  id=com.vzw.indycar:id/loadMoreButton
#     Close Application
#
# Photos Swipe Photos Full Screen
#     Open Navigation
#     Open Photos
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Wait Until Element Is Visible  Share
#     Tap  id=com.vzw.indycar:id/photo_thumbnail
#     Wait Until Element Is Visible  Share
#     Sideswipe
#     Capture Page Screenshot
#     Close Application
#
# Photos Auto Rotate
#
#     Open Navigation
#     Open Photos
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Wait Until Element Is Visible  Share
#     Tap  id=com.vzw.indycar:id/photo_thumbnail
#     Wait Until Element Is Visible  Share
#     Landscape
#     Capture Page Screenshot
#     Wait Until Element Is Visible  Share
#     Portrait
#     Capture Page Screenshot
#     Close Application

# Photos Facebook Share
#     Open Navigation
#     Open Photos
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Facebook Share2
#     Click Text  POST
#     Close All Applications
#
# Photos Twitter Share
#     Open Navigation
#     Open Photos
#     Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.FrameLayout[1]
#     Twitter Share5
#     Close Application

# Podcast Download
#
#     Open Navigation
#     Open Podcast
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
#     Click Element  id=com.vzw.indycar:id/podcast_icon
#     Click Element  id=com.vzw.indycar:id/podcast_icon
#     Sleep    60
#     Close Application
#
# Podcast Play/Switch Podcast
#
#     Open Navigation
#     Open Podcast
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
#     Click Element  id=com.vzw.indycar:id/podcast_icon
#     Capture Page Screenshot
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.FrameLayout/android.widget.ImageView
#     Capture Page Screenshot
#     Close Application

# Podcast Play/Switch Podcast Tablet
#
#     Open Navigation
#     Open Podcast
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
#     Click Element  id=com.vzw.indycar:id/podcast_icon
#     Capture Page Screenshot
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.FrameLayout/android.widget.ImageView
#     Capture Page Screenshot
#     Close Application

# Podcast Seek Bar
#
#     Open Navigation
#     Open Podcast
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
#     Click Element  id=com.vzw.indycar:id/podcast_icon
#     Wait Until Element Is Visible  com.vzw.indycar:id/audio_time_seek
#     Click Element  com.vzw.indycar:id/audio_time_seek
#     Capture Page Screenshot
#
# Podcast Pause/Rewind/FF
#
#     Open Navigation
#     Open Podcast
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
#     Click Element  id=com.vzw.indycar:id/podcast_icon
#     Wait Until Element Is Visible  com.vzw.indycar:id/audio_play_button
#     Click Element  com.vzw.indycar:id/audio_play_button
#     Wait Until Element Is Visible  com.vzw.indycar:id/audio_play_button
#     Click Element  com.vzw.indycar:id/audio_play_button
#     Click Element  com.vzw.indycar:id/audio_forward_button
#     Capture Page Screenshot
#     Click Element  com.vzw.indycar:id/audio_rewind_button
#     Capture Page Screenshot
#     Close Application
#
# Podcast Volume Min/Max
#
#     Open Navigation
#     Open Podcast
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
#     Click Element  id=com.vzw.indycar:id/podcast_icon
#     Wait Until Element Is Visible  com.vzw.indycar:id/sound_on_max
#     Click Element  com.vzw.indycar:id/sound_on_max
#     Capture Page Screenshot
#     Click Element  com.vzw.indycar:id/sound_off
#     Capture Page Screenshot
#     Click Element  com.vzw.indycar:id/seekBar
#     Capture Page Screenshot
#
# Podcast Delete Podcast
#
#     Open Navigation
#     Open Podcast
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
#     Click Element  Edit
#     Capture Page Screenshot
#     Click Element  com.vzw.indycar:id/podcast_icon
#     Click Element  Edit
#     Wait Until Element Is Visible  Edit
#     Capture Page Screenshot
#
# Podcast Delete Cancel
#
#     Open Navigation
#     Open Podcast
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
#     Click Element  Delete
#     Wait Until Element Is Visible  id=android:id/button2
#     Click Element  id=android:id/button2
#     #Page Should Not Contain Text  Cancel
#     Capture Page Screenshot
#
# Podcast Delete All
#
#     Open Navigation
#     Open Podcast
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
#     Click Element  Delete
#     Wait Until Element Is Visible   id=android:id/button1
#     Click Element  id=android:id/button1
#     Capture Page Screenshot
#     Close Application
#
# Schedule Scroll
#
#     Open Schedule
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/action_fav_driver
#     Swipy1
#     # Swipe    513    1717    488    363
#     # Sleep    5
#     # Swipe    488  363  513  1717
#
# Schedule View Races
#
#     Open Schedule
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/races_list
#     Capture Page Screenshot
#
# Schedule Race hub
#
#     Open Schedule
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/action_fav_driver
#     Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[1]
#     Capture Page Screenshot
#
# Schedule Results
#
#     Open Schedule
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/race_item_results_btn
#     Click Element  id=com.vzw.indycar:id/race_item_results_btn
#     Sleep  3
#     Capture Page Screenshot
#
# Schedule Calender
#
#     Open Schedule
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/action_calendar
#     Click Element  com.vzw.indycar:id/action_calendar
#     Wait Until Page Contains  Create a calendar
#     Capture Page Screenshot
#
# Schedule Standings
#
#     Open Standings2
#     Wait Until Element Is Visible  id=com.vzw.indycar:id/common_spinner_secondary_text
#     Swipy1
#     # Swipe    513    1717    488    363
#     # Sleep    5
#     # Swipe    488  363  513  1717
#
# Standings Switch Category
#
#     Open Standings
#     Category Switch
#     Wait Until Page Contains  Verizon P1 Standings
#     Click Text  Verizon P1 Standings
#     Element Attribute Should Match  id=com.vzw.indycar:id/common_spinner_secondary_text  text  Verizon P1 Standings
#
# Favorite Drivers
#
#     Open Drivers
#     Wait Until Element Is Visible  com.vzw.indycar:id/is_favorite
#     Click Element  com.vzw.indycar:id/is_favorite
#     Capture Page Screenshot
#     Wait Until Element Is Visible    com.vzw.indycar:id/drivers_and_teams_favorite_list_header
#     Click Element  com.vzw.indycar:id/drivers_and_teams_favorite_item
#     Wait Until Element Is Visible   com.vzw.indycar:id/driver_is_favorite
#     Capture Page Screenshot
#
# Favorite Teams
#
#     Open Teams
#     Wait Until Element Is Visible  com.vzw.indycar:id/is_favorite
#     Click Element  com.vzw.indycar:id/is_favorite
#     Capture Page Screenshot
#     Wait Until Element Is Visible    com.vzw.indycar:id/drivers_and_teams_favorite_list_header
#     Click Element  com.vzw.indycar:id/drivers_and_teams_favorite_item
#     Wait Until Element Is Visible   com.vzw.indycar:id/team_name
#     Capture Page Screenshot
#
# Indycar 101
#
#     Open101
#     Sleep    3
#     Click Text    Overview
#     Capture Page Screenshot
#
# Fantasy
#
#     Open Fantasy
#
# Settings Main
#
#     Open Settings
#     Sleep    2
#     Click Text  Notifications
#     Sleep  3
#     Click Element  	com.vzw.indycar:id/notification_value
#     Capture Page Screenshot
#     Click Element  Navigate up
#     Sleep  3
#     Click Text  Notifications
#     Capture Page Screenshot
#     Sleep  3
#     Click Element  Navigate up
#     Sleep  3
#     Click Text  INDYCAR Nation
#     Sleep  3
#     Click Element  com.vzw.indycar:id/personalization_include_email
#     Sleep  3
#     Input Text  id=com.vzw.indycar:id/personalization_email  Test Email
#     Sleep  2
#     Capture Page Screenshot
#     Click Element  Navigate up
#     Sleep  3
#     Click Text  Recommend to a Friend
#     Sleep  3
#     Capture Page Screenshot
#     Click Element  Navigate up
#
# Settings Main Tablets
#
#     Open Settings
#     Sleep    2
#     Click Text  Notifications
#     Sleep  3
#     Click Element  	com.vzw.indycar:id/notification_value
#     Capture Page Screenshot
#     Sleep  3
#     Click Text  Notifications
#     Capture Page Screenshot
#     Sleep  3
#     Sleep  3
#     Click Text  INDYCAR Nation
#     Sleep  3
#     Click Element  com.vzw.indycar:id/personalization_include_email
#     Sleep  3
#     Input Text  id=com.vzw.indycar:id/personalization_email  Test Email
#     Sleep  2
#     Capture Page Screenshot
#     Sleep  3
#     Click Text  Recommend to a Friend
#     Sleep  3
#     Capture Page Screenshot
#
# Settings Rate Us/ Feedback No/Dismiss
#
#     Open Settings
#     Sleep  3
#     Click Text  Rate Us / Feedback
#     Wait Until Element Is Visible    android:id/button2
#     Click Element  android:id/button2
#     Sleep  5
#     Capture Page Screenshot
#     Click Element  Navigate up
#     Sleep    3
#     Click Text  Rate Us / Feedback
#     Wait Until Element Is Visible    android:id/button2
#     Click Element  android:id/button3
#     Close Application

# Settings Rate US/Feedback No/Dismiss Tablets
#
#     Open Settings
#     Sleep  3
#     Click Text  Rate Us / Feedback
#     Wait Until Element Is Visible    android:id/button2
#     Click Element  android:id/button2
#     Sleep  2
#     Capture Page Screenshot
#     Close Application
#     Open Settings2
#     Sleep  2
#     Click Text  Rate Us / Feedback
#     Wait Until Element Is Visible    android:id/button2
#     Click Element  android:id/button3

# Settings Rate Us/ Feedback No Thanks
#
#     Open Settings
#     Wait Until Page Contains    Rate Us / Feedback
#     Click Text  Rate Us / Feedback
#     Wait Until Element Is Visible  android:id/button1
#     Click Element  android:id/button1
#     Sleep  2
#     Click Text  NO, THANKS
#     Capture Page Screenshot
#
# Settings Rate Us Google Play
#
#     Open Settings
#     Wait Until Page Contains    Rate Us / Feedback
#     Click Text  Rate Us / Feedback
#     Wait Until Element Is Visible  android:id/button1
#     Click Element  android:id/button1
#     Sleep  2
#     Click Text  RATE IT NOW
#     Wait Until Element Is Visible   com.android.vending:id/title_content_rating
#     Page Should Contain Text    UNINSTALL
#     Close Application

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
  Sleep  3
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

#Old Samsung, tablets small
Swipy2

    Swipe  387  1167  373  767
    Sleep    5
    Swipe  380  388  366  795

#Tablets
Swipy3
  Swipe  1337  1477  1350  973
  Sleep  3
  Swipe  1354  706  1375  1207

Open Podcast

    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[6]
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[6]

Category Switch Podcast
  Wait Until Element Is Visible  id=com.vzw.indycar:id/common_spinner_secondary_text
  Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text

Open Navigation
  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open

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

Sideswipe
  Swipe  979  1009  67  1025
  Wait Until Element Is Visible  Share
  Swipe  65  1029  981  1040

#Old Samsung Phones
Sideswipe2
  Swipe  642  685  56  724
  Wait Until Element Is Visible  Share
  Swipe  75  726  607  714

Open Photos
  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[5]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[5]

  #No Swipe Pixel
Twitter Share
  Wait Until Element Is Visible  Share
  Click Element  Share
  Wait Until Page Contains    Tweet
  Click Text  Tweet
  Wait Until Page Contains  Tweet
  Click Text  Tweet
  Sleep  2
  Page Should Contain Text  Tweet

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

#Samsung J7
Twitter Share7
  Wait Until Element Is Visible  Share
  Click Element  Share
  Sleep    3
  Swipe  354  1168  313  742
  Wait Until Page Contains  Tweet
  Click Text  Tweet
  Wait Until Page Does Not Contain Element  Share
  Page Should Contain Text  Tweet

#Samsung 2 of 2
Twitter Share 8
  Wait Until Element Is Visible  Share
  Click Element  Share
  Sleep    3
  #Wait Until Page Contains  Share video to…
  Click Element  //android.widget.ImageView[@content-desc="Page 2 of 2."]
  Wait Until Page Contains  Tweet
  Click Text  Tweet
  Wait Until Page Does Not Contain Element  Share
  Page Should Contain Text  Tweet

#No Swipe
Facebook Share2
  Wait Until Element Is Visible  Share
  Click Element  Share
  Wait Until Page Contains    Facebook
  Click Text  Facebook
  Wait Until Page Does Not Contain Element  Share
  Page Should Contain Text  Create Post

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
  Page Should Contain Text  Create Post

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
  Page Should Contain Text  Create Post

#Samsung J
Facebook Share5
  Wait Until Element Is Visible  Share
  Click Element  Share
  Sleep    3
  Swipe  354  1168  313  742
  Wait Until Page Contains  Facebook
  Click Text  Facebook
  Wait Until Page Does Not Contain Element  Share
  Page Should Contain Text  Create Post

Start Navigation
  Open Application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open

Open App
  Open application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity
