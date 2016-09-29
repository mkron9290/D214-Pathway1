//
//  MyScheduleNLC.swift
//  D214 Pathway
//
//  Created by entre on 2/9/16.
//  Copyright © 2016 entre. All rights reserved.
//

import UIKit
import Foundation
import MessageUI
import CoreData

class MyScheduleNLC: UIViewController, UITableViewDelegate, UITableViewDataSource, MFMailComposeViewControllerDelegate
{
    
    @IBOutlet weak var publish: UIBarButtonItem!
    @IBOutlet weak var tableViewNLC: UITableView!
    
    var dreamSchedule: [Classes] = []
    var activityViewController: UIActivityViewController!
    var selectedClass: String!
    var appDel: AppDelegate!
    var email: String = "Abusiel9085@stu.d214.org"
    
    //    var coreDataDreamScheduleArray: [Classes] = []
    //    var selectedClass: [String] = []
    //    var action: Selector = Selector("")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print(selectedClass)
        print(dreamSchedule)
        saveData()
        
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let request = NSFetchRequest(entityName: "Classes")
        var results: [AnyObject]?
        
        do {
            results = try context.executeFetchRequest(request)
        } catch {
            results = nil
        }
        
        if results != nil {
            dreamSchedule = results as! [Classes]
        }
        
        //self.navigationItem.setRightBarButtonItem(UIBarButtonItem(barButtonSystemItem: .Action, target: self, action: Selector("barButtonItemClicked:")), animated: true)
        
        //saveData()
        
        self.tableViewNLC.separatorStyle = UITableViewCellSeparatorStyle.None
        self.tableViewNLC.reloadData()
    }
    
    @IBAction func actionButton(sender: UIBarButtonItem)
    {
        let activity = UIActivityViewController(activityItems: [selectedClass], applicationActivities: nil)
        presentViewController(activity, animated: true, completion: nil)
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return dreamSchedule.count
        //        return selectedClass.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableViewNLC.dequeueReusableCellWithIdentifier("classCell") as! NLCTableViewCell
        cell.textLabel?.text = dreamSchedule[indexPath.row].classSelected
        
        return cell
    }
    
    var valueToPass:String!
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        print("Row \(selectedClass) selected")
        //        print("You selected cell #\(indexPath.row)!")
        
        // Get Cell Label
        //        let indexPath = tableView.indexPathForSelectedRow!;
        //        let currentCell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell!;
        //
        //        valueToPass = currentCell.textLabel!.text
        //        performSegueWithIdentifier("testSegue", sender: self)
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    //
    //        if (segue.identifier == "testSegue") {
    //
    //            // initialize new view controller and cast it as your view controller
    //            let viewController = segue.destinationViewController as! TableViewController
    //            // your new view controller should have property that will store passed value
    ////            viewController.selectedButton = valueToPass
    //        }
    //
    //    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
            let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
            
            let appDele = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
            context.deleteObject(dreamSchedule[indexPath.row] as NSManagedObject)
            dreamSchedule.removeAtIndex(indexPath.row)
            
            do {
                try context.save()
            } catch {
            }
            
            self.tableViewNLC.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            tableViewNLC.reloadData()
            
        }
    }
    
    
    func saveData() {
        
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let request = NSFetchRequest(entityName: "Classes")
        var result: [AnyObject]?
        let newClass = NSEntityDescription.insertNewObjectForEntityForName("Classes", inManagedObjectContext: context) as! Classes
        print(selectedClass)
        newClass.classSelected = selectedClass
        print(newClass.classSelected)
        print(dreamSchedule)
        //dreamSchedule.append(newClass.classSelected as! Classes)
        
        do {
            try context.save()
        } catch {
        }
        
        do {
            result = try context.executeFetchRequest(request)
        } catch {
            result = nil
        }
        
        if result != nil {
            dreamSchedule = result as! [Classes]
        }
        tableViewNLC.reloadData()
        
    }
    
    @IBAction func publishAction(sender: UIBarButtonItem) {
        
        savePhoto()
        sendMail()
        
    }
    
    //Force screenshot and save
    func savePhoto() {
        
        //Create image
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.renderInContext(UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        //Save it to the camera roll
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        
    }
    
    //sending mail
    
    func sendMail() {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC: MFMailComposeViewController = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients([email])
        
        mailComposerVC.setSubject("Dream Schedule")
        mailComposerVC.setMessageBody("Here is my dream schedule", isHTML: false)
        
        //add image to email
        //mailComposerVC.addAttachmentData(NSData, mimeType: String, fileName: String)
        
        return mailComposerVC
    }
    
    //if email failed
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    
    //when finished
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
}





