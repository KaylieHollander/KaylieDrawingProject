//
//  ArtCollectionViewController.swift
//  KaylieDrawingProject
//
//  Created by Hollander, Kaylie on 11/7/18.
//  Copyright © 2018 Hollander, Kaylie. All rights reserved.
//

import UIKit

private let reuseIdentifier = "artIdentifier"

public class ArtCollectionViewController: UICollectionViewController {

    //MARK: Data members for Creativity Screen
    
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRowCompact : CGFloat = 4
    private let itemsPerRowNormal : CGFloat = 6
    
    private let creativeCS : [UIImage?] =
    {
        return [
            UIImage(named: "AndromedaGalaxy"),
            UIImage(named: "FredtheDragon"),
            UIImage(named: "IOSArt"),
            UIImage(named: "JavaHaiku"),
            UIImage(named: "KaylieHollanderOctoCat"),
            UIImage(named: "Llama"),
            UIImage(named: "MainframeHaiku"),
            UIImage(named: "SombreroChicken"),
            UIImage(named: "TheShire"),
            UIImage(named: "TechNews")
        ]
        
        
    }()
    
    private let labels : [String] =
    {
        return [
            "Andromeda Galaxy",
            "Fred The Dragon",
            "IOS Art",
            "Java Haiku",
            "Kaylie Hollander OctoCat",
            "Llama",
            "Mainframe Haiku",
            "Sombrero Chicken",
            "The Shire",
            "TechNews"
        ]
        
    }()
    
    
    //MARK: - Lifecycle
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    public override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of items
        return creativeCS.count
    }

    public override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        
        
        artCell.backgroundColor = .purple
        artCell.artImage.image = creativeCS[indexPath.row]
        artCell.artLabel.text = labels[indexPath.row]
        // Configure the cell
    
        return artCell
    }

    // MARK: UICollectionViewDelegate
    
    
    public func collecionView(_ collectionView: UICollectionView,
                              layout collectionViewLayout: UICollectionViewLayout,
                              sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let paddingSpace = sectionInsets.left * (itemsPerRowCompact + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRowCompact
        
        return CGSize(width : widthPerItem, height: widthPerItem)
    }
    
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               insetForSetionAt section: Int) -> UIEdgeInsets
    {
        return sectionInsets
    }
    
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               minimumLineSpacingForSectionAt section: Int)  -> CGFloat
    {
        return sectionInsets.left
    }
    
    

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
