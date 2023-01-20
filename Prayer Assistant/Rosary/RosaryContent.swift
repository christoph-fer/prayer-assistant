//
//  RosaryContent.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 16/10/22.
//

import SwiftUI

struct Mystery: Identifiable {
    let id = UUID()
    let mysteryName: String
    let mysteryDesc: String
    let mysteryPic: String
    let mystery1: String
    let mystery1Pic: String
    let mystery2: String
    let mystery2Pic: String
    let mystery3: String
    let mystery3Pic: String
    let mystery4: String
    let mystery4Pic: String
    let mystery5: String
    let mystery5Pic: String
}

struct MysteryList {
    static let mysteries = [
        Mystery(
            mysteryName: "Mondays & Saturdays",
            mysteryDesc: "Joyful",
            mysteryPic: "rosary-pic-2",
            mystery1: "The Annunciation",
            mystery1Pic: "announciation2",
            mystery2: "The Visitation",
            mystery2Pic: "finding",
            mystery3: "The Nativity of Jesus",
            mystery3Pic: "nativity2",
            mystery4: "The Presentation of Jesus",
            mystery4Pic: "presentation2",
            mystery5: "The Finding of Jesus",
            mystery5Pic: "visitation2"
        ),
        Mystery(
            mysteryName: "Thursdays",
            mysteryDesc: "Luminous",
            mysteryPic: "bread-wine-pic-1",
            mystery1: "The Baptism of Jesus",
            mystery1Pic: "baptism",
            mystery2: "The Wedding At Cana",
            mystery2Pic: "wedding",
            mystery3: "The Proclamation Of The Kingdom",
            mystery3Pic: "proclamation",
            mystery4: "The Transfiguration",
            mystery4Pic: "transfiguration",
            mystery5: "The Institution Of The Eucharist",
            mystery5Pic: "institution"
        ),
        Mystery(
            mysteryName: "Tuesdays & Fridays",
            mysteryDesc: "Sorrowful",
            mysteryPic: "palm-pic",
            mystery1: "The Agony In The Garden",
            mystery1Pic: "agony",
            mystery2: "The Scourging At The Pillar",
            mystery2Pic: "scourging",
            mystery3: "The Crowning With Thorns",
            mystery3Pic: "crowning",
            mystery4: "The Carrying Of The Cross",
            mystery4Pic: "carrying",
            mystery5: "The Crucifixion of Jesus",
            mystery5Pic: "crucifixion"
        ),
        Mystery(
            mysteryName: "Wednesday & Sundays",
            mysteryDesc: "Glorious",
            mysteryPic: "resurrection-pic-2",
            mystery1: "The Resurrection",
            mystery1Pic: "resurrection",
            mystery2: "The Ascension",
            mystery2Pic: "ascension",
            mystery3: "The Descent Of The Holy Spirit",
            mystery3Pic: "descent",
            mystery4: "The Assumption",
            mystery4Pic: "assumption",
            mystery5: "The Coronation",
            mystery5Pic: "coronation"
        ),
    ]
}
