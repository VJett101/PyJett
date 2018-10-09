*** Settings ***
Library  AppiumLibrary

Documentation  Start Up Test

Force Tags  demo

*** Variables ***
${Phone}  K20 V
${OS}  7.0

*** Test Cases ***

# Install APK
#
#   Open application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity
#   AppiumLibrary.Install App  /Users/vincentfunaro/Downloads/IndyCar2015-normal-debug_9.0.0.dev_dev.apk  com.vzw.indycar.ic15


Uninstall/Install from Google Play


  Open application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.android.vending  automationName=appium  appPackage=com.android.vending  appActivity=com.android.vending.AssetBrowserActivity
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
  Sleep  10
  Close Application
