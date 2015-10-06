//
//  UDRequestTester.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/29/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

// MARK: - UDRequestTester

class UDRequestTester {
    
    // MARK: Properties
    
    var delegate: UDRequestDelegate

    // MARK: Initializer
    
    init(delegate: UDRequestDelegate) {
        self.delegate = delegate
    }
    
    // MARK: Run Test
    
    func runTestForRequestType(requestType: UDRequestType) -> Bool {
        switch(requestType) {
        // Alien Adventure 1
        case .ReverseLongestName:
            return testReverseLongestName()
        case .MatchMoonRocks:
            return testMatchMoonRocks()
        case .InscriptionEternalStar:
            return testInscriptionEternalStar()
        case .LeastValuableItem:
            return testLeastValuableItem()
        case .ShuffleStrings:
            return testShuffleStrings()
        // Alien Adventure 2
        case .ItemsFromPlanet:
            return testItemsFromPlanet()
        case .OldestItemFromPlanet:
            return testOldestItemFromPlanet()
        case .XORCipherKeySearch:
            return testXORCipherKeySearch()
        case .RarityOfItems:
            return testRarityOfItems()
        case .ItemComparison:
            return testItemComparison()
        case .BannedItems:
            return testBannedItems()
        case .PlanetData:
            return testPlanetData()
        case .MostCommonCharacter:
            return testMostCommonCharacter()
        // Undefined
        case .Undefined:
            return false
        }
    }
    
    func processRequestType(requestType: UDRequestType, failed: Bool) -> String {
        switch(requestType) {
        // Alien Adventure 1
        case .ReverseLongestName:
            return processReverseLongestName()
        case .MatchMoonRocks:
            return processMatchMoonRocks(failed)
        case .InscriptionEternalStar:
            return processInscriptionEternalStar(failed)
        case .LeastValuableItem:
            return processLeastValuableItem(failed)
        case .ShuffleStrings:
            return processShuffleStrings()
        // Alien Adventure 2
        case .ItemsFromPlanet:
            return processItemsFromPlanet(failed)
        case .OldestItemFromPlanet:
            return processOldestItemFromPlanet()
        case .XORCipherKeySearch:
            return processXORCipherKeySearch()
        case .RarityOfItems:
            return processRarityOfItems()
        case .ItemComparison:
            return processItemComparison()
        case .BannedItems:
            return processBannedItems()
        case .PlanetData:
            return processPlanetData()
        case .MostCommonCharacter:
            return processMostCommonCharacter()
        // Undefined
        case .Undefined:
            return ""
        }
    }
    
    // MARK: Helpers
    
    func allItems() -> [UDItem] {
        var items = [UDItem]()
        for item in UDItemIndex.items {
            items.append(item.1)
        }
        return items
    }
}