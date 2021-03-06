//
//  TableViewController.swift
//  D214 Career Pathways
//
//  Created by entre on 12/1/15.
//  Copyright © 2015 entre. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    var tableArray = [String]()
    var buttonArray = [String]()
    
    var selectedButton = ""
    
    var selectedPathway = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if selectedPathway == "agricultureFoodAndNaturalResourcesClasses"
        {
            self.navigationItem.title = "Agriculture Food and Natural Resources Classes"
            self.tableArray = ["PLTW Introduction to Engineering Design", "PLTW Civil Engineering and Architecture", "Entrepreneurship/incubatoredu", "Foods 1-2", "Culinary Arts/ProStart 1-2", "College Speech Communication", "AP Physics", "AP Chemistry", "AP Calculus", "AP Statistics", "AP Environmental Science", "AP Biology", "Zoology"]
        }
        else if selectedPathway == "architectureAndConstructionClasses"
        {
            self.navigationItem.title = "Architecture and Construction Classes"
            self.tableArray = ["PLTW Engineering Design and Development", "PLTW Civil Engineering and Architecture", "PLTW Principals of Engineering Design", "Art 1", "Entrepreneurship/incubatoredu", "Graphic Art Design", "Woodworking 1-2", "Drafting/CAD", "Practical Architectural Construction - PAC", "Introduction to Business", "College Speech Communication", "AP Art History", "AP Calculus"]
        }
        else if selectedPathway == "artsAudioVideoTechnologyAndCommunicationsClasses"
        {
            self.navigationItem.title = " Arts, Audio, Video, Technology and Communications Classes"
            self.tableArray = ["Media Technology 1-4", "College Speech Communication", "Creative Writing", "English Literature and Composition", "Journalism 1-8", "Spanish", "French", "Italian", "Yearbook 1-8", "Advanced Graphic Arts", "Computer Programming", "Art 1", "Advanced 2-D Art Studio", "Advanced 3-D Art Studio", "District Internship", "AP Studio Art 3-D Design", "AP Studio Art 2-D Design", "AP Art History", "Art Imaging 1-2", "Photography 1-3",  "Advanced Photography Studio", "Graphic Arts Design", "Graphic Arts Technology 1-4", "Woodworking 1-2", "Advanced Theater Workshop", "Harmony and Arranging 1-2", "AP Music Theory", "Orchestra Winds and Percussion", "Teacher Internship", "Vocal Ensemble", "Beginning Mixed Choir", "Treble Choir", "Advanced Mixed Choir", "Orchesis", "Guitar 1-2", "Dance 1-3", "Acting 1-2", "Orchestra", "Concert Orchestra", "Beginning Strings", "String Ensemble", "Concert Band", "Jazz Band", "Instrumental Ensemble"]
        }
        else if selectedPathway == "businessClasses"
        {
            self.navigationItem.title = "Business Classes"
            self.tableArray = ["Introduction to Business", "Entrepreneurship/incubatoredu", "Honors College Business", "Honors College Accounting", "AP Economics"]
        }
        else if selectedPathway == "educationAndTrainingClasses"
        {
            self.navigationItem.title = "Education and Training Classes"
            self.tableArray = ["Human Growth and Child Development", "Practicum in Early Childhood Education 1-4", "Teacher Internship", "College Introduction to Early Childhood Education", "Education Academy", "Entrepreneurship/incubatoredu", "Introduction to Business", "College Speech Communication", "College Introduction to Education", "AP Psychology", "Spanish", "French", "Italian", "AP Coursework in Curriculum"]
        }
        else if selectedPathway == "financeClasses"
        {
            self.navigationItem.title = "Finance Classes"
            self.tableArray = ["Introduction to Business", "Entrepreneurship/incubatoredu", "Honors College Accounting", "Honors College Business", "College Speech Communication", "AP Economics", "AP Calculus", "AP Computer Science", "AP Statistics"]
        }
        else if selectedPathway == "governmentAndPublicAdministrationClasses"
        {
            self.navigationItem.title = "Government and Public Administration Classes"
            self.tableArray = ["Introduction to Business", "College Speech Communication", "Naval Science (NJROTC)", "Spanish", "French", "Italian", "Honors College Accounting", "AP European History", "AP Psychology", "AP Government",]
        }
        else if selectedPathway == "healthClasses"
        {
            self.navigationItem.title = "Health Classes"
            self.tableArray = ["Introduction to Healthcare Field", "Medical Terminology", "Nursing Assistant Training", "Medical Science Academy", "College Speech Communication", "Health Occupations Career Observation (Harper)", "Human Physiology", "AP Biology", "AP Chemistry", "AP Psychology"]
        }
        else if selectedPathway == "restaurantAndFoodBeveragesClasses"
        {
            self.navigationItem.title = "Restaurant and Food Beverages Classes"
            self.tableArray = ["Foods 1-2", "Culinary Arts/ProStart 1-2", "Entrepreneurship/incubatoredu", "Introduction to Business", "District Internship", "College Speech Communication"]
        }
        else if selectedPathway == "humanServicesClasses"
        {
            self.navigationItem.title = "Human Services Classes"
            self.tableArray = ["Human Growth and Child Development", "Personal Training Certification", "Advanced Strength and Conditioning", "Sociology",  "Sociology of Service Learning", "Human Physiology", "College Speech Communication", "Small Business Management", "Cosmetology", "AP Biology", "AP Psychology"]
        }
        else if selectedPathway == "technologyClasses"
        {
            self.navigationItem.title = "Technology Classes"
            self.tableArray = ["Computer Programming", "AP Computer Science Principles", "Graphic Art Design", "Computer Repair A Certification", "AP Computer Science", "Advanced Concepts in Coding and Development", "CISCO Networking Basics", "CISCO Routers and Routering Basics", "Advanced Network Systems and Cybersecurity", "College Speech Communication", "Robotics", "AP Calculus", "AP Chemistry", "AP Physics", "AP Statistics"]
        }
        else if selectedPathway == "lawEnforcementServicesCorrectionServicesClasses" {
            self.navigationItem.title = "Law Enforcement Services and Correction Services Classes"
            self.tableArray = ["Law and Individual", "American Law", "Introduction to Fire Science(Harper College)", "Fire Behavior and Combustion(Harper College)", "College Speech Communication", "Naval Science (NJROTC)", "Sociology of Service Learning", "Introduction to Criminal Justice(Harper College)", "Introduction to Corrections(Harper College)", "Sociology", "AP Government", "AP Psychology"]
        }
        else if selectedPathway == "manufacturingClasses"
        {
            self.navigationItem.title = "Manufacturing Classes"
            self.tableArray = ["Fashion Design", "Fashion Construction", "Fashion Merchandising", "PLTW Introduction to Engineering Design", "PLTW Computer Integrated Manufacturing", "Advanced Machine Technology", "Advanced CNC Manufacturing", "Drafting/CAD", "Robotics", "Woodworking 1-2", "College Speech Communication"]
        }
        else if selectedPathway == "marketingClasses"
        {
            self.navigationItem.title = "Marketing Classes"
            self.tableArray = ["Introduction to Business", "Entrepreneurship/incubatoredu", "College Speech Communication", "Graphic Art Design", "Sports and Entertainment Marketing", "Honors College Business", "Honors College Accounting", "AP Calculus", "AP Economics", "AP Statistics"]
        }
        else if selectedPathway == "scienceTechnologyEngineeringAndMathematicsClasses"
        {
            self.navigationItem.title = "Science, Technology, Engineering and Mathematics Classes"
            self.tableArray = ["PLTW Introduction to Engineering Design", "PLTW Civil Engineering and Architecture", "PLTW Aerospace Engineering", "PLTW Computer Integrated Manufacturing", "PLTW Digital Electronics", "PLTW Principles of Engineering", "Advanced Machine Technology", "College Speech Communication", "Computer Programming", "Drafting/CAD", "Robotics", "Introduction to Nanotechnology",  "AP Calculus", "AP Biology", "AP Chemistry", "AP Environmental Science", "AP Statistics", "AP Economics", "AP European History", "AP Psychology", "AP US Government", "AP Physics"]
        }
        else if selectedPathway == "transportationDistributionAndLogisticsClasses" {
            self.navigationItem.title = "Transportation, Distribution and Logistics Classes"
            self.tableArray = ["Automotive Systems", "Diagnostic and Testing", "Vocational Automotive", "Power-On-Site Training", "Advanced Machine Technology", "PLTW Introduction to Engineering Design", "Heating Principles(Harper College)", "Heating and Cooling Controls(Harper College)", "Refrigeration Systems(Harper College)", "PLTW Civil Engineering and Architecture", "College Speech Communication"]
        }
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None

        self.tableView.reloadData()
        
    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        
       return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {

        return tableArray.count
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let tableViewCell = self.tableView.dequeueReusableCellWithIdentifier("TableViewCell", forIndexPath: indexPath)
        
        tableViewCell.textLabel?.text = tableArray[indexPath.row]
        tableViewCell.textLabel?.font = UIFont(name: "Futura", size: 40)
        
        return tableViewCell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let nvc = segue.destinationViewController as! DetailViewController
        let indexPath = tableView.indexPathForSelectedRow
        nvc.selectedClass = tableArray[(indexPath?.row)!]
    }
    
}
