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
    let stationLeader: String
    let stationAll: String
    let stationEnd: String
}

struct StationsList {
    static let stations = [
        Station(stationName: "First Station", stationDesc: "Jesus is condemned to death", stationPic: "station-cross1", stationLeader: "**Leader:** Consider how Jesus Christ, after being scourged and crowned with thorns, was unjustly condemned by Pilate to die on the cross.\n", stationAll: "**All:** My adorable Jesus, it was not Pilate; no, it was my sins that condemned You to die. I beseech You, by the merits of this sorrowful journey, to assist my soul on its journey to eternity. I love You, beloved Jesus; I love You more than I love myself. With all my heart I repent of ever having offended You. Grant that I may love You always; and then do with me as You will.", stationEnd: "Through her heart, His sorrow sharing,\nAll His bitter anguish bearing,\nNow at length the sword had passed!"),
        
        Station(stationName: "Second Station", stationDesc: "Jesus carries His cross", stationPic: "station-cross2", stationLeader: "**Leader:** Consider Jesus as He walked this road with the cross on His shoulders, thinking of us, and offering to His Father in our behalf, the death He was about to suffer.\n", stationAll: "**All:** My most beloved Jesus, I embrace all the sufferings You have destined for me until death. I beg You, by all You suffered in carrying Your cross, to help me carry mine with Your perfect peace and resignation. I love You, Jesus, my love; I repent of ever having offended You. Never let me separate myself from You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "O how sad and sore distressed,\nWas that Mother highly blessed\nOf the sole-begotten One."),
        
        Station(stationName: "Third Station", stationDesc: "Jesus Falls the First Time", stationPic: "station-cross3", stationLeader: "**Leader:** Consider the first fall of Jesus. Loss of blood from the scourging and crowing with thorns had so weakened Him that He could hardly walk; and yet He had to carry that great load upon His shoulders. As the soldiers struck Him cruelly, He fell several times under the heavy cross.\n", stationAll: "**All:** My beloved Jesus, it was not the weight of the cross but the weight of my sins which made You suffer so much. By the merits of this first fall, save me from falling into mortal sin. I love You, O my Jesus, with all my heart; I am sorry that I have offended You. May I never offend You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "Christ above in torment hangs,\nShe beneath behold the pangs\nOf her dying, glorious Son."),
        
        Station(stationName: "Fourth Station", stationDesc: "Jesus Meets His Afflicted Mother", stationPic: "station-cross4", stationLeader: "**Leader:** Consider how the Son met his Mother on His way to Calvary. Jesus and Mary gazed at each other and their looks became as so many arrows to wound those hearts which loved each other so tenderly.\n", stationAll: "**All:** My most loving Jesus, by the pain You suffered in this meeting grant me the grace of being truly devoted to Your most holy Mother. And You, my Queen, who was overwhelmed with sorrow, obtain for me by Your prayers a tender and a lasting remembrance of the passion of Your divine Son. I love You, Jesus, my Love, above all things. I repent of ever having offended You. Never allow me to offend You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "Is there one who would not weep,\nWhelmed in miseries so deep,\nChrist’s dear Mother to behold?"),
        
        Station(stationName: "Fifth Station", stationDesc: "Simon Helps Jesus Carry the Cross", stationPic: "station-cross5", stationLeader: "**Leader:** Consider how weak and weary Jesus was. At each step He was at the point of expiring. Fearing that He would die on the way when they wished Him to die the infamous death of the cross, they forced Simon of Cyrene to help carry the cross after Our Lord.\n", stationAll: "**All:** My beloved Jesus I will not refuse the cross as Simon did: I accept it and embrace it. I accept in particular the death that is destined for me with all the pains that may accompany it. I unite it to Your death and I offer it to You. You have died for love of me; I will die for love of You and to please You. Help me by Your grace. I love You, Jesus, my Love; I repent of ever having offended You. Never let me offend You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "Can the human heart refrain\nFrom partaking in her pain\nIn that Mother’s pain untold?"),
        
        Station(stationName: "Sixth Station", stationDesc: "Veronica Offers Her Veil to Jesus", stationPic: "station-cross6", stationLeader: "**Leader:** Consider the compassion of the holy woman, Veronica. Seeing Jesus in such distress, His face bathed in sweat and blood, she presented Him with her veil. Jesus wiped His face, and left upon the cloth the image of his sacred countenance.\n", stationAll: "**All:** My beloved Jesus, Your face was beautiful before You began this journey; but, now, it no longer appears beautiful and is disfigured with wounds and blood. Alas, my soul also was once beautiful when it received Your grace in Baptism; but I have since disfigured it with my sins. You alone, my Redeemer, can restore it to its former beauty. Do this by the merits of Your passion; and then do with me as You will.", stationEnd: "Bruised, derided, cursed, defiled,\nShe beheld her tender Child,\nAll with bloody scourges rent."),
        
        Station(stationName: "Seventh Station", stationDesc: "Jesus Falls the Second Time", stationPic: "station-cross7", stationLeader: "**Leader:** Consider how the second fall of Jesus under His cross renews the pain in all the wounds of the head and members of our afflicted Lord.\n", stationAll: "**All:** My most gentle Jesus, how many times You have forgiven me; and how many times I have fallen again and begun again to offend You! By the merits of this second fall, give me the grace to persevere in Your love until death. Grant, that in all my temptations, I may always have recourse to You. I love You, Jesus, my Love with all my heart; I am sorry that I have offended You. Never let me offend You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "For the sins of His own nation\nSaw Him hang in desolation\nTill His spirit forth He sent."),
        
        Station(stationName: "Eighth Station", stationDesc: "Jesus Speaks to the Women", stationPic: "station-cross8", stationLeader: "**Leader:** Consider how the women wept with compassion seeing Jesus so distressed and dripping with blood as he walked along. Jesus said to them, “Weep not so much for me, but rather for Your children.”\n", stationAll: "**All:** My Jesus, laden with sorrows, I weep for the sins which I have committed against You because of the punishment I deserve for them; and, still more, because of the displeasure they have caused You who have loved me with an infinite love. It is Your love, more than the fear of hell, which makes me weep for my sins. My Jesus, I love You more than myself; I am sorry that I have offended You. Never allow me to offend You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "O thou Mother! Font of love,\nTouch my spirit from above,\nMake my heart with yours accord."),
        
        Station(stationName: "Ninth Station", stationDesc: "Jesus Falls the Third Time", stationPic: "station-cross9", stationLeader: "**Leader:** Consider how Jesus Christ fell for the third time. He was extremely weak and the cruelty of His executioners was excessive; they tried to hasten His steps though He hardly had strength to move.\n", stationAll: "**All:** My outraged Jesus, by the weakness You suffered in going to Calvary, give me enough strength to overcome all human respect and all my evil passions which have led me to despise Your friendship. I love You, Jesus my Love, with all my heart; I am sorry for ever having offended You. Never permit me to offend You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "Make me feel as You have felt;\nMake my soul to glow and melt\nWith the love of Christ my Lord."),
        
        Station(stationName: "Tenth Station", stationDesc: "Jesus Is Stripped of His Garments", stationPic: "station-cross10", stationLeader: "**Leader:** Consider how Jesus was violently stripped of His clothes by His executioners. The inner garments adhered to his lacerated flesh and the soldiers tore them off so roughly that the skin came with them. Have pity for your Savior so cruelly treated and tell Him.\n", stationAll: "**All:** My innocent Jesus, by the torment You suffered in being stripped of Your garments, help me to strip myself of all attachment for the things of earth that I may place all my love in You who are so worthy of my love. I love You, O Jesus, with all my heart; I am sorry for ever having offended You. Never let me offend You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "Holy Mother! Pierce me through,\nIn my heart each wound renew\nOf my Savior crucified."),
        
        Station(stationName: "Eleventh Station", stationDesc: "Jesus Is Nailed to the Cross", stationPic: "station-cross11", stationLeader: "**Leader:** Consider Jesus, thrown down upon the cross, He stretched out His arms and offered to His eternal Father the sacrifice of His life for our salvation. They nailed His hands and feet, and then, raising the cross, left Him to die in anguish.\n", stationAll: "**All:** My despised Jesus, nail my heart to the cross that it may always remain there to love You and never leave You again. I love You more than myself; I am sorry for ever having offended You. Never permit me to offend You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "Let me share with you His pain,\nWho for all my sins was slain,\nWho for me in torment died."),
        
        Station(stationName: "Twelfth Station", stationDesc: "Jesus Dies Upon the Cross", stationPic: "station-cross12", stationLeader: "**Leader:** Consider how Your Jesus, after three hours of agony on the cross, is finally overwhelmed with suffering and, abandoning Himself to the weight of His body, bows His head and dies.\n", stationAll: "**All:** My dying Jesus, I devoutly kiss the cross on which You would die for love of me. I deserve, because of my sins, to die a terrible death; but Your death is my hope. By the merits of Your death, give me the grace to die embracing Your feet and burning with love of You. I yield my soul into Your hands. I love You with my whole heart. I am sorry that I have offended You. Never let me offend You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "Let me mingle tears with Thee,\nMourning Him who mourned for me,\nAll the days that I may live."),
        
        Station(stationName: "Thirteenth Station", stationDesc: "Jesus Is Taken Down from the Cross", stationPic: "station-cross13", stationLeader: "**Leader:** Consider how, after Our Lord had died, He was taken down from the cross by two of His disciples, Joseph and Nicodemus, and placed in the arms of His afflicted Mother. She received Him with unutterable tenderness and pressed Him close to her bosom.\n", stationAll: "**All:** O Mother of Sorrows, for the love of Your Son, accept me as Your servant and pray to Him for me, And You, my Redeemer, since you have died for me, allow me to love You, for I desire only You and nothing more. I love You, Jesus my Love, and I am sorry that I have offended You. Never let me offend You again. Grant that I may love You always; and then do with me as You will.", stationEnd: "By the cross with You to stay;\nThere with You to weep and pray,\nIs all I ask of You to give."),
        
        Station(stationName: "Fourteenth Station", stationDesc: "Jesus Is Placed in the Sepulcher", stationPic: "station-cross14", stationLeader: "**Leader:** Consider how the disciples carried the body of Jesus to its burial, while His holy Mother went with them and arranged it in the sepulcher with her own hands. They then closed the tomb and all departed.\n", stationAll: "**All:** Oh, my buried Jesus, / I kiss the stone that closes You in. / But You gloriously did rise again on the third day. / I beg You by Your resurrection that I may be raised gloriously on the last day, / to be united with You in heaven, to praise You and love You forever. / I love You, Jesus, and I repent of ever having offended You. / Grant that I may love You always; and then do with me as You will.", stationEnd: "Virgin of all Virgins best!\nListen to my fond request;\nLet me share your grief divine."),
        
        
    ]
}

