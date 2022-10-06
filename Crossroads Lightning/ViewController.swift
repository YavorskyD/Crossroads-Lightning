//
//  ViewController.swift
//  Crossroads Lightning
//
//  Created by Yavorsky on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {
	enum CurrentLight{
		case red, yellow, green
	}

	@IBOutlet weak var stackLightning: UIStackView!
	
	@IBOutlet weak var firstLight: UIView!
	
	@IBOutlet weak var secondLight: UIView!
	
	@IBOutlet weak var thirdLight: UIView!
	
	@IBOutlet weak var buttonLight: UIButton!
	
	private var currentLight = CurrentLight.red
	private let activeValue: CGFloat = 1
	private let deactiveValue: CGFloat = 0.3
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		
		
		view.backgroundColor = .black
		
		buttonLight.layer.cornerRadius = 10
		
		firstLight.layer.cornerRadius = firstLight.frame.width/2
		secondLight.layer.cornerRadius = secondLight.frame.width/2
		thirdLight.layer.cornerRadius = thirdLight.frame.width/2
		
		firstLight.alpha = deactiveValue
		secondLight.alpha = deactiveValue
		thirdLight.alpha = deactiveValue
	}
	override func viewDidLayoutSubviews() {
		
	

		
	}
	@IBAction func changeColorBtn() {
	
		buttonLight.setTitle("Next", for: .normal)
		
		switch currentLight {
			
		case .red:
			firstLight.alpha = activeValue
			currentLight = .yellow
			thirdLight.alpha = deactiveValue
			
		case .yellow:
			firstLight.alpha = deactiveValue
			secondLight.alpha = activeValue
			currentLight = .green
			
		case .green:
			currentLight = .red
			secondLight.alpha = deactiveValue
			thirdLight.alpha = activeValue
		}
	 
	}
	}
