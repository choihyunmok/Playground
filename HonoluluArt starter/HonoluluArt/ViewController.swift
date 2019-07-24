/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        
        let regionRadius : CLLocationDistance = 1000
        func centerMapOnLocation (location : CLLocation) {
            let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
    super.viewDidLoad()
        
    // set initial location -  honololu instead of Banpo Han-River Park
    let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444) //37.509824, 126.994744
        centerMapOnLocation(location: initialLocation)
    // show artwork on the map
        let artwork = Artwork(title: "King David Kalakaua", locationName: "Waikiki Gateway Park", discipline: "Sculpture", coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))
        mapView.addAnnotation(artwork)
        
    }
}


/*
 // set initial location -  Banpo Han-River Park
 let initialLocation = CLLocation(latitude: 37.509824 , longitude: 126.994744) //37.509824, 126.994744
 let regionRadius : CLLocationDistance = 1000
 func centerMapOnLocation (location : CLLocation) {
 let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
 mapView.setRegion(coordinateRegion, animated: true)
 }
 */
