# Introduction
This repo holds the Dockerfile image used for the n8n application currently available in the Edge Orchestration Marketplace. n8n is an open-source workflow automation tool that allows you to connect various applications and services to automate tasks and processes. It provides a visual interface to create complex workflows without writing code.

## Features
- **Visual Workflow Builder**: Design workflows using a drag-and-drop interface.
- **Extensive Integrations**: Connect to over 200 applications and services, including databases, APIs, and cloud services.
- **Custom Nodes**: Create custom nodes to extend functionality and integrate with unique systems.
- **Conditional Logic**: Implement conditional logic to control the flow of your workflows.
- **Error Handling**: Built-in error handling to manage workflow failures gracefully.
- **Self-Hosted**: Deploy n8n on your own infrastructure for full control and privacy.
- **Open Source**: Fully open-source with a vibrant community and regular updates.

## Uses
- **Automation**: Automate repetitive tasks and processes across different applications.
- **Data Integration**: Sync data between various systems and databases.
- **Notifications**: Set up automated notifications and alerts based on specific triggers.
- **ETL Processes**: Extract, transform, and load data between different sources.
- **API Workflows**: Create workflows that interact with APIs to automate complex tasks.

n8n is a powerful and flexible tool that can help streamline your workflows and improve productivity.
For more information, visit the [n8n](https://docs.n8n.io/) website.

# Prerequisites
1. You must have n8n installed from the marketplace.

## Use Cases
n8n is used standalone. It can connect with the RESTAPI to create workflows.
1. **Data Engineers - Automating Data Pipelines** - Data engineers can use n8n to automate data extraction, transformation, and loading (ETL) processes. This reduces
manual intervention and ensures data consistency.
2. **AI Engineers - Enhancing AI Workflows** - AI engineers can leverage n8n to streamline AI model training and deployment. They can automate data
preprocessing, model training, and deployment, as well as monitor model performance and retrain models as needed.
3. **Software Engineers - Streamlining Development Processes​** - Software developers can use n8n to automate repetitive tasks such as code testing and deployment. This helps in
reducing errors, saving time, and allowing developers to focus on more complex coding tasks.
4. **Customer Support Teams - Automating Customer Support Workflows** - Customer support teams can use n8n to automate ticketing systems, prioritize urgent issues, and integrate with CRM
tools. This ensures faster response times and improved customer satisfaction by streamlining support processes.

## Minio Setup
This sample workflow is used to create a simple workflow utilizing Edge's RESTAPI.
1.	Launch the n8n Web Interface: http://{edge_ip}:5678. Create your desired username and password. 
![n8n Landing Page](https://github.com/EmersonDeltaV/n8n/blob/main/assets/landing_page.png?raw=true)
2. During first loading, the next menu will ask for your email to obtain a free license. You may skip this step.
![n8n License Key](https://github.com/EmersonDeltaV/n8n/blob/main/assets/license_key.png?raw=true)
3. On the main page, create a new workflow.
![n8n Main Page](https://github.com/EmersonDeltaV/n8n/blob/main/assets/main_page.png?raw=true)
4. Add a "Manual Trigger" node to use as the start of your workflow.
![n8n First Step](https://github.com/EmersonDeltaV/n8n/blob/main/assets/first_step.png?raw=true)
5. To use the RESTAPI, look for the "HTTP Request" node and add it to the workflow. Connect it to the end of the "Manual Trigger" node.
6. Configure the node according to the available RESTAPI endpoint for your edge node. You can always test the node to check for proper connectivity.
![n8n Post Auth 1](https://github.com/EmersonDeltaV/n8n/blob/main/assets/post_get_auth_1.png?raw=true)
![n8n Post Auth 2](https://github.com/EmersonDeltaV/n8n/blob/main/assets/post_get_auth_2.png?raw=true)
7. To fully test out the RESTAPI. Add an "If" node and connect it to the previous HTTP node. Click and drag the access token or from the previous result to use it as an expression to check if the request was successful.
![n8n If Path](https://github.com/EmersonDeltaV/n8n/blob/main/assets/if_path.png?raw=true)
8. Add another HTTP Request node and this time use the available endpoint for your GET GRAPH. Data from previous nodes can be passed as long as they are connected within the same flow. Use the bearer token obtained for the Authorization parameter.
![n8n Get Graph](https://github.com/EmersonDeltaV/n8n/blob/main/assets/get_graph.png?raw=true)
9. The final workflow should look like this.
![n8n Final Workflow](https://github.com/EmersonDeltaV/n8n/blob/main/assets/final_test_workflow.png?raw=true)
## Changelist
- **03/31/2025** - First version.
- **04/04/2025** - Added use cass for specific personas.
