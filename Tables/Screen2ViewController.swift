//
//  Screen2ViewController.swift
//  TableViewApp
//
//  Created by CICE on 21/6/18.
//  Copyright © 2018 alegs0501. All rights reserved.
//

import UIKit

class Screen2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
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
    
    //Return numbers of rows to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //returning number of teams
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Declare cell to use
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TeamCellTableViewCell
        //Configuring cell
        cell.teamNameLabel.text = teams[indexPath.row].name
        //getNicks() fron Teams class
        cell.teamNickLabel.text = "Apodo(s): \(teams[indexPath.row].getNicks())"
        cell.teamCityLabel.text = "Ciudad: \(teams[indexPath.row].city)"
        cell.teamImage.image = UIImage(named: teams[indexPath.row].image)
        cell.teamImage.layer.cornerRadius = 25
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
