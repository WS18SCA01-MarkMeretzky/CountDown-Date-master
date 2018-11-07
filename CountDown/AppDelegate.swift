//
//  AppDelegate.swift
//  CountDown
//
//  Created by Hameed Abdullah on 10/15/18.
//  Copyright © 2018 Hameed Abdullah. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print("didFinishLaaaaaaaaaanching")
   /*
        //Create the starting date for the course, October 10, 2018.
        let calendar: Calendar = Calendar.current;   //our Gregorian calendar
        let dateComponents: DateComponents = DateComponents(year: 2018, month: 10, day: 10);
        var date: Date = calendar.date(from: dateComponents)!;
        
        let dateFormatter: DateFormatter = DateFormatter();
        dateFormatter.dateFormat = "EEE, MMM dd, yyyy";
        var hours: Int = 0;
        
        var countOfDays: Int = 0
        var countOfMondays: Int = 0
        var countOfWednesdays: Int = 0
        
        //Create an array of eight Ints, giving the length in hours of each weekday's class.
        let length: [Int] = [
            0,   //unused
            0,   //Sunday
            3,   //Monday
            0,   //Tuesday
            3,   //Wednesday
            0,   //Thursday
            0,   //Friday
            6    //Saturday
        ];
        
        //Create an array of eight tuples.  Each tuple contains three Ints.
        let tuples: [(year: Int, month: Int, day: Int)] = [
            (2018, 11, 12),   //Mon Veteran's Day
            (2018, 11, 24),   //Sat Thanksgiving
            (2018, 12, 22),   //Sat
            (2018, 12, 24),   //Mon Christmas Eve
            (2018, 12, 29),   //Sat
            (2018, 12, 31),   //Mon New Year's Eve
            (2019,  1, 21),   //Mon Martin Luther King
            (2019,  2, 18)    //Mon Presidents Day
        ];
        
        //Create an array of eight Date objects.
        let holidays: [Date] = tuples.map({(t: (year: Int, month: Int, day: Int)) -> Date in
            let dateComponents: DateComponents = DateComponents(year: t.year, month: t.month, day: t.day);
            return calendar.date(from: dateComponents)!;
        });
        
        while hours < 270 {   //Keep going until we have amassed 270 hours of classroom time.
            if !holidays.contains(date) {
                //weekday is an Int in the range 1 to 7 inclusive.  1 means Sun, 2 means Mon, etc.
                let weekday: Int = calendar.component(Calendar.Component.weekday, from: date);
                
                if length[weekday] > 0 {        //If we have class on this day,
                    
                    // count how many mondays
                    if weekday == 2 {   //2 stands for monday
                        countOfMondays += 1
                    }
                    
                    if weekday == 4 {
                        countOfWednesdays += 1
                    }
                    
                    hours += length[weekday];   //means hours = hours + length[weekday];
                    countOfDays += 1
                    print(hours, dateFormatter.string(from: date));
                }
            }
            date = calendar.date(byAdding: .day, value: 1, to: date)! //Go to the next date.
            
        }
        print("Total of days \(countOfDays)")
        print("Total of Mondays \(countOfMondays)")
        print("Total of Wednesdays \(countOfWednesdays)")
        */
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

