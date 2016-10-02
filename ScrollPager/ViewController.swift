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
	@IBOutlet var thirdScrollPager: ScrollPager!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let firstView = UILabel()
		firstView.backgroundColor = UIColor.white
		firstView.text = "first View"
		firstView.textAlignment = .center
		
		let secondView = UILabel()
		secondView.backgroundColor = UIColor.white
		secondView.text = "second view"
		secondView.textAlignment = .center
		
		let thirdView = UILabel()
		thirdView.backgroundColor = UIColor.white
		thirdView.text = "third view"
		thirdView.textAlignment = .center
		
		let fourthView = UILabel()
		fourthView.backgroundColor = UIColor.white
		fourthView.text = "fourth view"
		fourthView.textAlignment = .center
		
		scrollPager.delegate = self
		scrollPager.addSegmentsWithTitlesAndViews(segments: [
			("Home", firstView),
			("Public Feed", secondView),
			("Profile", thirdView),
			("One More", fourthView)
			])
		
		secondScrollPager.addSegmentsWithImages(segmentImages: [
			UIImage(named: "envelope")!,
			UIImage(named: "home")!,
			UIImage(named: "like")!,
			UIImage(named: "message")!,
			UIImage(named: "notes")!
			])
		
		thirdScrollPager.addSegmentsWithTitles([
			"Family",
			"Friends",
			"Colleagues"
			])
	}
	
	// MARK: - ScrollPagerDelegate -
	
	func scrollPager(scrollPager: ScrollPager, changedIndex: Int) {
		print("scrollPager index changed: \(changedIndex)")
	}

}

