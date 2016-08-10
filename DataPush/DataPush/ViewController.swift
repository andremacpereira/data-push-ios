//
//  ViewController.swift
//  DataPush
//
//  Copyright © 2016. All rights reserved.
//



import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lbl_last_push_id: UILabel?
    @IBOutlet var lbl_last_push: UILabel?
    
    
    var lp = ""
    var lp_id = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if NSUserDefaults.standardUserDefaults().objectForKey("last_push") != nil{
            
            if NSUserDefaults.standardUserDefaults().objectForKey("last_push_id") != nil
                
            {
                
                // Get Last Push Info
                lp = NSUserDefaults.standardUserDefaults().objectForKey("last_push")
                    as! Swift.String
                
                lp_id = NSUserDefaults.standardUserDefaults().objectForKey("last_push_id")
                    as! Swift.String
                
                // Update Label Alert Text
                lbl_last_push?.text = lp
                
                // Update Label ID Text
                lbl_last_push_id?.text = "From = " + lp_id
            }
            
            
        }else
            
        {
            lbl_last_push?.text = "Nenhum Push para ser exibido."
            lbl_last_push_id?.text = "Nenhum ID"
        }
        
        
        
    }
    
    func updateLabels(id : String , alert : String)
        
    {
        
        // Update Label ID Text
        
        lbl_last_push_id?.text = "ID = " + id;
        
        // Update Label Alert Text
        
        lbl_last_push?.text = alert
        
        // Simple alert dialog
        
        let alert=UIAlertController(title: "Último Push Registrado", message: alert, preferredStyle: UIAlertControllerStyle.Alert);
        
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        
        // Show it
        showViewController(alert, sender: self);
        
    }
    
    
}