*** Settings ***
Library  AppiumLibrary

Documentation  Smoke Test ${Phone}

Force Tags  Device Porting

*** Variables ***
${Phone}  Galaxy J3
${OS}  8.1.0
${Server}  http://localhost:4723/wd/hub
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
  Input Text  id=com.vzw.indycar:id/personalization_email  motorsports.omnigon@gmail.com
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

*** Keywords ***

Open App
  Open application  ${Server}  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity
