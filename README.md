**PROJECT OVERVIEW**

Midwest Grocery App Store is a mobile application designed to modernize and streamline the grocery shopping experience for customers of Midwest Grocery.
The app allows users to browse products, manage their shopping cart, place orders for delivery or pickup, and receive real-time notifications—all from their mobile devices.
Built with Flutter, the Midwest Grocery App Store aims to make grocery shopping more convenient, efficient, and accessible, while also helping store admin manage orders and inventory with ease.
_________________________________________________________________________________________________________________________________________________________________________________________________

**PROBLEM STATEMENT**

Midwest Grocery currently faces several challenges with its traditional shopping and order management processes, including:

🛒 Inconvenient in-store shopping and long checkout lines

📞 Manual, error-prone order taking via phone or in person

❌ No real-time stock updates, leading to customer frustration

⏳ Delays in order processing and fulfillment

🔔 Lack of timely notifications for order status

📦 Difficulty managing and tracking multiple orders efficiently
_________________________________________________________________________________________________________________________________________________________________________________________________

**Project Description**

The Midwest Grocery App Store is designed to:
	
 • Browse product, add to cart, remove orders and view orders.
	
 • Offer a secure and user-friendly interface via flutter.
	
 • Provide real-time updates in their status.
_________________________________________________________________________________________________________________________________________________________________________________________________

**Objectives of the Study**

Main Goal: Develop a mobile ordering system for Midwest Grocery Store

Specific Objectives:
	
 • ✅ Implement secure login for customers.
	
 • ✅  Enable customer to browse available grocery products
	
 • ✅ Allow customers to add selected items to a virtual shopping cart

 • ✅ Build a user-friendly ordering interface
 __________________________________________________________________________________________________________________________________________________________________________________________________

 **🧩 Development Model**
 
The development followed the mobile app lifecycle:

Phase	Activities

🔍 Initiation	Gathered requirements from admin and customers

✏️ Design	Created mockups and selected tools/frameworks

⚙️ Development	Coded main features (product browsing, cart, orders)

🧪 Testing	Manual testing with edge cases (stock, checkout, notifications)

🚀 Launch	Released app for public customer use

🔄 Monitoring	Gathered user feedback for future updates
___________________________________________________________________________________________________________________________________________________________________________________________________

**Functional Requirements**

| *ID*   | *Functionality*                                   |
| ------ | ------------------------------------------------- |
| 1.1    | Login, and logout using email/password  |
| 1.2    | Browse grocery products by category or name       |
| 1.3    | Add selected items to the shopping cart           |
| 1.4    | View and manage items in the cart                 |
| 1.5    | Place an order and confirm checkout               |
| 1.6    | View order history and order details              |
| 1.7    | Cancel an order before it is processed            |
| 1.8    | Receive order status updates via notifications    |
| 1.9    | Edit personal account information (name, address) |
__________________________________________________________________________________________________________________________________________________________________________________________________

**User Acceptance Testing(UAT)**

This section outlines the User Acceptance Testing (UAT) conducted to verify that the “Midwest Grocery App Store” meets the functional requirements and expectations of its intended users. UAT ensures the application is ready for real-world usage by validating each key feature based on test scenarios that reflect actual customer and admin interactions.  

| *Item*           | *Description*            |
| ---------------- | ------------------------ |
| Device           | Android Phone / Emulator |
| OS Version       | Android 12+              |
| App Version      | 1.0.0                    |
| Development Tool | Flutter                  |
| Framework        | Flutter SDK 3.x          |
| Testing Tool     | Manual User Testing      |

**Test Cases**

| *Test Case ID*   | *Test Scenario*     | *Test Description*                                     | *Expected Result*                                                   | *Actual Result* | *Status*     |
| ---------------- | ------------------- | ------------------------------------------------------ | ------------------------------------------------------------------- | ----------------- | ---------- |
| UAT-01           | Add to Cart         | User adds a product to the cart from the product list. | Product is added to cart, stock decreases by 1, notification shown. | Works as expected | Passed     |
| UAT-02           | Remove from Cart    | User removes a product from the cart.                  | Product is removed/decreased in cart, stock increases by 1.         | Works as expected | Passed     |
| UAT-03           | Place Order         | User completes checkout with valid details.            | Order is placed, cart is cleared, order appears in order list.      | Works as expected | Passed     |
| UAT-04           | Order Status Update | User updates the status of an order.                   | Order status changes, notification is added and displayed.          | Works as expected | Passed     |
| UAT-05           | Search Product      | User searches for a product by name.                   | Product list filters to show matching products.                     | Works as expected | Passed     |
| UAT-06           | Logout              | User logs out from the app.                            | User is returned to the login screen.                               | Works as expected | Passed     |

_________________________________________________________________________________________________________________________________________________________________________________________________

**Tech Stack**

| *Layer*     | *Technology*               |
| ----------- | ------------------------ |
| UI          | Flutter (cross-platform) |
| Platform    | Android                  |
| Language    | Dart                     |
| Development | Flutter SDK 3.x, VS Code |
| Testing     | Manual (UAT Scenarios)   |


__________________________________________________________________________________________________________________________________________________________________________________________________

**Team Members**

 • Banaag, Alesha L.
	
 • Dimaano, Vera Ella A.
	
 • Gunday, Janna Rose O.
