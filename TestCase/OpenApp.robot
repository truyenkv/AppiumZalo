*** Settings ***
Library         AppiumLibrary

*** Variables ***
${APPIUM_SERVER} =  http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME} =  Android
${PLATFORM_VERSION} =  6.0.1
${DEVICE_NAME} =  BH9107KG16
${PACKET_NAME} =  com.zing.zalo
${ACTIVITY_NAME} =  com.zing.zalo.ui.ZaloLauncherActivity


*** Test Cases ***
Open the app
    [Documentation]     Open the application
    Open Application    ${APPIUM_SERVER}     platformName=${PLATFORM_NAME}       platformVersion=${PLATFORM_VERSION}     deviceName=${DEVICE_NAME}            appPackage=${PACKET_NAME}       appActivity=${ACTIVITY_NAME}
    sleep  5
    close all applications
