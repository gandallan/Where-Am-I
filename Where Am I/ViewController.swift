//
//  ViewController.swift
//  Where Am I
//
//  Created by Gandhi Mena Salas on 08/01/16.
//  Copyright © 2016 Trenx. All rights reserved.
//

import UIKit
import CoreLocation
 


class ViewController: UIViewController, CLLocationManagerDelegate {
    
    
//******Outlets
    
    @IBOutlet weak var latitudLabel: UILabel!
    @IBOutlet weak var longitudLabel: UILabel!
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var altitudLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

//********Variables
    
    var manager: CLLocationManager!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        print(locations)
        
        let userLocation:CLLocation = locations[0]
        self.latitudLabel.text = "\(userLocation.coordinate.latitude)"
        self.longitudLabel.text = "\(userLocation.coordinate.longitude)"
        self.courseLabel.text = "\(userLocation.course)"
        
        
    
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        

        
    }



}

