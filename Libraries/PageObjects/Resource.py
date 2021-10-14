from robot.libraries.BuiltIn import BuiltIn
from selenium.common.exceptions import NoSuchElementException, StaleElementReferenceException
from selenium.webdriver.common.keys import Keys
from SeleniumLibrary.base import keyword
from selenium.webdriver.common.action_chains import ActionChains
import time
import uuid
import string
import random

class Resource(object):

    @property
    def _s2l(self):
        return BuiltIn().get_library_instance('SeleniumLibrary')

    @property
    def _driver(self):
        return self._s2l.driver

    def perform_search(self, criteria):
        print(criteria)


    #***************************************HomePage Personal UserDefined Keywords*************************************************
    @keyword
    def get_colorvalue(self, locator):
        element_color = self._driver.find_element_by_xpath(locator)
        return element_color.value_of_css_property('background_color')

    @keyword
    def get_textvalue(self, locator):
        text_of_element = self._driver.find_element_by_xpath(locator).text
        return text_of_element

    @keyword
    def move_offset(self):
        ActionChains(self._driver).move_by_offset(60, 60).click().perform()

    @keyword
    def click_close(self, locator):
        button = self._driver.find_element_by_xpath(locator)
        self._driver.implicitly_wait(10)
        ActionChains(self._driver).move_to_element(button).click(button).perform()

    @keyword
    def driver_refresh(self):
        self._driver.refresh()

    @keyword
    def Homepage_reload(self):
        self._driver.get("https://bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/southafrica/personal")

    @keyword
    def get_feedbackcat(self, option):
        fbcat = self._driver.find_element_by_id(option)
        self._driver.implicitly_wait(10)
        return fbcat

    @keyword
    def input_comments(self, locator, text):
        self._driver.find_element_by_xpath(locator).send_keys(text)

    @keyword
    def get_maxlength(self, locator):
        int_maxlen = self._driver.find_element_by_xpath(locator).get_attribute("maxlength")
        return int_maxlen

    @keyword
    def fn_listfinder(self, locator):
        ele_list_classname= self._driver.find_elements_by_xpath(locator)
        # int_i=ele_list_classname.length
        int_i=0
        for lee_next in ele_list_classname:
            try:
                str_title=lee_next.find_element_by_xpath("//h5[@class='card-title']").text
                if(str_title.contains("Credit")):
                    int_i += 1
            except:
                print("Not expected")
        return int_i

    @keyword
    def transform_RGB_to_HEX(self, bgcolor):
        hex_result = "".join([format(val, '02X') for val in bgcolor])
        return hex_result

    @keyword
    def get_fontweight(self, locator):
        str_fontweight = self._driver.find_element_by_xpath(locator).value_of_css_property('font-weight')
        return str_fontweight
    #***************************************Pass Send Keys*************************************************

    def Pass_sendkeys_to_application(self,str_sendkeys):
        print('value passed')
        self._driver.send_keys(str_sendkeys)