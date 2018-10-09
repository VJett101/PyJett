import os
import unittest
from appium import webdriver

class ContactsAndroidTest(unittest.TestCase):
   def setUp(self):
    desired_caps = {}
    desired_caps['platformName'] = 'Android'
    desired_caps['platformVersion'] = '7.0'
    desired_caps['deviceName'] = 'SAMSUNG-SM-J727V'
    desired_caps['app'] = 'com.vzw.indycar'
    desired_caps['appPackage'] = 'com.vzw.indycar'
    desired_caps['appActivity'] = 'com.vzw.indycar.activities.LauncherActivity'
    self.driver = webdriver.Remote('http://localhost:4723/wd/hub', desired_caps)



def test_ClickRefreshLink(self):
   refreshButton = self.driver.find_element_by_name('Open')
   self.assertTrue(refreshButton.is_displayed())
   refreshButton.click()
   el1 = driver.find_element_by_id('com.vzw.indycar:id/hero_item_image')
   el1.click()
   ## Right now we are just verify the displayed message on the Phone
## You can right code to handle that toast message and Verify that message

def tearDown(self):
   self.driver.quit()

if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(ContactsAndroidTest)
    unittest.TextTestRunner(verbosity=2).run(suite)
