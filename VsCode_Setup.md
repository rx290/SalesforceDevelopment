# VS Code Setup

## Introduction

    This guide covers how you can install Visual Studio Code and how you can link it to your org to do development.

## How To Install SFDX CLI and VS Code and Creating a New SFDX Project

    Steps to setup VS code are as follows:
        1. Download and install Salesforce Sfdxcli: https://developer.salesforce.com/tools/salesforcecli 
        2. Download and install vscode: https://code.visualstudio.com/
        3. Once installed open VS Code, click on extension icon or fifth icon on the lefthand quick menu.
        4. Once the extension marketplace is open search and install following extensions:
           1. Salesforce Extension Pack
        5. After installation you have to open command pallet by either clicking on the gear icon at the bottom and selecting command pallet or pressing cmd/ctrl + p command.
        6. Type in SFDX: create project or type partial and an option will appear on dropdown and you can click on it.
        7. Then enter the name of your project hit enter then select the location of the project folder.
        8. You have successfully created a blank SFDX Project.

## Connection

    Congrats! you have sucessfully create a salesforce project, now we have to connect it to an org.
    Here are the steps to do so:
        1. Open up you vs code in project directory
        2. Open up command pallet and type authorize
        3. It will ask you for org details like url, if it is prod or sandbox
        4. It will then take you to login page, simply login and then allow access to VS code.
        5. After doing so you will get a prompt in VS Code: "SDFX: Authorize an Org Successfully Ran"
        6. You are now authorized and ready for development. 

## Fetching, Updating and Deploying Metadata

    Once you are setup you will have a salesforce cloud icon added to your lefthand quick menu.
    Click on it, it will give you the entire overview of your deployed metadata and then click on things you want to get locally a cloud download button will appear next to them, click on it to make them available offline.

    Once available offline you can edit them and save them.
    To reflect the changes on cloud you have to use "deploy" command from your command pallet.

    If you find this deployment step tideous you can setup deploy on save, it is a mechanism that updates the code in cloud when the file is saved.
    To enable it you need to follow these steps:
        1. Go to settings
        2. Search for deploy on save
        3. Enable the checkbox under salesforcedx-vscode-core>push-or-deploy-on-save:Enabled
        4. The settings is now enabled, now if you make any change to any file and hit save icon or press cmd/ctrl + s, salesforce extension will automatically deploy the code for you.
