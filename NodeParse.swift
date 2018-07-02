//
//  CompanyMeals.swift
//  MealDesigner
//
//  Created by gozdebal on 17/05/2017.
//  Copyright © 2017 Gozde Bal. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class CompanyMeals : NSObject {

    var MealActive: Int64 = 0
    var MealCaloryArray = [Double] ()
    var MealCarbArray = [Double] ()
    var MealCompanyID: Int64 = 0
    var MealCompanyName: String?
    var MealDateTime: String?
    var MealEditableStatus: Int64 = 0
    var MealFatArray = [Double] ()
    var MealID: Int64 = 0
    var MealIngredientArray = [String] ()
    var MealIngredientName: String?
    var MealName: String?
    var MealProteinArray = [Double] ()
    var MealQuantityArray = [String] ()
    var MealTotalCalory: Int64 = 0
    var MealTotalCarbs: Int64 = 0
    var MealTotalFat: Int64 = 0
    var MealTotalProtein: Int64 = 0
    let ref: FIRDatabaseReference?
    
    init (MealActive: Int64, MealCaloryArray: [Double], MealCarbArray: [Double], MealCompanyID: Int64, MealCompanyName: String, MealDateTime: String, MealEditableStatus: Int64, MealFatArray: [Double], MealID: Int64, MealIngredientArray: [String], MealIngredientName: String, MealName: String, MealProteinArray: [Double], MealQuantityArray: [String], MealTotalCalory: Int64, MealTotalCarbs: Int64, MealTotalFat: Int64, MealTotalProtein: Int64) {
        
            self.MealActive = MealActive
            self.MealCaloryArray = MealCaloryArray
            self.MealCarbArray = MealCarbArray
            self.MealCompanyID = MealCompanyID
            self.MealCompanyName = MealCompanyName
            self.MealDateTime = MealDateTime
            self.MealEditableStatus = MealEditableStatus
            self.MealFatArray = MealFatArray
            self.MealID = MealID
            self.MealIngredientArray = MealIngredientArray
            self.MealIngredientName = MealIngredientName
            self.MealName = MealName
            self.MealProteinArray = MealProteinArray
            self.MealQuantityArray = MealQuantityArray
            self.MealTotalCalory = MealTotalCalory
            self.MealTotalCarbs = MealTotalCarbs
            self.MealTotalFat = MealTotalFat
            self.MealTotalProtein = MealTotalProtein
            self.ref = nil
    }
    
    init(snapshot: FIRDataSnapshot) {
        
        if let MealActive1 = (snapshot.value! as? NSDictionary)?["MealActive"] as? Int64 {
            MealActive = MealActive1
        }
        
        if let MealCaloryArray1 = (snapshot.value! as? NSDictionary)?["MealCaloryArray"] as? [Double] {
            MealCaloryArray = MealCaloryArray1
        }
        
        if let MealCarbArray1 = (snapshot.value! as? NSDictionary)?["MealCarbArray"] as? [Double] {
            MealCarbArray = MealCarbArray1
        }
        
        if let MealCompanyID1 = (snapshot.value! as? NSDictionary)?["MealCompanyID"] as? Int64 {
            MealCompanyID = MealCompanyID1
        }
        
        if let MealCompanyName1 = (snapshot.value! as? NSDictionary)?["MealCompanyName"] as? String {
            MealCompanyName = MealCompanyName1
        }
        
        if let MealDateTime1 = (snapshot.value! as? NSDictionary)?["MealDateTime"] as? String {
            MealDateTime = MealDateTime1
        }

        if let MealEditableStatus1 = (snapshot.value! as? NSDictionary)?["MealEditableStatus"] as? Int64 {
            MealEditableStatus = MealEditableStatus1
        }
        
        if let MealFatArray1 = (snapshot.value! as? NSDictionary)?["MealFatArray"] as? [Double] {
            MealFatArray = MealFatArray1
        }
        
        if let MealID1 = (snapshot.value! as? NSDictionary)?["MealID"] as? Int64 {
            MealID = MealID1
        }

        if let MealIngredientArray1 = (snapshot.value! as? NSDictionary)?["MealIngredientArray"] as? [String] {
            MealIngredientArray = MealIngredientArray1
        }
        
        if let MealIngredientName1 = (snapshot.value! as? NSDictionary)?["MealIngredientName"] as? String {
            MealIngredientName = MealIngredientName1
        }

        if let MealName1 = (snapshot.value! as? NSDictionary)?["MealName"] as? String {
            MealName = MealName1
        }
        
        if let MealProteinArray1 = (snapshot.value! as? NSDictionary)?["MealProteinArray"] as? [Double] {
            MealProteinArray  = MealProteinArray1
        }
        
        if let MealQuantityArray1 = (snapshot.value! as? NSDictionary)?["MealQuantityArray"] as? [String] {
            MealQuantityArray = MealQuantityArray1
        }
        
        if let MealTotalCalory1 = (snapshot.value! as? NSDictionary)?["MealTotalCalory"] as? Int64{
            MealTotalCalory = MealTotalCalory1
        }
        
        if let MealTotalCarbs1 = (snapshot.value! as? NSDictionary)?["MealTotalCarbs"] as? Int64 {
            MealTotalCarbs = MealTotalCarbs1
        }
        
        if let MealTotalFat1 = (snapshot.value! as? NSDictionary)?["MealTotalFat"] as? Int64 {
            MealTotalFat = MealTotalFat1
        }
        
        if let MealTotalProtein1 = (snapshot.value! as? NSDictionary)?["MealTotalProtein"] as? Int64 {
            MealTotalProtein = MealTotalProtein1
        }

        ref = snapshot.ref
        //key = snapshot.key
        
    }
    
    func toAnyObject() -> AnyObject {
        
        var compMeal = [String : Any]()
        
        compMeal["MealActive"] = self.MealActive as AnyObject?
        compMeal["MealCaloryArray"] = self.MealCaloryArray as AnyObject?
        compMeal["MealCarbArray"] = self.MealCarbArray as AnyObject?
        compMeal["MealCompanyID"] = self.MealCompanyID as AnyObject?
        compMeal["MealCompanyName"] = self.MealCompanyName as AnyObject?
        compMeal["MealDateTime"] = self.MealDateTime as AnyObject?
        compMeal["MealEditableStatus"] = self.MealEditableStatus as AnyObject?
        compMeal["MealFatArray"] = self.MealFatArray as AnyObject?
        compMeal["MealID"] = self.MealID as AnyObject?
        compMeal["MealIngredientArray"] = self.MealIngredientArray as AnyObject?
        compMeal["MealIngredientName"] = self.MealIngredientName as AnyObject?
        compMeal["MealName"] = self.MealName as AnyObject?
        compMeal["MealQuantityArray"] = self.MealQuantityArray as AnyObject?
        compMeal["MealTotalCalory"] = self.MealTotalCalory as AnyObject?
        compMeal["MealTotalCarbs"] = self.MealTotalCarbs as AnyObject?
        compMeal["MealTotalFat"] = self.MealTotalFat as AnyObject?
        compMeal["MealTotalProtein"] = self.MealTotalProtein as AnyObject?

        return compMeal as AnyObject
        
    }
    
    convenience override init() {
        
        self.init (MealActive: 0, MealCaloryArray: [] , MealCarbArray: [], MealCompanyID: 0, MealCompanyName: "", MealDateTime: "", MealEditableStatus: 0, MealFatArray: [], MealID: 0, MealIngredientArray: [], MealIngredientName: "", MealName: "", MealProteinArray: [], MealQuantityArray: [], MealTotalCalory: 0, MealTotalCarbs: 0, MealTotalFat: 0, MealTotalProtein: 0)
    }

}

