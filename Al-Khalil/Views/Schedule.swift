//
//  Schedule.swift
//  Al-Khalil
//
//  Created by marwa kousar on 2024-09-24.
//

// Schedule.swift
import FirebaseFirestore

struct Schedule: Identifiable, Codable {
    @DocumentID var id: String?
    var subject: String
    var teacher: String
    var time: String
}

struct DaySchedule: Identifiable, Codable {
    @DocumentID var id: String?
    var subject: String
    var teacher: String
    var time: String
}

struct Day: Identifiable, Codable {
    @DocumentID var id: String?
    var monday: [DaySchedule]
    var wednesday: [DaySchedule]
}
