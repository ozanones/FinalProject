//
//  NotificationManager.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 23.10.2021.
//

import UIKit

class NotificationManager {
    
    func createNotification(_ todo: TodoItem) {
        
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = todo.name ?? "Todo Item Reminder"
        content.body = todo.detail ?? "Todo Detail"
        content.sound = .default
        
        guard let addingHours = todo.completionTime else { return }
        let addHours = Double(addingHours) ?? 2
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: addHours * 3600, repeats: false)
        let request = UNNotificationRequest(identifier: "Reminder", content: content, trigger: trigger)
        center.add(request) { error in
            if error != nil{
                print("Error Occured During Notification Process")
            }
        }
    }
}
