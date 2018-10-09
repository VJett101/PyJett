*** Settings ***
Library  AppiumLibrary

Documentation  Podcast Test

Force Tags  Podcast Post Race

*** Variables ***
${Phone}  K20 V
${OS}  7.0
${CatText}


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

Open Navigation

  Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=${OS}  deviceName=${Phone}  app=com.vzw.indycar  automationName=appium  appPackage=com.vzw.indycar  appActivity=com.vzw.indycar.activities.LauncherActivity  noReset=true
  Wait Until Element Is Visible  Open
  Click Element  Open

Open Photos

  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[5]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[5]

Open Podcast

  Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[6]
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.FrameLayout[6]

Category Switch Podcast

  Wait Until Element Is Visible  id=com.vzw.indycar:id/common_spinner_secondary_text
  Click Element  id=com.vzw.indycar:id/common_spinner_secondary_text

*** Test Cases ***

Test 1 Podcast Download

  Open Navigation
  Open Podcast
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  id=com.vzw.indycar:id/podcast_icon
  Click Element  id=com.vzw.indycar:id/podcast_icon
  Sleep    50

Test 2 Play/Switch Podcast

  Open Navigation
  Open Podcast
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  id=com.vzw.indycar:id/podcast_icon
  Capture Page Screenshot
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.FrameLayout/android.widget.ImageView
  Capture Page Screenshot
  Close Application

Test 2A Play/Switch Podcast Tablet

    Open Navigation
    Open Podcast
    Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
    Click Element  id=com.vzw.indycar:id/podcast_icon
    Capture Page Screenshot
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.FrameLayout/android.widget.ImageView
    Capture Page Screenshot
    Close Application


Test 3 Seek Bar

  Open Navigation
  Open Podcast
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  id=com.vzw.indycar:id/podcast_icon
  Wait Until Element Is Visible  com.vzw.indycar:id/audio_time_seek
  Click Element  com.vzw.indycar:id/audio_time_seek
  Capture Page Screenshot

Test 4 Pause/Rewind/FF

  Open Navigation
  Open Podcast
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  id=com.vzw.indycar:id/podcast_icon
  Wait Until Element Is Visible  com.vzw.indycar:id/audio_play_button
  Click Element  com.vzw.indycar:id/audio_play_button
  Wait Until Element Is Visible  com.vzw.indycar:id/audio_play_button
  Click Element  com.vzw.indycar:id/audio_play_button
  Click Element  com.vzw.indycar:id/audio_forward_button
  Capture Page Screenshot
  Click Element  com.vzw.indycar:id/audio_rewind_button
  Capture Page Screenshot
  Close Application

Test 6 Volume Min/Max

  Open Navigation
  Open Podcast
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  id=com.vzw.indycar:id/podcast_icon
  Wait Until Element Is Visible  com.vzw.indycar:id/sound_on_max
  Click Element  com.vzw.indycar:id/sound_on_max
  Capture Page Screenshot
  Click Element  com.vzw.indycar:id/sound_off
  Capture Page Screenshot
  Click Element  com.vzw.indycar:id/seekBar
  Capture Page Screenshot


Test 7 Delete Podcast

  Open Navigation
  Open Podcast
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  Edit
  Capture Page Screenshot
  Click Element  com.vzw.indycar:id/podcast_icon
  Click Element  Edit
  Wait Until Element Is Visible  Edit
  Capture Page Screenshot

Test 8 Delete Cancel

  Open Navigation
  Open Podcast
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  Delete
  Wait Until Element Is Visible  id=android:id/button2
  Click Element  id=android:id/button2
  #Page Should Not Contain Text  Cancel
  Capture Page Screenshot

Test 9 Delete All

  Open Navigation
  Open Podcast
  Wait Until Element Is Visible  id=com.vzw.indycar:id/podcast_icon
  Click Element  Delete
  Wait Until Element Is Visible   id=android:id/button1
  Click Element  id=android:id/button1
  Capture Page Screenshot
  Close Application
