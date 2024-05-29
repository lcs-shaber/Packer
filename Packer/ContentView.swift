//
//  ContentView.swift
//  Packer
//
//  Created by Sophie Haber on 29.05.24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    //
    
    // MARK: Computed properties
    var body: some View {
   
        ZStack {
            
          // Background Color
            Color (.green)
           .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Rectangle()
                        .fill(.purple)
                        .frame(height: 120)
                    
                    Text ("CALENDAR")
                        .bold()
                        .foregroundColor(.white)
                }
                
                HStack {
                   
                    
                    VStack{
                        
                        //         CalendarListView(
                        //             reminders: "Monday",
                        //           rectangleColour: .pink,
                        //            textColor: .white
                        //        )
                        //
                        //        CalendarListView(
                        //             reminders: "Tuesday",
                        //               rectangleColour: .pink,
                        //                textColor: .white
                        //            )
                        //
                        //             CalendarListView(
                        //                  reminders: "Wednesday",
                        //                  rectangleColour: .pink,
                        //                   textColor: .white
                        //               )
                        //
                        //                CalendarListView(
                        //                   reminders: "Thursday",
                        //                    rectangleColour: .pink,
                        //                   textColor: .white
                        //              )
                        //
                        //               CalendarListView(
                        //                  reminders: "Friday",
                        //                  rectangleColour: .pink,
                        //                 textColor: .white
                        //            )
                        //
                        //               CalendarListView(
                        //                 reminders: "Saturday",
                        //               rectangleColour: .pink,
                        //               textColor: .white
                        //         )
                        //
                        //         CalendarListView(
                        //               reminders: "Sunday",
                        //               rectangleColour: .pink,
                        //               textColor: .white
                        //         )
                        //    }
                        //  .frame(width: 120)
                        
                        
                        VStack{
                            
                            //    NavigationStack {
                            //             List (allDays) { currentCalendar in
                            
                            //First Item
                            //                      NavigationLink {
                            //                          ContentView (day: currentCalendar)
                            //                    }
                            //                 label: {
                            //                    CalendarListView(day: currentCalendar)
                            //              }
                            //              }
                            //         }
                            
                            CalendarListView(
                                reminders: "",
                                rectangleColour: .gray,
                                textColor: .black
                            )
                            
                            CalendarListView(
                                reminders: "",
                                rectangleColour: .white,
                                textColor: .black
                            )
                            
                            CalendarListView(
                                reminders: "",
                                rectangleColour: .gray,
                                textColor: .black
                            )
                            
                            CalendarListView(
                                reminders: "",
                                rectangleColour: .white,
                                textColor: .black
                            )
                            
                            CalendarListView(
                                reminders: "",
                                rectangleColour: .gray,
                                textColor: .black
                            )
                            
                            CalendarListView(
                                reminders: "",
                                rectangleColour: .white,
                                textColor: .black
                            )
                            
                            CalendarListView(
                                reminders: "",
                                rectangleColour: .gray,
                                textColor: .black
                            )
                            
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
