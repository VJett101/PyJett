from selenium import webdriver
from selenium.webdriver.com.common.keys import Keys
import unittest, time, re, Sendkeys, Sleep


class Amazon(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Chrome()
        self.base_url = "http//www.amazon.com"
#Add/Remove item to Wish List and Validate
    def WishList_Test(self):
        driver = self.driver
        driver.get(self.base_url)
        driver.find_element_by_class("Sign In").click()
        driver.find_element_by_id("cvf-account-switcher-add-accounts-link").click()
        driver.find_element_by_type("email").Sendkeys("myemail")
        driver.find_element_by_id("Continue").click()
        driver.find_element_by_type("Password").Sendkeys("mypassword")
        driver.find_element_by_id("signInSubmit").click()
        Sleep 2
        driver.find_element_by_id("twotabsearchtextbox").Sendkeys("hammers")
        driver.find_element_by_value("Go").click()
        driver.find_element_by_id("pdagDesktopSparkleDescription1").click()
        driver.find_element_by_("add-to-cart-button").click()
        driver.find_element_by_id("nav-cart-count").click()
        Num = driver.find_by_element_id("nav-cart")
        Val = num.get_attribute("aria-label")
        Val2 = '1 item in cart'
        if Val = Val2
          print 'pass'
        else:
          print 'fail'
        driver.find_element_by_name("submit.delete.C17d3333c-3ebe-4d0d-89af-298d05339701").click()
        Num2 = driver.find_by_element_id("nav-cart")
        Val3 = num2.get_attribute("aria-label")
        Val4 = '0 items in cart'
        if Val3 = Val4
          print 'pass'
        else:
          print 'fail'


if __name__ =  "__main__":
    unittest.main()






#Neefti Interview Question


x = int(input())
if x % 3:
    print 'Bizz'
else:
    print 'Bizz' + 'Fizz'
