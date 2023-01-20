//
//  SaintPrayers.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 08/12/22.
//

import SwiftUI

struct SaintPrayer: Identifiable, Hashable {
    let id = UUID()
    let prayerName: String
    let prayerContent: String
}

struct SaintPrayerList {
    static let saintPrayers = [
        
        SaintPrayer(prayerName: "Prayer to St. Joseph", prayerContent: "Oh, St. Joseph, whose protection is so great, so strong, so prompt before the throne of God. I place in you all my interests and desires. Oh, St. Joseph, do assist me by your powerful intercession, and obtain for me from your divine Son all spiritual blessings, through Jesus Christ, our Lord. So that, having engaged here below your heavenly power, I may offer my thanksgiving and homage to the most loving of Fathers.\n\nOh, St. Joseph, I never weary of contemplating you, and Jesus asleep in your arms; I dare not approach while He reposes near your heart. Press Him in my name and kiss His fine head for me and ask him to return the Kiss when I draw my dying breath. St. Joseph, Patron of departing souls - Pray for me.\n\nThis prayer was found in the fifteenth year of Our Lord and Savior Jesus Christ. In 1505 it was sent from the Pope to Emperor Charles when he was going into battle. Whoever shall read this prayer or hear it or keep it about themselves, shall never die a sudden death, or be drowned, not shall poison take effect of them; neither shall they fall into the hands of the enemy; or shall be burned in any fire, or shall be overpowered in battle.\n\nSay for nine mornings for anything you may desire. It has never been known to fail, so be sure you really want what you ask."),
        
        SaintPrayer(prayerName: "Prayer to St. Michael", prayerContent: "St. Michael the Archangel, defend us in battle. Be our defense against the wickedness and snares of the Devil. May God rebuke him, we humbly pray, and do thou, O Prince of the heavenly hosts, by the power of God, thrust into hell Satan, and all the evil spirits, who prowl about the world seeking the ruin of souls. Amen."),
        
        SaintPrayer(prayerName: "Prayer to St. Thomas Aquinas", prayerContent: "Lord, Father all-powerful and ever-living God, I thank You, for even though I am a sinner, your unprofitable servant, not because of my worth but in the kindness of your mercy, You have fed me with the Precious Body and Blood of Your Son, our Lord Jesus Christ./n/nI pray that this Holy Communion may not bring me condemnation and punishment but forgiveness and salvation. May it be a helmet of faith and a shield of good will. May it purify me from evil ways and put an end to my evil passions. May it bring me charity and patience, humility and obedience, and growth in the power to do good.\n\nMay it be my strong defense against all my enemies, visible and invisible, and the perfect calming of all my evil impulses, bodily and spiritual.\n\nMay it unite me more closely to you, the One true God, and lead me safely through death to everlasting happiness with You.\n\nAnd I pray that You will lead me, a sinner, to the banquet where you, with Your Son and holy Spirit, are true and perfect light, total fulfillment, everlasting joy, gladness without end, and perfect happiness to your saints. grant this through Christ our Lord, Amen."),
        
        SaintPrayer(prayerName: "Prayer to St. Francis of Assisi", prayerContent: "Lord, make me an instrument of your peace. Where there is hatred, let me sow love. Where there is injury, pardon. Where there is doubt, faith. Where there is despair, hope. Where there is darkness, light. Where there is sadness, joy. O Divine Master, grant that I may not so much seek to be consoled, as to console; to be understood, as to understand; to be loved, as to love. For it is in giving that we receive. It is in pardoning that we are pardoned, and it is in dying that we are born to Eternal Life. Amen."),
        
        SaintPrayer(prayerName: "Prayer to St. Dominic", prayerContent: "May God the Father who made us bless us. May God the Son send his healing among us. May God the Holy Spirit move within us and give us eyes to see with, ears to hear with, and hands that your work might be done. May we walk and preach the word of God to all. May the angel of peace watch over us and lead us at last by God's grace to the Kingdom. Amen."),
        
        SaintPrayer(prayerName: "Prayer to St. Benedict", prayerContent: "Gracious and holy Father, grant us the intellect to understand you, reason to discern you, diligence to seek you, wisdom to find you, a spirit to know you, a heart to meditate upon you. May our ears hear you, may our eyes behold you, and may our tongues proclaim you. Give us grace that our way of life may be pleasing to you, that we may have the patience to wait for you and the perseverance to look for you. Grant us a perfect end--your holy presence, a blessed resurrection and life everlasting. We ask this through Jesus Christ our Lord. Amen."),
        
        SaintPrayer(prayerName: "Prayer to St. Christopher", prayerContent: "Grant me, O Lord, a steady hand and watchful eye. That no one shall be hurt as I pass by. You gave life, I pray no act of mine may take away or mar that gift of thine. Shelter those, dear Lord, who bear my company, from the evils of fire and all calamity. Teach me, to use my car for others need; Nor miss through love of undue speed The beauty of the world; that thus I may with joy and courtesy go on my way. St. Christopher, holy patron of travelers, protect me and lead me safely to my destiny. Amen.")
    ]
}
