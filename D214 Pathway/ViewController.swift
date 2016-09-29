//
//  ViewController.swift
//  D214 Pathway
//
//  Created by entre on 12/7/15.
//  Copyright © 2015 entre. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    var buttonArray = [String]()
    
    var imagesArray = [String]()
    
    var selectedButton = ""
    
    var screenWidth = (Float)(UIScreen.mainScreen().bounds.width)
    
    var screenHeight = (Float)(UIScreen.mainScreen().bounds.height)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.collectionView!.backgroundColor = UIColor(patternImage: UIImage(named: "BG")!)
        
        buttonArray = ["Agriculture, Food and Natural Resources", "Business Management and Administration", "Finance", "Government and Public Administration", "Marketing", "Education and Training", "Hospitality and Tourism", "Human Services", "Health Science", "Architecture and Construction", "Arts, Audio/Video Technology and Communications", "Information Technology", "Law Enforcement Services/Correction Services", "Manufacturing", "Science, Technology, Engineering and Mathematics", "Transportation, Distribution and Logistics"]
        
        imagesArray = ["Agriculture", "architecture and construction", "ArtsAudioAndVideoTechAndComms", "businessmanagement", "educationandtraining", "finance", "governnmentandpublicadministration", "health science", "hospitalityandtourism", "humanservices", "it", "lawpublicsafetycorrections andsecurity", "manufacturing", "marketing copy", "scienceengineeringmath", "transportationetc"]
        
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
                return imagesArray.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCell", forIndexPath: indexPath)
      
        let imageView = cell.viewWithTag(3) as! UIImageView
        imageView.image = UIImage(named: imagesArray[indexPath.row])
        
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        
        if((indexPath.row) == 0) {
            self.performSegueWithIdentifier("testSegue", sender: "agricultureFoodAndNaturalResourcesClasses")
        }
        else if((indexPath.row) == 1) {
            self.performSegueWithIdentifier("testSegue", sender: "architectureAndConstructionClasses")
        }
        else if((indexPath.row) == 2) {
            self.performSegueWithIdentifier("testSegue", sender: "artsAudioVideoTechnologyAndCommunicationsClasses")
        }
        else if((indexPath.row) == 3) {
            self.performSegueWithIdentifier("testSegue", sender: "businessClasses")
        }
        else if((indexPath.row) == 4) {
            self.performSegueWithIdentifier("testSegue", sender: "educationAndTrainingClasses")
        }
        else if((indexPath.row) == 5) {
            self.performSegueWithIdentifier("testSegue", sender: "financeClasses")
        }
        else if((indexPath.row) == 6) {
            self.performSegueWithIdentifier("testSegue", sender: "governmentAndPublicAdministrationClasses")
        }
        else if((indexPath.row) == 7) {
            self.performSegueWithIdentifier("testSegue", sender: "healthClasses")
        }
        else if((indexPath.row) == 8) {
            self.performSegueWithIdentifier("testSegue", sender: "restaurantAndFoodBeveragesClasses")
        }
        else if((indexPath.row) == 9) {
            self.performSegueWithIdentifier("testSegue", sender: "humanServicesClasses")
        }
        else if((indexPath.row) == 10) {
            self.performSegueWithIdentifier("testSegue", sender: "technologyClasses")
        }
        else if((indexPath.row) == 11) {
            self.performSegueWithIdentifier("testSegue", sender: "lawEnforcementServicesCorrectionServicesClasses")
        }
        else if((indexPath.row) == 12) {
            self.performSegueWithIdentifier("testSegue", sender: "manufacturingClasses")
        }
        else if((indexPath.row) == 13) {
            self.performSegueWithIdentifier("testSegue", sender: "marketingClasses")
        }
        else if((indexPath.row) == 14) {
            self.performSegueWithIdentifier("testSegue", sender: "scienceTechnologyEngineeringAndMathematicsClasses")
        }
        else if((indexPath.row) == 15) {
            self.performSegueWithIdentifier("testSegue", sender: "transportationDistributionAndLogisticsClasses")
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if let segue = segue.destinationViewController as? TableViewController
        {
            if let pathway = sender as? String
            {
                segue.selectedPathway = pathway
            }
        }
        
    }
    
}
