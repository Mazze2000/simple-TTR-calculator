//
//  ViewController.swift
//  TTR Rechner
//
//  Created by Matthias Wahl on 29.08.18.
//  Copyright © 2018 Matthias Wahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var gegner = 0                                  //zählt die Anzahl an Gegnern
    
    var siegOderNiederlage = [2,2,2,2,2,2,2,2,2,2]  //2 nichts eingetragen, 1 = Sieg, 0 = Niederlage
    var myTTR = -1                                  //-1 kein TTR Eingegeben
    var gegnerTTR = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1] //-1 kein TTR Eingegeben
    
    //MARK: Outlet
    
    @IBOutlet weak var myTTREingabe: UITextField!
    @IBOutlet weak var gegnerTTR1: UITextField!
    @IBOutlet weak var gegnerTTR2: UITextField!
    @IBOutlet weak var gegnerTTR3: UITextField!
    @IBOutlet weak var gegnerTTR4: UITextField!
    @IBOutlet weak var gegnerTTR5: UITextField!
    @IBOutlet weak var gegnerTTR6: UITextField!
    @IBOutlet weak var gegnerTTR7: UITextField!
    @IBOutlet weak var gegnerTTR8: UITextField!
    @IBOutlet weak var gegnerTTR9: UITextField!
    @IBOutlet weak var gegnerTTR10: UITextField!
    @IBOutlet weak var neuerMyTTR: UITextField!
    
    @IBOutlet weak var gegner1: UISegmentedControl!
    @IBOutlet weak var gegner2: UISegmentedControl!
    @IBOutlet weak var gegner3: UISegmentedControl!
    @IBOutlet weak var gegner4: UISegmentedControl!
    @IBOutlet weak var gegner5: UISegmentedControl!
    @IBOutlet weak var gegner6: UISegmentedControl!
    @IBOutlet weak var gegner7: UISegmentedControl!
    @IBOutlet weak var gegner8: UISegmentedControl!
    @IBOutlet weak var gegner9: UISegmentedControl!
    @IBOutlet weak var gegner10: UISegmentedControl!
    
    @IBOutlet weak var kleiner16: UISegmentedControl!
    @IBOutlet weak var kleiner21: UISegmentedControl!
    @IBOutlet weak var weniger30Spiele: UISegmentedControl!
    @IBOutlet weak var inaktiv: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.view.endEditing(true)
        
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Action
    

    @IBAction func berechneButton(_ sender: UIButton) {
        
        //MARK: Änderungskonstante bestimmen
        var aenderungskosntante = 16.0                  //Änderungskonstante wird mit 16 gesetzt (Standart)
        if kleiner16.selectedSegmentIndex == 0 {
            aenderungskosntante = aenderungskosntante + 4
        }
        if kleiner21.selectedSegmentIndex == 0 {
            aenderungskosntante = aenderungskosntante + 4
        }
        if weniger30Spiele.selectedSegmentIndex == 0 {
            aenderungskosntante = aenderungskosntante + 4
        }
        if inaktiv.selectedSegmentIndex == 0 {
            aenderungskosntante = aenderungskosntante + 4
        }
        
        if let myTTR1 = Double(myTTREingabe.text!){
            myTTR = Int(myTTR1)
        }
        
        if let gegnerTTR1 = Double(gegnerTTR1.text!){
            gegnerTTR[0] = Int(gegnerTTR1)
            if gegner1.selectedSegmentIndex == 0 {
                siegOderNiederlage[0] = 1
            }
            else{
                siegOderNiederlage[0] = 0
            }
            gegner = gegner + 1
            gegnerTTR[0] = Int(gegnerTTR1)
        }else{
            siegOderNiederlage[0] = 2
        }
        if let gegnerTTR2 = Double(gegnerTTR2.text!){
            print("Gegner 2: \(Int(gegnerTTR2))")
            if gegner2.selectedSegmentIndex == 0 {
                siegOderNiederlage[1] = 1
            }
            else{
                siegOderNiederlage[1] = 0
            }
            gegner = gegner + 1
            gegnerTTR[1] = Int(gegnerTTR2)
        }else{
            siegOderNiederlage[1] = 2
        }
        if let gegnerTTR3 = Double(gegnerTTR3.text!){
            print("Gegner 3: \(Int(gegnerTTR3))")
            if gegner3.selectedSegmentIndex == 0 {
                siegOderNiederlage[2] = 1
            }
            else{
                siegOderNiederlage[2] = 0
            }
            gegner = gegner + 1
            gegnerTTR[2] = Int(gegnerTTR3)
        }else{
            siegOderNiederlage[2] = 2
        }
        if let gegnerTTR4 = Double(gegnerTTR4.text!){
            print("Gegner 4: \(Int(gegnerTTR4))")
            if gegner4.selectedSegmentIndex == 0 {
                siegOderNiederlage[3] = 1
            }
            else{
                siegOderNiederlage[3] = 0
            }
            gegner = gegner + 1
            gegnerTTR[3] = Int(gegnerTTR4)
        }else{
            siegOderNiederlage[3] = 2
        }
        if let gegnerTTR5 = Double(gegnerTTR5.text!){
            print("Gegner 5: \(Int(gegnerTTR5))")
            if gegner5.selectedSegmentIndex == 0 {
                siegOderNiederlage[4] = 1
            }
            else{
                siegOderNiederlage[4] = 0
            }
            gegner = gegner + 1
            gegnerTTR[4] = Int(gegnerTTR5)
        }else{
            siegOderNiederlage[4] = 2
        }
        if let gegnerTTR6 = Double(gegnerTTR6.text!){
            print("Gegner 6: \(Int(gegnerTTR6))")
            if gegner6.selectedSegmentIndex == 0 {
                siegOderNiederlage[5] = 1
            }
            else{
                siegOderNiederlage[5] = 0
            }
            gegner = gegner + 1
            gegnerTTR[5] = Int(gegnerTTR6)
        }else{
            siegOderNiederlage[5] = 2
        }
        if let gegnerTTR7 = Double(gegnerTTR7.text!){
            print("Gegner 7: \(Int(gegnerTTR7))")
            if gegner7.selectedSegmentIndex == 0 {
                siegOderNiederlage[6] = 1
            }
            else{
                siegOderNiederlage[6] = 0
            }
            gegner = gegner + 1
            gegnerTTR[6] = Int(gegnerTTR7)
        }else{
            siegOderNiederlage[6] = 2
        }
        if let gegnerTTR8 = Double(gegnerTTR8.text!){
            print("Gegner 8: \(Int(gegnerTTR8))")
            if gegner8.selectedSegmentIndex == 0 {
                siegOderNiederlage[7] = 1
            }
            else{
                siegOderNiederlage[7] = 0
            }
            gegner = gegner + 1
            gegnerTTR[7] = Int(gegnerTTR8)
        }else{
            siegOderNiederlage[7] = 2
        }
        if let gegnerTTR9 = Double(gegnerTTR9.text!){
            print("Gegner 9: \(Int(gegnerTTR9))")
            if gegner9.selectedSegmentIndex == 0 {
                siegOderNiederlage[8] = 1
            }
            else{
                siegOderNiederlage[8] = 0
            }
            gegner = gegner + 1
            gegnerTTR[8] = Int(gegnerTTR9)
        }else{
            siegOderNiederlage[8] = 2
        }
        if let gegnerTTR10 = Double(gegnerTTR10.text!){
            print("Gegner 10: \(Int(gegnerTTR10))")
            if gegner10.selectedSegmentIndex == 0 {
                siegOderNiederlage[9] = 1
            }
            else{
                siegOderNiederlage[9] = 0
            }
            gegner = gegner + 1
            gegnerTTR[9] = Int(gegnerTTR10)
        }else{
            siegOderNiederlage[9] = 2
        }
        print("Anzahl an Gegnern: \(gegner)")
        
        print("\(siegOderNiederlage)")
        
        print("\(gegnerTTR)")
        
        print("\(aenderungskosntante)")
        
        var siege : Double = 0
        var wahrscheinlichkeit : Double = 0
        var neuerTTRWert : Double = 0
        for number in 1...10 {
            if siegOderNiederlage[number-1] == 1{
                siege = siege + 1
            }
            if gegnerTTR[number-1] != -1{
                wahrscheinlichkeit = wahrscheinlichkeit + (1/(1+(pow((Double(10)),(((Double(gegnerTTR[number-1]))-(Double(myTTR)))/150)))))
                print ("\(wahrscheinlichkeit)")
            }
        }
        neuerTTRWert = ((siege - wahrscheinlichkeit) * aenderungskosntante) + (Double(myTTR))
        neuerMyTTR.text = ("\(Int(neuerTTRWert))")
        
        
        
        /*
        //let teilrechnung1 : Double = (((Double(gegnerTTR[0]))-(Double(myTTR)))/150)
        let teilrechnung2 : Double = 1/(1+(pow((Double(10)),(((Double(gegnerTTR[0]))-(Double(myTTR)))/150))))
        
        if siegOderNiederlage[0] == 1{
            var gewinnVerlust : Double = (1.0-teilrechnung2) * aenderungskosntante
            print ("\(round(gewinnVerlust))")
            gewinnVerlust = (Double((Int(round(gewinnVerlust)))+myTTR))
            neuerMyTTR.text = ("\(Int(gewinnVerlust))")
        }else if siegOderNiederlage[0] == 0 {
            var gewinnVerlust : Double = (0.0-teilrechnung2) * aenderungskosntante
            gewinnVerlust = (Double((Int(gewinnVerlust))+myTTR))
            neuerMyTTR.text = ("\(Int(gewinnVerlust))")
        }
        */
        gegner = 0
        gegnerTTR = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
    }
}
