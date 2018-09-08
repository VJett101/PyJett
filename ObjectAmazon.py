from selenium import webdriver
import unittest
import Sendkeys
import time

OBJECTS = {
	"btn_sign_in": (By.CLASS_NAME, "Sign In"),
	"lnk_switch_acct": (By.ID, "cvf-account-switcher-add-accounts-link"),
	"txt_email": (By.TYPE, "email"),
	"btn_continue": (By.ID, "continue"),
	"password": (By.TYPE, "Password"),
	"searchbox": (By.ID, "twotabsearchtextbox"),
	"go": (By.VALUE, "Go"),
	"sign_in": (By.ID, "signInSubmit")
}


class Amazon(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Chrome()
        self.base_url = "http//www.amazon.com"
		driver = self.driver
        driver.get(self.base_url)
        driver.find_element(**OBJECTS['btn_sign_in']).click()
        driver.find_element(**OBJECTS['txt_email']).SendKeys("myemail")
        driver.find_element(***OBJECTS['btn_continue']).click()
        driver.find_element(***OBJECTS['password']).Sendkeys("mypassword")
        driver.find_element(***OBJECTS['sign_in']).click()

#Add/Remove 1 item to Wish List and Validate
    def WishList_Test(self):
        driver.find_element_by_id("twotabsearchtextbox").Sendkeys("hammers")
        driver.find_element(***OBJECTS['go']).click()
        driver.find_element_by_id("pdagDesktopSparkleDescription1").click()
        driver.find_element_by_id("add-to-cart-button").click()
        driver.find_element_by_id("nav-cart-count").click()
        amount = driver.find_by_element_id("nav-cart")
        val = num.get_attribute("aria-label")
        val2 = '1 item in cart'
		self.assertEquals(val, val2)
		driver.find_element_by_name("submit.delete.C17d3333c-3ebe-4d0d-89af-298d05339701").click()
        amt2 = driver.find_by_element_id("nav-cart")
        val3 = num2.get_attribute("aria-label")
        val4 = '0 items in cart'
		self.assertEquals(val3, val4)


# you shouldn't need a main guard when running unittests...just run the tests using nosetest or unittest command







#Neefti Interview Question


x = int(input())

if (x % 3 == 0) and (x % 5 == 0):
	print('FizzBuzz')
elif x % 3 == 0:
	print('Fizz')
elif x % 5 == 0:
	print('Buzz')
else:
	print(x)
