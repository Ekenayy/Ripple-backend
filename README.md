# Ripple
App that allows users to take and create uplifting challenges with the ultimate goal of creating a positive societal ripple effect

---- 
## Introduction 
There are a lot of mindfulness resources out there but few of them give you actionable, take-home exercises (called challenges in the App) to deepen your practice. Almost none of them give you a means to share your experiences with other users or review the effectiveness of an exercise. 

I built this app in about three weeks to fill some of these gaps and, though I didn't hit all of my lofty goals, I did create a pretty cool project skeleton and learned React Native along the way!  

## Technologies 

#### Front-end
* React Native via Expo 4.3.1
* Styled-Components
[Take a look at my frontend repo for more information](https://github.com/Ekenayy/Ripple-frontend)

#### Back-end
* Ruby on Rails 6 
* Active Record
* Postgres


----

## Setup and Usage 

[Just curious about how the app looks? Check out some screenshots here](https://github.com/Ekenayy/Ripple-frontend/tree/main/assets/screenshots)

Or 

[Checkout the product demo here](https://www.loom.com/share/d824f5cffb3f46b1adb4f2362f5df7fa)

1. Clone this repo down to your desktop and run bundle install in your terminal.
2.  Navigate to the above frontend repo, clone the repo down to your desktop and run npm install to install all the dependencies.

At this point you should have two terminals open. One containing the backend and one containing the frontend 

3. In the backend terminal run 'rails s'. This should run the server on localhost:3000. You can change the port by running 'rails s -p (port of your choice)' 

4. In your frontend terminal run 'npm start'.

5. For Iphone, if you have XCode installed simply choose to run the app on your ios simulator. For Android, choose to run on an AVD of your choice. If you do not have XCode or Android Studio you'll need to install one of your choice. 

6. For android users only: You'll need to tell your ADB which port it should be listening on. In another terminal run 'adb reverse tcp:(your_port) (tcp:your_port). For example, if you're backend is running on port3000 run 'adb reverse tcp:3000 tcp:3000'. 

