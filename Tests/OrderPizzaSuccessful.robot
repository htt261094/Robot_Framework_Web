*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeywordsDefinition/LoginPage.robot
Resource    ../Resources/KeywordsDefinition/MenuPage.robot

*** Test Cases ***
User order pizza successfully
    Open page
    User input username
    User input password
    User click login button
    User choose Medium Size
    User choose Supreme Flavor
    User choose Buffalo Sauce
    User choose Green Olive topping
    User choose Tomatoes topping
    User input quantity
    User add pizzas to cart
    Order pizza successfully
    Close_Browser