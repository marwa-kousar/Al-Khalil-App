//
//  ScheduleView.swift
//  Al-Khalil
//
//  Created by marwa kousar on 2024-09-24.
//

import FirebaseFirestore
import SwiftUI

class ScheduleViewModel: ObservableObject {
    @Published var schedules: [Schedule] = []  // List of schedules to display

    private var db = Firestore.firestore()

    // Fetch schedules from Firestore
    func fetchSchedules() {
        db.collection("schedules").document("QAI_1_ALIF").getDocument { (document, error) in
            if let error = error {
                print("Error getting document: \(error)")
            } else if let document = document, document.exists {
                // Extract the nested data
                if let data = document.data() {
                    if let mondayData = data["Monday"] as? [String: [String: Any]] {
                        for (_, classData) in mondayData {
                            if let subject = classData["Subject"] as? String,
                               let teacher = classData["Teacher"] as? String,
                               let time = classData["Time"] as? String {
                                let schedule = Schedule(subject: subject, teacher: teacher, time: time)
                                self.schedules.append(schedule)
                            }
                        }
                    }
                    
                    // Similarly for other days like Wednesday
                    if let wednesdayData = data["Wednesday"] as? [String: [String: Any]] {
                        for (_, classData) in wednesdayData {
                            if let subject = classData["Subject"] as? String,
                               let teacher = classData["Teacher"] as? String,
                               let time = classData["Time"] as? String {
                                let schedule = Schedule(subject: subject, teacher: teacher, time: time)
                                self.schedules.append(schedule)
                            }
                        }
                    }
                }
                print("Fetched schedules: \(self.schedules)")
            }
        }
    }


    // Function to add a new schedule (if needed)
    func addSchedule() {
        let newSchedule = Schedule(subject: "New Subject", teacher: "New Teacher", time: "1 PM - 2 PM")
        do {
            _ = try db.collection("schedules").addDocument(from: newSchedule)
        } catch let error {
            print("Error adding schedule: \(error)")
        }
    }
}
