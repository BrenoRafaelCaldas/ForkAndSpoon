//
//  Info.swift
//  Reservations
//
//  Created by B7 RAFA on 11/12/2025.
//


func formatedDatePortugal(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "pt_PT")
    formatter.dateStyle = .long
    formatter.timeZone = TimeZone(identifier: "Europe/Porto")
    formatter.timeStyle = .short
    return formatter.string(from: date)

}