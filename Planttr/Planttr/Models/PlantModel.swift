//
//  PlantModel.swift
//  Planttr
//
//  Created by Necati Bozkurt on 7.07.2022.
//

import Foundation

struct Plants:Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var price : Int
    var detail : String
    var favorites: Bool = false
    
}

extension Plants {
    static let sampleData: [Plants] =
    [
        Plants(name: "Bonsai", image: "bonsai", price: 14, detail: "Bonsai is the Japanese art of growing and training miniature trees in pots, developed from the traditional Chinese art form of penjing."),
        Plants(name: "Cactus", image: "cactus", price: 21, detail: "A cactus is a member of the plant family Cactaceae, a family comprising about 127 genera with some 1750 known species of the order Caryophyllales."),
        Plants(name: "Lemon", image: "lemon", price: 34, detail: "The lemon (Citrus limon) is a species of small evergreen trees in the flowering plant family Rutaceae, native to Asia, primarily Northeast India (Assam), Northern Myanmar or China."),
        Plants(name: "Aloe Vera", image: "aloeVera", price: 16, detail: "Aloe vera, sometimes described as a “wonder plant,” is a short-stemmed shrub. Aloe is a genus that contains more than 500 species of flowering succulent plants. Many Aloes occur naturally in North Africa."),
        Plants(name: "Orchid", image: "orchid", price: 20, detail: "Orchid, (family Orchidaceae), any of nearly 1,000 genera and more than 25,000 species of attractively flowered plants distributed throughout the world, especially in wet tropics. Orchidaceae is a member of Asparagales, an order of monocotyledonous flowering plants that also includes the asparagus and iris families."),
        Plants(name: "Epipremnum Aureum", image: "epipremnumAureum", price: 15, detail: "Epipremnum aureum is a species in the arum family Araceae, native to Mo'orea in the Society Islands of French Polynesia.[2] The species is a popular houseplant in temperate regions but has also become naturalised in tropical and sub-tropical forests worldwide, including northern South Africa,[3] Australia, Southeast Asia, South Asia, the Pacific Islands and the West Indies, where it has caused severe ecological damage in some cases.")
    ]
}
