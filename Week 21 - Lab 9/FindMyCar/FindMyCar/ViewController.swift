//
//  ViewController.swift
//  FindMyCar
//
//  Created by Hamza Ghani on 14/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController ,CLLocationManagerDelegate, MKMapViewDelegate {
    private let locationManager = CLLocationManager()
    
    private var lastLocation :CLLocationCoordinate2D? = nil
    private var savedLocation : CLLocationCoordinate2D? = nil

    @IBOutlet weak var latitudeLabel: UILabel!

    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
        mapView.delegate = self
        
    }
    @IBAction func SaveCarLocation(_ sender: Any) {
        savedLocation = lastLocation
        if let location = savedLocation{
            let point = MKPointAnnotation()
            point.coordinate = location
            point.title = "My Car"
            mapView.addAnnotation(point)
        }

    }

    @IBAction func ChangeMapType(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mapView.mapType = .satellite
        default:
            mapView.mapType = .standard
        }
    }
    
    @IBAction func routeToCar(_ sender: Any) {
        guard let location = savedLocation else { return }
        
        let request = MKDirectionsRequest()
        request.source = MKMapItem.forCurrentLocation()
        
        
        request.destination = MKMapItem(placemark: MKPlacemark(coordinate: location))
        request.requestsAlternateRoutes = true
        request.transportType = .automobile
        
        let directions = MKDirections(request: request)
        
        directions.calculate { [unowned self] response, error in
            if let response = response{
                if let route = response.routes.first {
                    self.mapView.add(route.polyline)
                    self.mapView.setVisibleMapRect(route.polyline.boundingMapRect, animated: true)
                }
            }
        }
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKPolyline {
            let polylineRenderer = MKPolylineRenderer(overlay: overlay)
            polylineRenderer.strokeColor = UIColor.orange
            polylineRenderer.lineWidth = 5
            return polylineRenderer
        }
        return MKOverlayRenderer()
    }
    
    func locationManager(_ manager:CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus)
    {
        print("Authorization status changed to \(status)")
        switch status {
        case .authorizedAlways, . authorizedWhenInUse:
            locationManager.startUpdatingLocation()
            mapView.showsUserLocation = true
        default:
            locationManager.stopUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last{
            
            latitudeLabel.text = location.coordinate.latitude.description
            longitudeLabel.text = location.coordinate.longitude.description
            lastLocation = location.coordinate
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

