//
//  ViewController.swift
//  ScrollPager
//
//  Created by Aryan Ghassemi on 2/22/15.
//  Copyright (c) 2015 Aryan Ghassemi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ScrollPagerDelegate {

	@IBOutlet var scrollPager: ScrollPager!
	@IBOutlet var secondScrollPager: ScrollPager!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let firstView = UILabel()
		firstView.backgroundColor = UIColor.whiteColor()
		firstView.text = "first View"
		firstView.textAlignment = .Center
		
		let secondView = UILabel()
		secondView.backgroundColor = UIColor.whiteColor()
		secondView.text = "second view"
		secondView.textAlignment = .Center
		
		let thirdView = UILabel()
		thirdView.backgroundColor = UIColor.whiteColor()
		thirdView.text = "third view"
		thirdView.textAlignment = .Center
		
		let fourthView = UILabel()
		fourthView.backgroundColor = UIColor.whiteColor()
		fourthView.text = "fourth view"
		fourthView.textAlignment = .Center
		
		scrollPager.delegate = self
		scrollPager.addSegmentsWithTitlesAndViews([
			("Home", firstView),
			("Public Feed", secondView),
			("Profile", thirdView),
			("One More", fourthView)
			])
		
		secondScrollPager.addSegmentsWithImages([
			UIImage(named: "envelope")!,
			UIImage(named: "home")!,
			UIImage(named: "like")!,
			UIImage(named: "message")!,
			UIImage(named: "notes")!
			])
	}
	
	// MARK: - ScrollPagerDelegate -
	
	func scrollPager(scrollPager: ScrollPager, changedIndex: Int) {
		print("scrollPager index changed: \(changedIndex)")
	}

}

