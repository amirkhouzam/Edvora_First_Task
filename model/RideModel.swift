//
//  Ride.swift
//  Edvora First Round
//
//  Created by Amirkhouzam on 31/03/2022.
//

import Foundation


// MARK: - RidemodelElement

struct RidemodelElement: Codable , Identifiable {
    let id : Int?
    let originStationCode: Int?
    let stationPath: [Int]?
    let destinationStationCode: Int?
    let date: String?
    let mapURL: String?
    let state, city: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case originStationCode = "origin_station_code"
        case stationPath = "station_path"
        case destinationStationCode = "destination_station_code"
        case date
        case mapURL = "map_url"
        case state, city
    }
}

typealias Ridemodel = [RidemodelElement]
