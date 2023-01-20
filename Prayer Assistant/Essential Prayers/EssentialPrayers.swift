//
//  EssentialPrayers.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 25/09/22.
//

import SwiftUI

struct EssentialPrayer: Identifiable, Hashable {
    let id = UUID()
    let prayerName: String
    let prayerContent: String
}

struct EssentialPrayerList {
    static let essentialPrayers = [
//        Prayer(prayerName: "List 1", prayerContent: "List 1"),
//        Prayer(prayerName: "List 2", prayerContent: "List 2"),
//        Prayer(prayerName: "List 3", prayerContent: "List 3"),
//        Prayer(prayerName: "List 4", prayerContent: "List 4"),
        
        EssentialPrayer(prayerName: "Sign of the Cross", prayerContent: "In the name of the Father, and of the Son, and of the Holy Spirit. Amen"),
        EssentialPrayer(prayerName: "Our Father", prayerContent: "**Our Father,** Who art in heaven, Hallowed be Thy Name. Thy Kingdom come. Thy Will be done, on earth as it is in Heaven. Give us this day our daily bread. And forgive us our trespasses, as we forgive those who trespass against us. And lead us not into temptation, but deliver us from evil. Amen."),
        EssentialPrayer(prayerName: "Hail Mary", prayerContent: "**Hail Mary**, Full of Grace, The Lord is with thee. Blessed art thou among women, and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners now, and at the hour of our death. Amen."),
        EssentialPrayer(prayerName: "Glory Be", prayerContent: "**Glory be** to the Father, and to the Son, and to the Holy Spirit, as it was in the beginning, is now, and ever shall be, world without end. Amen."),
        EssentialPrayer(prayerName: "Apostle's Creed", prayerContent: "I believe in God, the Father Almighty, Creator of Heaven and earth; and in Jesus Christ, His only Son Our Lord, Who was conceived by the Holy Spirit, born of the Virgin Mary, suffered under Pontius Pilate, was crucified, died, and was buried. He descended into Hell; the third day He rose again from the dead; He ascended into Heaven, and sitteth at the right hand of God, the Father almighty; from thence He shall come to judge the living and the dead. I believe in the Holy Spirit, the holy Catholic Church, the communion of saints, the forgiveness of sins, the resurrection of the body and life everlasting. Amen."),
        EssentialPrayer(prayerName: "Nicene Creed", prayerContent: "I believe in one God, the Father, the Almighty, Maker of heaven and earth, of all things visible and invisible. I believe in one Lord Jesus Christ, the only-begotten Son of God, born of the Father before all ages, God from God, Light from Light, true God from true God, begotten, not made, consubstantial with the Father. Through him all things were made. For us and for our salvation he came down from heaven:by the power of the Holy Spirit was incarnate of the Virgin Mary, and became man. For our sake he was crucified under Pontius Pilate; he suffered death and was buried, and rose again on the third day in accordance with the Scriptures. He ascended into heaven and is seated at the right hand of the Father. He will come again in glory to judge the living and the dead, and his kingdom will have no end. I believe in the Holy Spirit, the Lord, the giver of life, who proceeds from the Father and the Son. With the Father and the Son he is adored and glorified. He has spoken through the Prophets. I believe in one, holy, catholic and apostolic Church. I confess one baptism for the forgiveness of sins, and I look forward to the resurrection of the dead, and the life of the world to come. Amen.")
    ]
}
