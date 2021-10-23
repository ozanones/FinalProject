# FinalProject
## Todo App Build With VIPER and MVVM Patterns Using Core Data

## First View 
*It was built with VIPER pattern in which people can add Todo items and can show the list of them.*
*Search Bar enables to search through the todo items and filters with respect to the characters entering to the search bar.*

## Second View
*It was built with MVVM pattern where Todo Details can be shown.*
*Selected todo item details will be displayed in the second view.*
*Notification service sends push notification when user determines the after how many hours notification will be sent.*
```
let trigger = UNTimeIntervalNotificationTrigger(timeInterval: addHours * 3600, repeats: false)
```
*In NotificationManager class, timeInterval value can be changed to (10) seconds for example for testing the push notification in 10 seconds.*
