//
//  Screen1TableViewController.swift
//  TableViewApp
//
//  Created by CICE on 21/6/18.
//  Copyright © 2018 alegs0501. All rights reserved.
//

import UIKit

class Screen1TableViewController: UITableViewController {
    
    //Crating an Array containing Teams info
    let teams = [Teams(name: "Real Madrid", city: "Madrid", nick: ["Merengues", "Vikingos", "Blancos"], colors: ["#FFFFFF", "#9500AB"], image: "realMadrid"),
                 Teams(name: "Bayern Munich", city: "Munich", nick: ["Bávaros", "La Bestia Negra"], colors: ["#ED0C0C", "#3006C7"], image: "bayern"),
                 Teams(name: "AC Milan", city: "Milan", nick: ["Rossoneri"], colors: ["#D10D37", "#000000"], image: "milan"),
                 Teams(name: "Chelsea FC", city: "Londres", nick: ["The Blues"], colors: ["#130FFC", "#000000"], image: "chelsea"),
                 Teams(name: "Cleveland Cavaliers", city: "Ohio", nick: ["Cavs"], colors: ["#960000", "#EFF21B"],image: "clevelandCavaliers" ),
                 Teams(name: "Golden State Warriors", city: "Oakland", nick: ["Warriors"], colors: ["#FFFFFF", "#0300AB"], image: "warriors"),
                 Teams(name: "FC Barcelona", city: "Barcelona", nick: ["Culés", "Blaugranas"], colors: ["#0300AB", "#AB1D2E"], image: "barca"),
                 Teams(name: "Yankees", city: "New York", nick: ["Bronx Zoo", "Los Enes"], colors: ["#0F0140", "#CFCFCF"], image: "yankees"),
                 Teams(name: "Industriales", city: "La Habana", nick: ["Los Leones", "Los Azules"], colors: ["#350AF5", "#FFFFFF"], image: "industriales"),
                 Teams(name: "Steelers", city: "Pittsburgh", nick: ["Acereros"], colors: ["#000000", "#EFF21B"], image: "steelers")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        return teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TeamScreen1TableViewCell
        //Configuring cell
        cell.teamNamelabel.text = teams[indexPath.row].name
        //getNicks() fron Teams class
        cell.teamNickLabel.text = "Apodo(s): \(teams[indexPath.row].getNicks())"
        cell.teamCityLabel.text = "Ciudad: \(teams[indexPath.row].city)"
        cell.teamImage.image = UIImage(named: teams[indexPath.row].image)
        cell.teamImage.layer.cornerRadius = 25

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
