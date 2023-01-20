//
//  DailyPrayers.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 01/12/22.
//

import SwiftUI

struct DailyPrayer: Identifiable, Hashable {
    let id = UUID()
    let prayerName: String
    let prayerContent: String
}

struct DailyPrayerList {
    static let dailyPrayers = [
        
        DailyPrayer(prayerName: "Spiritual Communion", prayerContent: "My Jesus, I believe that you are in the Blessed Sacrament. I love you above all things, and I long for you in my soul. Since I cannot now receive you sacramentally, come at least spiritually into my heart. As though you have already come, I embrace you and unite myself entirely to you; never permit me to be separated from you. Amen."),
        
        DailyPrayer(prayerName: "Soul of Christ", prayerContent: "Soul of Christ, sanctify me. Body of Christ, save me. Blood of Christ, inebriate me. Water from the side of Christ, wash me. Passion of Christ, strengthen me. O good Jesus, hear me. Within Thy wounds hide me. Permit me not to be separated from Thee. From the malignant enemy defend me. In the hour of my death call me. And bid me come unto Thee. That I may praise Thee with Thy saints Forever and ever. Amen."),
        
        DailyPrayer(prayerName: "Morning Prayer", prayerContent: "O Jesus, through the Immaculate Heart of Mary, I offer You my prayers, works, joys and sufferings of this day in union with the holy sacrifice of the Mass throughout the world, in reparation for my sins, for the intentions of my relatives and friends and in particular for the intentions of the Holy Father. Amen."),
        
        DailyPrayer(prayerName: "Evening Prayer", prayerContent: "O my God, at the end of this day I thank you most heartily for all the graces I have recieved from you.  I am sorry that I have committed against you. Forgive me, O my God, and graciously protect me this night.  Blessed Virign Mary, my dear heavely Mother, take me under Your protection. St. Joseph, my dear guardian angel, and all you saints of God, pray for me. Sweet Jesus, have pity on all poor sinners, and save them from hell. Have mercy on the suffering souls in purgatory."),
        
        DailyPrayer(prayerName: "Grace Before Meals", prayerContent: "Bless us, O Lord, and these, Thy gifts, which we are about to receive from Thy bounty. Through Christ, our Lord. Amen."),
        
        DailyPrayer(prayerName: "Grace After Meals", prayerContent: "We give Thee thanks, to allmightly God, for these Thy gifts, which we have recieved from Thy bounty. Through Christ, our Lord")
    ]
}
