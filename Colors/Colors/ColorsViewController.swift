//
//  ColorsViewController.swift
//  Colors
//
//  Created by Austin Hales on 3/2/20.
//  Copyright © 2020 Austin Hales. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]

    override func viewDidLoad() {
        super.viewDidLoad()

        colorsTableView.dataSource = self
        colorsTableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        let cellBackgroundColor = determineCellBackgroundColor(cellForRowAt: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        
        cell.backgroundColor = cellBackgroundColor
        
        return cell
    }
    
    func determineCellBackgroundColor(cellForRowAt indexPath: IndexPath) -> UIColor {
        
        let cellBackgroundColor = colors[indexPath.row]
        
        switch cellBackgroundColor {
            
            case "red":
                return UIColor.red
            case "orange":
                return UIColor.orange
            case "yellow":
                return UIColor.yellow
            case "green":
                return UIColor.green
            case "blue":
                return UIColor.blue
            case "purple":
                return UIColor.purple
            case "brown":
                return UIColor.brown
            default:
                return UIColor.white
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
