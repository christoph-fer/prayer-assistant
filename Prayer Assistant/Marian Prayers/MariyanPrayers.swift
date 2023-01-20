//
//  MariyanPrayers.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 01/12/22.
//

import SwiftUI

struct MarianPrayer: Identifiable, Hashable {
    let id = UUID()
    let prayerName: String
    let prayerContent: String
}

struct MarianPrayerList {
    static let marianPrayers = [
        
        MarianPrayer(prayerName: "Hail Holy Queen", prayerContent: "Hail, holy Queen, mother of mercy; hail, our life, our sweetness, and our hope! To Thee do we cry, poor banished children of Eve; to Thee do we send up our sighs, mourning and weeping in this vale of tears. Turn then, most gracious advocate, Thine eyes of mercy towards us; and after this our exile, show unto us the blessed fruit of thy womb, Jesus. O clement, O loving, O sweet Virgin Mary."),
        
        MarianPrayer(prayerName: "Ancient Prayer to Mary", prayerContent: "We fly to your patronage, O Holy Mother of God; despise not our petitions in our necessities, but deliver us always from all danger, O glorious and blessed Virgin. Amen."),
        
        MarianPrayer(prayerName: "The Memorare", prayerContent: "Remember, O most gracious Virgin Mary, that never was it known that anyone who fled to thy protection, implored thy help, or sought thine intercession was left unaided. Inspired by this confidence, I fly unto thee, O Virgin of virgins, my Mother; to thee do I come, before thee I stand, sinful and sorrowful. O Mother of the Word Incarnate, despise not my petitions, but in thy mercy hear and answer me. Amen."),
        
        MarianPrayer(prayerName: "The Regina Caeli", prayerContent: "**V.** Queen of Heaven, rejoice, alleluia.\n**R**. For He whom you did merit to bear, alleluia.\n**V**. Has risen, as he said, alleluia.\n**R**. Pray for us to God, alleluia.\n**V**. Rejoice and be glad, O Virgin Mary, alleluia.\n**R**. For the Lord has truly risen, alleluia.\n\n**Let us pray,**\n\nO God, who gave joy to the world through the resurrection of Thy Son, our Lord Jesus Christ, grant we beseecThee, that through the intercession of the Virgin Mary, His Mother, we may obtain the joys of everlastinlife. Through the same Christ our Lord. Amen. "),
        
        MarianPrayer(prayerName: "Miraculous Medal Prayer", prayerContent: "O Mary, conceived without sin, pray for us who have recourse to thee, and for those who do not have recourse to thee, especially the enemies of the Church and those recommended to thee. Amen."),
        
        MarianPrayer(prayerName: "The Angelus", prayerContent: "**V** - The Angel of the Lord declared unto Mary.\n**R** - And she conceived by the Holy Spirit.(Hail Mary...)\n\n**V** - Behold the handmaid of the Lord.\n**R** - Be it done unto me according to thy word. (Hail Mary...)\n\n**V** - And the Word was made Flesh.\n**R** - And dwelt among us. (Hail Mary...)\n\n**V** - Pray for us, O Holy Mother of God.\n**R** - That we may be made worthy of the promises of Christ.\n\n**Let us Pray,**\n\nPour forth, we beseech Thee, O Lord, Thy grace into our hearts; that, we to whom the Incarnation of Christ, Thy Son, was made known by the message of an Angel, may by His Passion and Cross, be brought to the glory of His Resurrection through the same Christ our Lord. Amen.")
    ]
}
