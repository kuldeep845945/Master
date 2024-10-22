*** Variables ***

${username}                standard_user
${UsernameLocator}         //input[@id='user-name']
${PasswordLocator}         //input[@id='password']
${password}                secret_sauce  
${Implicit Wait}            get selenium implicit wait
${LoginButton}             //input[@id='login-button']
${Backpack}                //div[text()='Sauce Labs Backpack']  
${Add To Cart}             (//button[text()='ADD TO CART'])[1]
${Remove}                //button[text()='REMOVE']
${Cart}                //span[text()='1']
${Your Cart}            //div[text()='Your Cart']
${Checkout}            //a[text()='CHECKOUT']
${Info}                //div[text()='Checkout: Your Information']
${FirstName}            //input[@id="first-name"]
${LastName}            //input[@id="last-name"]
${PostalCode}        //input[@id="postal-code"]
${Continue}            //input[@value="CONTINUE"]
${Overview}            //div[text()='Checkout: Overview']
${Finish}            //a[text()='FINISH']
${OrderConfirmed}        //div[text()='Finish']
${Menu}                //button[text()='Open Menu']
${Logout}                //a[@id="logout_sidebar_link"]