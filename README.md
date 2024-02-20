<h1>Finance and Budgeting App</h1>
 <h2>Introduction</h2>
           Building a financial management application that helps users track expenses, set budgets, and generate financial reports. 

![img](https://github.com/Parthvaghela8/BidWheels/blob/main/ERD.png)
 
<h2>Technology Used : </h2>
 
   <h3> 1. Terraform:   </h3>
            Used for RDS instance creation from Infrastructure as a Code.
<h3> 2. FlyWay:   </h3>
            Used For The Migration of The Database
 
    
<h3> 3. GitHub Actions:   </h3>
            Used For The CICD Pipeline.
 
 <h2>Step1: Requirements gathering </h2>
 A User should be able to login to our application and see a dashboard that outlines the following info: 

<ul><li>A user should add Expenses</li> 

<li>A page to review past expenses</li> 

<li>Status of a budget that's currently under review and if it needs to modify </li>

<li>A page to set budget and goals </li>

<li>A way to add reminders </li>

<li>A user should search the categories </li></ul>

*Once created goal then it should remind periodically and give notifications 

*When new budget is created , the status updates => "on dashboard" 

<b>Bonus Feature:</b> Show offers of loan and investments according to budget/ or if user not created budget in this month then it will get data from  past expenses 

Once user cross the certain criteria, a notification regarding loan or investment plan should be sent to the user letting them know that what offers are available  

When out of budget => a notification will be sent to the user telling them they need to take a loan. Once they've claimed an offer , they can re-create a budget(perhaps prompt them to make sure they've pushed their changes)   

Once user claimed an offer, the status changes => "on dashboard"  (budget status) 

A user can modify the budget if  doesn't satisfy the budget criteria/ or if don't want to create the budget => it can automatically create budget for you according past expenses 

When a user did not create a budget, it will show notification => "need a budget??" 

<b>Bonus Feature:</b> if user adds reminder in goals => it will automatically add that amount to budget/Expense every month 

When user successfully created a budget , they will be able to add expenses  

<h2>Step2: Flow chart</h2>
![img](https://github.com/chandni-khan/project/blob/main/flowchart.png)

<h2>Step3: Diagram</h2>
![img](https://github.com/chandni-khan/project/blob/main/ERD.png)


<h2>Step:4 Terraform</h2>
Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Follow these steps to install Terraform on your local machine:
<ol><li>Download the appropriate Terraform binary for your operating system from the <a href="https://developer.hashicorp.com/terraform/install">https://developer.hashicorp.com/terraform/install.</a></li>
<li>Extract the downloaded archive to a directory included in your system's PATH.</li>
<li>Verify the installation by running terraform version in your terminal. You should see the Terraform version printed to the console.</li></ol>
 For reference visit <a href="https://spacelift.io/blog/how-to-install-terraform">https://spacelift.io/blog/how-to-install-terraform</a>

 
# Terraform Git Repository
 
This repository contains Terraform code to provision and manage infrastructure on [your cloud provider]. It simplifies the deployment process and ensures infrastructure as code principles are followed.

<h2>Step5: Flyway Installation</h2>
Flyway is an open-source database-independent library for tracking, managing, and applying database changes. Flyway is an open-source database migration tool that helps you version control your database schema and apply changes to it over time. Here are the general steps to install Flyway:
<ol><li>Visit the official Flyway website at <a href="https://flywaydb.org/">https://flywaydb.org/.</a></li>
 <li>Navigate to the "Downloads" section.</li>
 <li>Download the version of Flyway that corresponds to your operating system (Windows, macOS, or Linux).</li>
 <li>Flyway can be run from any directory, but you may want to add its location to your system's PATH environment variable for convenience.</li>
 <li>Verify Installation: flyway -v.</li>
 <li>Database Configuration: Before using Flyway, you need to configure it for your specific database. Create a configuration file named flyway.conf or use command-line options.</li>
</ol>
For reference visit <a href=" https://flywaydb.org/documentation"> https://flywaydb.org/documentation.</a>
 
## Getting Started
 
These instructions will help you get a copy of the project up and running on your local machine for development and testing purposes.

<h2>1.  Initialize Terraform:</h2>
Run the following command to initialize Terraform:
 
bash
Copy code
terraform init
Create a main.tf File:
Create a main.tf file in your project directory and add the following content:
 
hcl
Copy code
# main.tf
 
provider "aws" {
  region = "us-east-1" # Update with your desired region
}
 
resource "aws_instance" "example_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Update with your desired AMI
  instance_type = "t2.micro"             # Update with your desired instance type
 
  tags = {
    Name = "example-instance"
  }
}
Adjust the region, ami, and instance_type based on your preferences. The tags block is optional but can be useful for identifying your instances.
 
<h2>2.  Plan and Apply:</h2>
Run the following commands to plan and apply the changes:
 
bash
Copy code
terraform plan
terraform apply
Confirm the changes by typing yes when prompted.
 
<h2>3. Verify Instance Creation:</h2>
Once the apply is complete, verify that your instance is created in the AWS Console or by using the AWS CLI.
 
 
Remember to replace the placeholder values in the Terraform configuration with your actual preferences, and ensure that your AWS credentials are configured on your machine.
Additionally, always be cautious when working with infrastructure provisioning, especially in production environments.
 
## Workflow Overview
This GitHub Actions workflow automates database migrations using Flyway, enabling you to effortlessly manage database schema changes.
## Workflow Script
```yaml
name: flyway

on:
  push:
    branches: 
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest

    env:
      FLYWAY_USER: ${{ secrets.DB_BUILD_USERNAME }}
      FLYWAY_PASSWORD: ${{ secrets.DB_BUILD_PASSWORD }}
      FLYWAY_URL: ${{ secrets.DB_BUILD_URL }}
      FLYWAY_CLEAN_DISABLED: false
      FLYWAY_LOCATIONS: "filesystem:./migrations/"
      FLYWAY_CONFIG_FILES: "filesystem:flyway.toml"

    steps:
      - name: Checkout code
        uses: actions/checkout@v4
 
      - name: Setup Flyway CLI
        run: |
          sudo apt update
          sudo apt install -y default-jre
          wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/10.7.2/flyway-commandline-10.7.2-linux-x64.tar.gz | tar xvz
          sudo ln -s $(pwd)/flyway-10.7.2/flyway /usr/local/bin/flyway

      - name: Flyway repair
        run: |
          flyway repair
          
      - name: Flyway Migrate 
        run: |
          flyway migrate -outOfOrder=true\
             -url="${FLYWAY_URL}" \
            -user="${FLYWAY_USER}" \
            -password="${FLYWAY_PASSWORD}" \
            -configFiles="${FLYWAY_CONFIG_FILES}"
```
## Workflow Steps
1. **Checkout code:** This step checks out the repository code.
2. **Setup Flyway CLI:** Installs the required dependencies and sets up Flyway CLI.
3. **Create Secrets in GitHub:**
   - Navigate to your GitHub repository.
   - Go to the "Settings" tab.
   - In the left sidebar, click on "Secrets."
   - Click on "New repository secret" and add the following secrets:
      - `DB_BUILD_USERNAME`: Your database username.
      - `DB_BUILD_PASSWORD`: Your database password.
      - `DB_BUILD_URL`: Your database URL.
4. **Flyway Repair:** Repairs the metadata table if necessary.
5. **Flyway Migrate:** Executes database migrations using Flyway.

## Confluence 
<ul><li> <a href="">confluence</a></li> </ul>
