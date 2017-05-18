//
//  ViewController.swift
//  Mock Question 3
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController ,CLLocationManagerDelegate, MKMapViewDelegate {
    
    var mmu:Locations?
    var trainStation:Locations?
    
    
    @IBOutlet weak var mapView: MKMapView!
    private let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        mapView.delegate = self
        
        mmu = Locations(title:"MMU",coordinate: CLLocationCoordinate2D(latitude: 53.471872, longitude: -2.239934 ))
        
        trainStation = Locations(title: "Manchester Victoria", coordinate: CLLocationCoordinate2D(latitude: 53.487329, longitude: -2.242343))
    
        mapView.addAnnotation(mmu!)
        mapView.addAnnotation(trainStation!)
        
    
        let request = MKDirectionsRequest()
        request.source = MKMapItem(placemark: MKPlacemark(coordinate: (mmu?.coordinate)!))
        
        request.destination = MKMapItem(placemark: MKPlacemark(coordinate: (trainStation?.coordinate)!))
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
            polylineRenderer.strokeColor = UIColor.purple
            polylineRenderer.lineWidth = 5
            return polylineRenderer
        }
        return MKOverlayRenderer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func mmu(_ sender: UIButton) {
        mapView.setCenter((mmu?.coordinate)!, animated: true)
    }
    
    
    @IBAction func train(_ sender: Any) {
        mapView.setCenter((trainStation?.coordinate)!, animated: true)
    }
}

