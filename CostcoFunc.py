import unittest
import os
import time

from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.by import By
import selenium.webdriver.support.expected_conditions as EC
import selenium.webdriver.support.ui as ui


OBJECTS = {
          "sign_in_page": (By.ID, "header_sign_in"),
          "email_txt": (By.ID, "logonId"),
          "pw_text": (By.NAME, "logonPassword"),
          "submit_login": (By.CSS_SELECTOR, '[value="Sign In"]'),
          "search_box": (By.ID, "search-field"),
          "search_click": (By.CLASS_NAME, "co-search-thin"),
          "add_to_cart": (By.ID, "add-to-cart-btn"),
          "finalize_cart": (By.XPATH, '//a[@href="/CheckoutCartView"]/button'),
          "remove": (By.LINK_TEXT, "Remove"),
          "non_member": (By.CSS_SELECTOR, '[value="Shop as Non-Member"]'),
          "chicken": (By.LINK_TEXT, "Outdoor Chicken or Rabbit Run with Mesh Cover by TRIXIE"),
}


class Costco(unittest.TestCase):


    def setUp(self):
        self.driver = webdriver.Firefox()
        self.base_url = "https://www.costco.com"
        email = os.environ['COSTCO_EMAIL']
        password = os.environ['COSTCO_PW']
        self.driver.get(self.base_url)
        self.click_element(OBJECTS['sign_in_page'])
        self.input_text(OBJECTS['email_txt'], email)
        self.input_text(OBJECTS['pw_text'], password)
        self.click_element(OBJECTS['submit_login'])

#Add and remove 1 item from shopping cart.
    def test_CartList(self):
        self.click_element(OBJECTS['non_member'])
        self.input_text(OBJECTS['search_box'], "chicken")
        self.click_element(OBJECTS['search_click'])
        self.click_element(OBJECTS['chicken'])
        #chicken_name = """ Outdoor Chicken or Rabbit Run with Mesh Cover by TRIXIE """ .strip()
        #chicken_locator = (By.CSS_SELECTOR, "[data-attribute='{}'".format(chicken_name))

        #self.click_element(chicken_locator)
        self.click_element(OBJECTS['add_to_cart'])

        self.click_element(OBJECTS['finalize_cart'])

        #chicken_locator = (By.CSS_SELECTOR, "[title='{}'".format(
            #chicken_name))

        assert self.is_visible(OBJECTS['chicken']), \
           'Chicken was not added to cart'

        self.click_element(OBJECTS['remove'])

        assert self.is_not_visible(OBJECTS['chicken']), \
            'Chicken was not removed from cart'

    def tearDown(self):
        self.driver.quit()

    def click_element(self, locator, timeout=10):
        """Clicks an element after validating it is visible

        :param tuple locator: Locator for the element
        :param int timeout: How long to wait for element to appear
        """

        self.is_visible(locator, timeout)
        self.driver.find_element(*locator).click()

    def input_text(self, locator, text, timeout=10):
        """Enters text into an element after validating it is visible

        :param tuple locator: Locator for the element
        :param str text: Text to enter into element
        :param int timeout: How long to wait for element to appear
        """
        self.is_visible(locator, timeout)
        self.driver.find_element(*locator).send_keys(text)

    def is_visible(self, locator, timeout=10):
        """Verifies that an element is visible

        :param tuple locator: Locator for the element
        :param int timeout: How long to wait for element to appear
        :raise AssertionError: If element is not found within timeout
        """
        try:
            ui.WebDriverWait(self.driver, timeout).until(
                EC.visibility_of_element_located(locator))
            return True
        except TimeoutException:
            assert False, 'Object with locator {} was not found'.format(
                locator)


    def is_not_visible(self, locator, timeout=10):
        """Verifies that an element is not visible

        :param tuple locator: Locator for the element
        :param int timeout: How long to wait for element to disappear
        :raise AssertionError: If element is still found within timeout
        """
        try:
            ui.WebDriverWait(self.driver, timeout).until_not(
                EC.visibility_of_element_located(locator))
            return True
        except TimeoutException:
            assert False, 'Object with locator {} was still present'.format(
                locator)


if __name__ == "__main__":
     unittest.main()
