//
//  ViewController.swift
//  CountDown
//
//  Created by Hameed Abdullah on 10/15/18.
//  Copyright © 2018 Hameed Abdullah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weeksLabel: UILabel!
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    
    let currentDate: Date = Date();
    let dateFormatter: DateFormatter = DateFormatter();
    var timer: Timer = Timer();
    let calendar: Calendar = Calendar.current;
    let requestedComponent: Set<Calendar.Component> = [.weekOfMonth, .day, .hour, .minute, .second];
    var endTime: Date?;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        print("ViewDidLooooooooooad");
        dateFormatter.dateFormat = "dd/MM/yy hh:mm:ss aa";
        
        //let endTime: Date? = dateFormatter.date(from: "25/12/18 12:00:00 a"); //Christmas
        endTime = dateFormatter.date(from:
            //"06/04/19 04:30:00 pm"
            "07/11/18 12:27:00 pm"
        );
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(printTime), userInfo: nil, repeats: true);
        timer.fire();
    }
    
    @objc func printTime() {
        let currentTime: Date = Date();
       
        if endTime! < currentTime {
            //The currentTime is already after the endTime.
            daysLabel.text = "CountDown is Stopped";
            timer.invalidate();
            return;
        }
        
        let timeDifference: DateComponents = calendar.dateComponents(requestedComponent, from: currentTime, to: endTime!);
        print("timeDifference = \(timeDifference)");
        
        let totalOfWeeks: Int = timeDifference.weekOfMonth!;
        print("Total of Weeks is: \(totalOfWeeks)");
        
        let totalOfDays: Int = timeDifference.day! + timeDifference.weekOfMonth! * 7;
        print("Total of Days is: \(totalOfDays)");
        
        let totalOfHours: Int = timeDifference.hour! + totalOfDays * 24;
        print("Total of Hours is: \(totalOfHours)");
        
        let totalOfMinutes = timeDifference.minute! + totalOfHours * 60;
        print("Total of Minutes is: \(totalOfMinutes)");
        
        let totalOfseconds = timeDifference.second! + totalOfMinutes * 60;
        print("Total of Seconds is: \(totalOfseconds)");
        
        weeksLabel.text = "\(totalOfWeeks) Weeks";
        daysLabel.text = "\(totalOfDays) Days";
        hoursLabel.text = "\(totalOfHours) Hours";
        minutesLabel.text = "\(totalOfMinutes) Minutes";
        secondsLabel.text = "\(totalOfseconds) Seconds";
    }
    
}
