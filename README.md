Customer Engagement Catalyst (CEC)



Introduction

Customer Engagement Catalyst (CEC) is a powerful CRM solution designed to bridge the gap between businesses and their customers by streamlining interactions, centralizing data, and automating processes. By offering a centralized platform for managing customer relationships, CEC enhances customer satisfaction, increases retention, and empowers businesses to deliver personalized experiences.

Deployed live on AWS: Customer Engagement Catalyst (Frontend)

Why Choose CEC?

Businesses often struggle with:

Fragmented customer data.

Inefficient processes and lack of automation.

Missed opportunities for personalized communication.

CEC addresses these challenges by providing a holistic CRM platform that connects packages and people, improving engagement across all customer touchpoints.

Features and Modules

1. Customer Modules

These modules cater to customers, allowing them to interact with the system easily:

Home Page: Access all relevant system information.

My Profile: Manage personal details and preferences.

Order Details: Track orders and check their current status.

Raise Ticket: Report issues or request support.

My Tickets: Monitor the progress of raised tickets.

Suggestion Forum: Share feedback and suggestions with the organization.

2. Admin Modules

Empowering admins to monitor and manage system functions efficiently:

Admin Home Page: Access administrative tools and data insights.

New Tickets: Manage tickets submitted by users.

In-Progress Tickets: Track and update tickets under resolution.

Resolved Tickets: Archive and review completed tickets.

Logistic Admin Tickets: Specialized tickets for logistics-related queries.

3. Super Admin Module

Super admins have comprehensive control over system configurations, user roles, and permissions, ensuring smooth system operations.

Technical Stack

The application leverages the following technologies:

Frontend: Angular 19 for building dynamic and responsive interfaces.

Backend: ASP.NET Core Web API for robust logic handling and data processing.

Database: Microsoft SQL Server, managed via SQL Server Management Studio (SSMS).

Hosting: Deployed on AWS S3 for frontend with scalable backend architecture.

System Design Overview

The system design includes modular architecture, ensuring scalability and efficiency:

Customer Module: Handles customer-related features.

Admin Module: Facilitates ticket and system management.

Backend API: RESTful APIs ensure smooth communication between frontend and database.

Database: Centralized storage for customer data, tickets, and analytics.

Deployment

This project is live and can be accessed here:Customer Engagement Catalyst (Frontend)

Steps for Local Deployment:

Clone the repository:

git clone https://github.com/AnilMunagala35/-customer_engagement_catalyst-CRM.git

Navigate to the project folder:

cd customer_engagement_catalyst-CRM

Set up the backend:

Open the backend folder in Visual Studio.

Restore NuGet packages and run the project.

Set up the database:

Import the SQL Server database script provided in the repository using SSMS.

Set up the frontend:

Navigate to the Angular frontend folder and install dependencies:

npm install

Run the Angular development server:

ng serve

Access the application locally:

Frontend: http://localhost:4200

Backend: http://localhost:5000

Project Outcomes

With CEC, businesses can:

Centralize customer interactions and data.

Provide personalized services to improve customer satisfaction.

Automate workflows, saving time and effort for employees.

Track and resolve customer issues efficiently using ticketing systems.

Screenshots and Visualizations



Screenshots of the application’s modules and features will give an idea of its functionality and user interface.

Contributing

We welcome contributions to enhance the platform! To contribute:

Fork the repository.

Create a new branch:

git checkout -b feature/your-feature-name

Commit your changes:

git commit -m "Add your message here"

Push to the branch:

git push origin feature/your-feature-name

Create a pull request.

License

This project is licensed under the MIT License. See the LICENSE file for details.

Contact

For further information, reach out to:Anil MunagalaGitHub Profile

