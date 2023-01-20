//
//  StationsContent.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 05/10/22.
//

import SwiftUI

struct Station: Identifiable {
    let id = UUID()
    let stationName: String
    let stationDesc: String
    let stationPic: String
}

struct StationsList {
    static let stations = [
        Station(stationName: "First Station", stationDesc: "Jesus is condemned to death", stationPic: "cross-pic-1"),
        Station(stationName: "Second Station", stationDesc: "Jesus carries His cross", stationPic: "cross-pic-2"),
        Station(stationName: "First Station", stationDesc: "Content", stationPic: "cross-pic-3"),
        Station(stationName: "First Station", stationDesc: "Content", stationPic: "cross-pic-1"),
        Station(stationName: "First Station", stationDesc: "Content", stationPic: "cross-pic-1"),
        Station(stationName: "First Station", stationDesc: "Content", stationPic: "cross-pic-1")
    ]
}

