//
//  HomeView.swift
//  Al-Khalil
//
//  Created by marwa kousar on 2024-09-15.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Int = 0 // Track which tab is selected

    var body: some View {
        NavigationView {
            VStack {
                Image("LogoT")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
                    .padding(.top, -20)
                // Custom top navigation (icons)
                HStack {
                    Spacer()
                    VStack {
                        Button(action: {
                            selectedTab = 0
                        }) {
                            VStack {
                                Image(systemName: "house.fill")
                                Text("Home")
                                    .font(.caption)
                            }
                        }
                    }
                    Spacer()
                    VStack {
                        Button(action: {
                            selectedTab = 1
                        }) {
                            VStack {
                                Image(systemName: "book.fill")
                                Text("Courses")
                                    .font(.caption)
                            }
                        }
                    }
                    Spacer()
                    VStack {
                        Button(action: {
                            selectedTab = 2
                        }) {
                            VStack {
                                Image(systemName: "doc.text.fill")
                                Text("Assignments")
                                    .font(.caption)
                            }
                        }
                    }
                    Spacer()
                    VStack {
                        Button(action: {
                            selectedTab = 3
                        }) {
                            VStack {
                                Image(systemName: "person.fill")
                                Text("Profile")
                                    .font(.caption)
                            }
                        }
                    }
                    Spacer()
                }
                .padding(.top, -15) // Adjust to place the icons appropriately

                // Show the content based on selectedTab
                Spacer()

                if selectedTab == 0 {
                    HomeDashboardView()
                } else if selectedTab == 1 {
                    CoursesView()
                } else if selectedTab == 2 {
                    AssignmentsView()
                } else {
                    ProfileView()
                }

                Spacer()
            }
        }
    }
}

// Each view for the different tabs
struct HomeDashboardView: View {
    var body: some View {
        NavigationView {
            ScrollView { // Enable scrolling for the content inside HomeView
                VStack(alignment: .leading, spacing: 20) {
                    // Welcome Section
                    VStack(alignment: .leading) {
                        Text("Welcome, Marwa!")
                            .font(.title)
                            .bold()
                        
                        Text("Here's what's happening today:")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
                    
                    // Announcements Section
                    VStack(alignment: .leading) {
                        Text("Announcements")
                            .font(.headline)
                            .padding(.bottom, 5)
                        
                        // Replace with dynamic announcement data
                        Text("📢 New fiqh class materials have been uploaded.")
                        Text("📢 This week's class on Hadith starts at 10 AM.")
                    }
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                    // Upcoming Classes Section
                    VStack(alignment: .leading) {
                        Text("Upcoming Classes")
                            .font(.headline)
                            .padding(.bottom, 5)
                        
                        // Replace with dynamic class data
                        ForEach(0..<3) { _ in
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Class: Tafseer of Surah Al-Baqarah")
                                        .bold()
                                    Text("Instructor: Sheikh Ahmed")
                                    Text("Time: 9:00 AM - 10:30 AM")
                                }
                                Spacer()
                                Image(systemName: "book.fill")
                                    .foregroundColor(.blue)
                            }
                            .padding()
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                    
                    // Assignments Overview Section
                    VStack(alignment: .leading) {
                        Text("Assignments Due")
                            .font(.headline)
                            .padding(.bottom, 5)
                        
                        // Replace with dynamic assignment data
                        Text("📅 Fiqh Assignment - Due: Sept 25, 2024")
                        Text("📅 Tafseer Essay - Due: Oct 1, 2024")
                    }
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                    // Featured Course Materials Section
                    VStack(alignment: .leading) {
                        Text("Featured Course Materials")
                            .font(.headline)
                            .padding(.bottom, 5)
                        
                        // Replace with dynamic material data
                        Text("📘 New reading on Hadith studies available.")
                        Text("📘 Tafseer of Surah Maryam video lecture uploaded.")
                    }
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                    Spacer()
                }
            }
            .navigationTitle("Dashboard")
        }
    }
}

    


struct CoursesView: View {
    var body: some View {
        VStack {
            Text("Courses")
                .font(.largeTitle)
            // Add list of courses or course-related content here
        }
    }
}

struct AssignmentsView: View {
    var body: some View {
        VStack {
            Text("Assignments")
                .font(.largeTitle)
            // Add list of assignments or assignment-related content here
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile")
                .font(.largeTitle)
            // Add user profile details here
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
