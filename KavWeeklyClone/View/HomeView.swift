//
//  HomeView.swift
//  KavWeeklyClone
//
//  Created by Kyungyun Lee on 14/03/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var currentWeek : [Date] = []
    @State var currentDay : Date = Date()
    
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Current week")
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "ellipsis.circle")
                        .font(.title3)
                })
            }//hst
            
            HStack(spacing: 10) {
                ForEach(currentWeek, id: \.self) { date in
                    Text(extractDate(date: date))
                        .fontWeight(isSameDay(date1: currentDay, date2: date) ? .bold : .light)
                        .frame(maxWidth : .infinity)
                        .padding(.vertical, isSameDay(date1: currentDay, date2: date) ? 6 : 0)
                        .padding(.horizontal, isSameDay(date1: currentDay, date2: date) ? 12 : 0)
                        .frame(width: isSameDay(date1: currentDay, date2: date) ? 140 : nil)
                        .background(
                            Capsule()
                                .fill(.gray)
                                .environment(\.colorScheme, .light)
                                .opacity(isSameDay(date1: currentDay, date2: date) ? 0.8 : 0)
                        )
                        .onTapGesture {
                            withAnimation {
                                currentDay = date
                            }
                        }
                }
            }//hst
            
            VStack(alignment: .leading, spacing : 8){
                Text("Steps")
                    .fontWeight(.semibold)
                Text("6,243")
                    .font(.system(size: 45, weight: .heavy))
            }
            .frame(maxWidth : .infinity, alignment: .leading)
            .padding()
            
            FitnessRingCardView()
        }//vst
        .padding()
        .onAppear {
            extractCurrentWeek()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
    
    func extractCurrentWeek() {
        let calendar = Calendar.current
        let week = calendar.dateInterval(of: .weekOfMonth, for: Date())
        
        guard let firstDay = week?.start else { return }
        
        (0..<7).forEach { day in
            if let weekDay = calendar.date(byAdding: .day, value: day, to: firstDay) {
                currentWeek.append(weekDay)
            }
        }
    }
    
    func extractDate(date : Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = isSameDay(date1: currentDay, date2: date) ? "dd MMM" : "dd"
        return formatter.string(from: date)
    }
    
    func isDateToday(date : Date) -> Bool {
        let calendar = Calendar.current
        return calendar.isDateInToday(date)
    }
    
    func isSameDay(date1: Date, date2: Date) -> Bool {
        let calendar = Calendar.current
        return calendar.isDate(date1, inSameDayAs: date2)
    }
    
}
