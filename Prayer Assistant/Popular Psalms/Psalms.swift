//
//  Psalms.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 02/12/22.
//

import SwiftUI

struct psalm: Identifiable, Hashable {
    let id = UUID()
    let prayerName: String
    let prayerContent: String
}

struct psalmList {
    static let psalms = [
        
        psalm(prayerName: "Psalm 23", prayerContent: "The Lord is my shepherd, I shall not want, he makes me lie down in green pastures, he leads me besides still waters, he restores my soul. He guides me through the right paths for his name's sake. Although I walk through the valley of the shadow of death, I fear no evil, for you are beside me: your rod and your staff comfort me. You spread a table before me in the presence of my foes. You anoint my head with oil; my cup is overflowing. Goodness and kindness will follow me all the days of my life, I shall dwell in the house of the Lord as long as i live."),
        
        psalm(prayerName: "Psalm 46", prayerContent: "God is our refuge and strength, a very present help in trouble. Therefore we will not fear, though the earth should change, though the mountains shake in the heart of the sea; though its waters roar and foam, though the mountains tremble with its tumult.\n\nThere is a river whose streams make glad the city of God, the holy habitation of the Most High. God is in the midst of the city; it shall not be moved; God will help it when the morning dawns. The nations are in an uproar, the kingdoms totter; he utters his voice, the earth melts. The Lord of hosts is with us; the God of Jacob is our refuge.\n\nCome, behold the works of the Lord; see what desolations he has brought on the earth. He makes wars cease to the end of the earth; he breaks the bow, and shatters the spear; he burns the shields with fire. “Be still, and know that I am God! I am exalted among the nations, I am exalted in the earth.” The Lord of hosts is with us; the God of Jacob is our refuge."),
        
        psalm(prayerName: "Psalm 51", prayerContent: "Have mercy on me, God, in your kindness. In your compassion blot out my offense. O wash me more and more from my guilt and cleanse me from my sin.\n\n My offenses truly I know them; my sin is always before me. Against you, you alone, have I sinned; what is evil in your sight I have done.\n\n That you may be justified when you give sentence and be without reproach when you judge. O see, in guilt I was born, a sinner was I concieved.\n\n Indeed you love truth in the heart; then in the secret of my heart teach me wisdom. O purify me, then I shall be clean; O wash me, I shall be whiter then snow.\n\n Make me hear rejoicing and gladness, that the bones you have crushed may revive. From my sins turn away your face and blot out all my guilt.\n\n A pure heart create for me, O God, put a steadfast spirit within me. Do not cast me away from your presence, nor deprive me of your holy spirit.\n\n Give me again the joy of your help; with a spirit of fervor sustain me, that I may teach transgressions your ways and sinners may return to you.\n\n O rescue me, God, my helper, and my tongue shall ring out your goodness. O Lord, open my lips and my mouth shall declare your praise.\n\n For in sacrifice you take no delight, burnt offering from me you would refuse, my sacrifice, a contrite spirit. A humbled, contrite heart you will not spurn.\n\n In your goodness, show favor to Zion: rebuild the walls of Jerusalem. Then you will be pleased with lawful sacrifice, holocausts offered on your altar."),
        
        psalm(prayerName: "Psalm 91", prayerContent: "You who dwell in the shelter of the Most High, who rest in the shadow of the Almighty, say to the Lord, “My stronghold, my refuge, my God in whom I trust!” He will rescue you from the fowler's snare and from the deadly pestilence. He will cover you with his pinions and give you refuge under his wings. You shall not fear the terror of the night nor the arrows that fly by day, nor the pestilence that stalks by night, and the plague that destroys at noonday. A thousand may fall at your side, ten thousand at your right hand, but nothing shall befall you, his faithfulness is your shield. Open your eyes: you will see how the wicked are repaid. If you have made the Lord your refuge, the Most High your stronghold, no harm will come upon you, no disaster will draw near your home. For he will command his angels to guard you in all your ways. They will lift you up with their hands so that your foot will not hit a stone. You will tread on wildcast and snakes and trample the lion and the dragon. “Because they cling to me, I will rescue them,” says the Lord. “I will protect those who know my name. When they call to me, I will answer; in time of trouble I will be with them; I will deliver and honor them. I will satisfy them with long life and show them my salvation.”")
    ]
}
