
# Advance-Your-SQL-Skills-with-dbt-for-Data-Engineering

## Course By LinkedIn learning

- In this course, instructor Vinoo Ganesh shows you how to use dbt (data build tool) to operationalize SQL in powerful ways and make the process of transforming data simpler and faster.
- In each chapter, Vinoo presents a real-world situation or problem, and provides focused code examples explaining how to solve the problem.
- He shows you how to design and implement dbt models to solve basic and advanced challenges, covering topics like schema design, generating SQL model files, table materializations, implementing CTEs, and SQL unit tests. 

## dbt connection Requirements 

1. [Connections](#connections)
2. [Connect to GitHub](#connect-to-github)

## Connections

**Step 1: Connect to BigQuery**

To establish a connection between BigQuery and dbt Cloud, you'll need to provide the necessary credentials and configuration details.

1. **Access the Google Cloud Console:** Go to the Google Cloud Console and sign in to your Google account.
2. **Create a project (if needed):** If you don't have a project set up for your BigQuery instance, create one by clicking on the project dropdown menu at the top of the console and selecting "New Project." Follow the prompts to set up the project.
3. **Create a service account:** In the Google Cloud Console, navigate to "IAM & Admin" > "Service Accounts." Click on "Create Service Account." Provide a name and description for the service account, and click "Create."
4. **Assign BigQuery roles:** After creating the service account, assign it the necessary roles to access BigQuery. Click on the newly created service account email, go to the "Permissions" tab, and click on "Add Member." Enter your service account email, and assign it the appropriate roles such as "BigQuery Data Viewer" or "BigQuery Admin."
5. **Generate a key file:** Once the service account has the required roles, click on the "Keys" tab under the service account settings. Click on "Add Key" > "Create new key." Choose the JSON key type and click "Create." The key file will be downloaded to your computer.
6. **Securely store the key file:** Safely store the downloaded key file as it contains sensitive information. Ensure it is not publicly accessible. Ideally, store it in a secure location or use a secret management tool like HashiCorp Vault or AWS Secrets Manager.

**Configure dbt Cloud:**

In dbt Cloud, navigate to the project where you want to set up the BigQuery connection. Go to "Settings" > "Connections." Click on "Add a Connection" and provide the necessary details:

* **Name:** Give a descriptive name for the connection.
* **Type:** Select "BigQuery."
* **Project ID:** Enter the ID of your Google Cloud project.
* **JSON Key:** Click on "Choose File" and upload the JSON key file you downloaded earlier.
* **Dataset:** Enter the default dataset you want to use in BigQuery.
* **Save the connection:** After entering the required details, click on "Save" to create the BigQuery connection in dbt Cloud.

**Step 2: Connect to GitHub**

Connecting your GitHub account to dbt Cloud provides convenience and another layer of security to dbt Cloud:

* Log into dbt Cloud using OAuth through GitHub.
* Import new GitHub repositories with a couple clicks during dbt Cloud project setup.
