//
//  DeveloperPreview.swift
//  Air_BnB_Clone
//
//  Created by Dev on 24/08/24.
//

import Foundation

class DeveloperPreview {
    var listing: [Listing] = [
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownername: "Donald Trump",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuest: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            //imageURLs: <#T##[String]#>,
            address: "124 Main St",
            city: "Miami",
            State: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi,.tv,.pool,.laundry,.kitchen,.baclcony],
            tyoe: .villa
        ),
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownername: "Shri Narendra Modi",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuest: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            //imageURLs: <#T##[String]#>,
            address: "124 Main St",
            city: "Ahemdabad",
            State: "Gujarat",
            title: "Station",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi,.tv,.pool,.laundry,.kitchen,.baclcony],
            tyoe: .villa
        ),
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownername: "Putin",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuest: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            //imageURLs: <#T##[String]#>,
            address: "124 Main St",
            city: "Moscow",
            State: " Belgorod Region",
            title: "Putin Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi,.tv,.pool,.laundry,.kitchen,.baclcony],
            tyoe: .villa
        ),
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownername: "Amit Shah",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuest: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            //imageURLs: <#T##[String]#>,
            address: "124 Main St",
            city: "Ahemdabad",
            State: "Gujarat",
            title: "Bapu no Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi,.tv,.pool,.laundry,.kitchen,.baclcony],
            tyoe: .villa
        ),
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownername: "Naruto",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuest: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            //imageURLs: <#T##[String]#>,
            address: "124 Main St",
            city: "Tokyo",
            State: "Hokkaidō",
            title: "Ramen Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi,.tv,.pool,.laundry,.kitchen,.baclcony],
            tyoe: .villa
        )
    ]
}

