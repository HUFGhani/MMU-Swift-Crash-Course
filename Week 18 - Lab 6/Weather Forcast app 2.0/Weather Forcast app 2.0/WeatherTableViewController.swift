//
//  WeatherTableViewController.swift
//  Weather Forcast app 2.0
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class WeatherTableViewController: UITableViewController {
    var hourlyForecasts = [Hourly]()
    var lat:Double?
    var long:Double?
    var temperature: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Hourly.forecasts(lat: lat! , long: long!, temperature: temperature! ){forecasts in self.hourlyForecasts = forecasts; self.tableView.reloadData() }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return hourlyForecasts.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "weather", for: indexPath) as! WeatherForecastTableViewCell
     
     // Configure the cell...
        
        let summary  = hourlyForecasts[indexPath.row].summary
        
        let iconString = hourlyForecasts[indexPath.row].icon
        
        let icon : String = getImage(image: iconString)
        
        let time  = hourlyForecasts[indexPath.row].time
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy - hh:mm a"
        let text = dateFormatter.string(from: time)
        
        
        cell.lblsummary.text = summary
        cell.uiIconImage.image = UIImage(named: icon)
        cell.lblDateTime.text = "\(text)"
        if temperature == "si"{
        cell.temp.text = "\(hourlyForecasts[indexPath.row].temperature) °C"
        }else{
             cell.temp.text = "\(hourlyForecasts[indexPath.row].temperature) °F"
        }
     return cell
     }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
        
        let moreVC = segue.destination as! MoreInforViewController
        let more = tableView.indexPathForSelectedRow?.row
        moreVC.icon = getImage(image: hourlyForecasts[more!].icon)
        moreVC.temp = hourlyForecasts[more!].temperature
        moreVC.summary = hourlyForecasts[more!].summary
        moreVC.scale = temperature

     }
 
    func getImage(image: String) -> String {
        var icon : String
        switch image {
        case "clear-day":
            icon = "Sunny.png"
        case "clear-night":
            icon = "Clear.png"
        case "rain":
            icon = "ModRain.png"
        case "snow" :
            icon = "HeavySnow.png"
        case  "sleet" :
            icon = "IsoSleetSwrsDay.png"
        case "wind" :
            icon = "wind.png"
        case "fog" :
            icon = "Fog.png"
        case "cloudy" :
            icon = "Cloudy.png"
        case "partly-cloudy-night":
            icon = "PartlyCloudyNight.png"
        case "partly-cloudy-day":
            icon = "PartlyCloudyDay.png"
        default:
            icon = ""
        }
        return icon
    }
}
