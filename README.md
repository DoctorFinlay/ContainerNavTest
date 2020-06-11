# ContainerNavTest
Testing how tab bars, navigation controllers and container views can play together nicely and cleanly.

Context:

We need a tab bar to switch between four tabs.  The tab bars will also chnage the height of the top container, based on the current tab.
The top container needs to animate to its new height, meaning it can't be part of each tab bar item.

Implementation:

As this storyboard will be part of a larger app, we need a navigation controller to allow for menu buttons etc.

The nav controller starts with the main page, which is MainPageVC. 

MainPageVC conforms to a protocol, MainPageDelegate, which will react to tab items being pressed.

The tab bar controller itself overrides the didSelectItem method so that the index of the selected tab item can be passed up to MainPageVC.

MainPageVC passes a string to each tab, and each tab uses a delegate method to set the main page label, showing that data can move up and down through the tab bar controller.

