//
//  Artwork.swift
//  HonoluluArt
//
//  Created by HYUNMOK CHOI on 7/24/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import Foundation
import MapKit

class Artwork: NSObject, MKAnnotation{
    // NSObject: Object C의 최상위 클래스, 모든 클래스는 NSObject 상속받아야 함. MKAnnotation: MapKit Annotation, 프로토콜임.
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D){
    self.title = title
    self.locationName = locationName
    self.discipline = discipline
    self.coordinate = coordinate

        super.init() // NSObject에서 상속받은 메서드임.
    }
    var subtitle: String?{
        return locationName
    }
}
