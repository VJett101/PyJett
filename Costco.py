import unittest
import os
import time

from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.by import By
import selenium.webdriver.support.expected_conditions as EC
import selenium.webdriver.support.ui as ui


OBJECTS = {
          "sign_in_page": (By.ID, "header_sign_in),
          "email_txt": (By.ID, "logonId"),
          "pw_text": (By.NAME), "logonPassword"),
          "submit_login": (By.VALUE), "Sign In"),
          "search_box": (By.ID), "search-field"),
          "search_click": (By.CLASS, "co-search-thin"),
          "add_to_cart": (BY.ID, "add-to-cart-btn")
          "finalize_cart": (By.CSS_SELECTOR, "//button[text()='View Cart']")
          "remove": (By.LINK_TEXT, "Remove")
}


class Costco(unittest.TestCase):


    def setUp(self):
        self.driver = webdriver.Chrome()
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
        self.input_text(OBJECTS['searchbox'], 'chicken')
        self.click_element(OBJECTS['search_click'])

        chicken_name = """

        Chicken of the Sea Premium Chunk Light Tuna in Water 7 oz. Cans, 12-count """ ().strip
        chicken_locator = (By.CSS_SELECTOR, "[data-attribute='{}'".format(chicken_name))

        self.click_element(chicken_locator)
        self.click_element(OBJECTS['add_to_cart'])

        self.click_element(OBJECTS['finalize_cart'])

        chicken_locator = (By.CSS_SELECTOR, "[title='{}'".format(
            chicken_name))

        assert self.is_visible(chicken_locator), \
           'Chicken was added to cart'

        self.click_element(OBJECTS['remove'])

        assert self.is_visible(chicken_locator), \
            'Chicken was not removed from cart'




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
