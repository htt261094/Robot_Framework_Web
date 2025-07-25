*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/MenuPage.py

*** Keywords ***
#User choose Pizza size
User choose Large Size
    Click Element    ${PizzaLarge_radioBtn}

User choose Medium Size
    Click Element    ${PizzaMedium_radioBtn}

User choose Small size
    Click Element    ${PizzaSmall_RadioBtn}

#User choose Pizza flavor
User choose Cheese Flavor
    Click Element    ${Flavor_dropdownList}
    Click Element    ${CheesFlavor_option}

User choose Pepperoni Flavor
    Click Element    ${Flavor_dropdownList}
    Click Element    ${PepperoniFlavor_option}

User choose Supreme Flavor
    Click Element    ${Flavor_dropdownList}
    Click Element    ${SupremeFlavor_option}

User choose Veggie Delight Flavor
    Click Element    ${Flavor_dropdownList}
    Click Element    ${VeggieDelightFlavor_option}

#User choose Pizza Sauce
User choose Marinara Sauce
    Click Element    ${MarinaraSauce_radioBtn}

User choose Buffalo Sauce
    Click Element    ${BuffaloSauce_radioBtn}

User choose Barbeque Sauce
    Click Element    ${BarbequeSauce_radioBtn}

#User choose topping
User choose Onions topping
    Click Element    ${OnionsTopping_checkbox}

User choose Green Olive topping
    Click Element    ${GreenOliveTopping_checkbox}

User choose Tomatoes topping
    Click Element    ${TomatoesTopping_checkbox}

#User choose Pizza Quatity
User input quantity
    Input Text    ${Quanity_txtBox}    3

#User add Pizza(s) to cart
User add pizzas to cart
    Click Button    ${AddToCart_btn}

#Wait success message
Order pizza successfully
    Sleep    10s
    Element Text Should Be    ${Confirmation_txt}    Pizza added to the cart!