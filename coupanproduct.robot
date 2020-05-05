*** Settings ***
Library    SeleniumLibrary
Library    String
Resource  LoginBigc.robot

*** Test Cases ***
Login to admin
        Login
Coupon Product
      sleep  2s
      Click Element   xpath=//a[contains(text(),'Coupon Products')]  #click o coupan product
      sleep  4s
      Click Element   xpath=//button[@class='btn btn-success btn-sm mb-3 btn-add-new ng-star-inserted']
      Sleep  2s
      Input text      //input[@class='form-control ng-untouched ng-pristine ng-valid']  3
      #sleep  2s
      Input text      //input[@placeholder='ex.1233 3455 3456']   5678
      #sleep  2s
      Input text      //input[@placeholder='Enter product name']  testtype
      #sleep  2s
      Input text      //input[@placeholder='Enter product price']  1000
      #sleep  2s
      Select From List By Label   //select[@id='creditTypeId']  Big Card Point
      #sleep  2s
      Input text  //input[@placeholder='Enter promotion value']  100
      #sleep  2s
      Select From List By Label  //select[@id='promotionTypeId']   Percent
      #sleep  2s
      Execute JavaScript    window.scrollTo(0,200)
      Select From List By Label      //select[@id='categoryNameId']      Big C Privilege / บิ๊กซี
      sleep  2s
      Click Element   //input[@role='listbox']
      Input text      //input[@role='listbox']   hotel
      Press Key       //input[@role='listbox']   \\\13
      sleep    2s
      Input text   //input[@placeholder='Enter display name (EN)']    Product one
      sleep   2s
      Input text   //textarea[@placeholder='Enter product description (EN)']    This product is for testing purpose.
      sleep  2s
      Input text   //textarea[@placeholder='Enter product details (EN)']      This product is for testing purpose.

#      sleep  2s
#      Input text     //input[@placeholder='Enter display name (TH)']    สินค้าหนึ่ง
#      sleep  2s
#      Input text     //textarea[@placeholder='Enter product description (TH)']    ผลิตภัณฑ์นี้มีวัตถุประสงค์เพื่อทดสอบ
#      sleep  2s
#      Input text    //textarea[@placeholder='Enter product details (TH)']     ผลิตภัณฑ์นี้มีวัตถุประสงค์เพื่อทดสอบ
#      sleep  2s
#      Input text    //*[@class='ck-blurred ck ck-content ck-editor__editable ck-rounded-corners ck-editor__editable_inline']    ทดสอบ
#      sleep  3s
#      Choose File   (//*[@class='btn btn-outline-success btn-sm btn-cancel-new'])[1]     selenium-screenshot-28.png