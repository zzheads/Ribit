# [Ribit](https://teamtreehouse.com/projects/debug-and-extend-a-large-codebase)
###by Alexey Papin  [![StackShare](https://img.shields.io/badge/tech-stack-0690fa.svg?style=flat)](https://stackshare.io/zzheads/zzheads-at-gmail-com) [![Build Status](https://travis-ci.org/Jintin/Swimat.svg?branch=master)](https://travis-ci.org/Jintin/Swimat)
<img src="Default.png" width="200">

<h6>
You are being given a large legacy codebase. Some of the code will be quite familiar, some less so. This is quite intentional as we want you to practice the very common tasks of: debugging, deciphering unfamiliar code, researching documentation, and trying out new objects and frameworks.
Explicitly, your mission will be to fix and test X of the Y bugs listed below. If you would like to be eligible for a rating of “exceeds expectations”, you will also need to implement messaging with a real backend and update the app based on designs in the provided mockups. Remember, when you fix a bug, you are not simply trying to get rid of the symptom, but addressing the root cause of the bug. Be sure to leave comments in your code explaining how you tracked down and fixed each bug.
To "exceed expectations", you will also need to add several features to the app without compromising any existing functionality or code quality. The features to be implemented are described in detail below. Again, comments will be essential in explaining your additions and thinking.
</h6>

##Project Instructions
>To complete this project, follow the instructions below. If you get stuck, ask a question in the community.

####- Fix Bug #1: When you first launch the app all you will see is a black screen. There is a story board within the project with an initial view controller which should be displayed, but it is not. Display the initial view controller within the storyboard.
####- Fix Bug #2: The login screen has an AutoLayout bug which shows up in the console log. Whenever the login screen is presented an error is displayed saying: "Unable to simultaneously satisfy constraints."
####- Fix Bug #3: The FriendsViewController displays duplicate friends. Each friend should only be displayed once.
####- Fix Bug #4: The EditFriendsViewController should show a checkmark next to usernames that are already friends.
####- Fix Bug #5: Fix a memory leak in the app. 
Steps to reproduce the memory leak:
Run the app on a device and watch the memory report in Xcode
Select the Camera tab
Take a photo and then tap on "Use Photo"
Hit send button As you repeat steps 1 through 4 a few times you will notice that the memory usage of the app keeps going up. A memory leak is when memory is allocated for an object but not released appropriately. The object may no longer be pointing to the memory location however the memory is still allocated. Track down the leak and fix it. We have added a link to a helpful workshop under Project Resources, if you need it.
####- Fix Bug #6: Remove deprecated APIs
As Apple introduces newer versions of the iOS SDK it also introduces new APIs retiring the old ones. The APIs that are no longer supported by the new version of the SDK are known as deprecated APIs. Upon building the app you will see in the issue navigator that there are yellow triangles warning you as a developer that the APIs are no longer available. Modify the app to use the latest version of the APIs. Once you implement the newer API the warnings will go away. Make sure that by implementing the new API you do not take away the functionality that existed previously.

