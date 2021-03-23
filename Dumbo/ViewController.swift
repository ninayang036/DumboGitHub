//
//  ViewController.swift
//  Dumbo
//
//  Created by Yang Nina on 2021/3/22.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet
    @IBOutlet weak var bodyImageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var Random: UIButton!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var alphaSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 預設值
        bodyImageView.clipsToBounds = true
        bodyImageView.layer.cornerRadius = 16
        Random.layer.cornerRadius = 5
    }
    //IBAction
    //Slider & Label
    @IBAction func changeColor(_ sender: Any) {
        bodyImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
    }
    //Switch
    @IBAction func switchColor(_ sender: Any) {
        if redSwitch.isOn{
            redSlider.isEnabled = true
            redSlider.minimumTrackTintColor = UIColor.systemRed
        }
        else{
            redSlider.isEnabled = false
            redSlider.minimumTrackTintColor = UIColor.gray
        }
        if greenSwitch.isOn{
            greenSlider.isEnabled = true
            greenSlider.minimumTrackTintColor = UIColor.systemGreen
        }
        else{
            greenSlider.isEnabled = false
            greenSlider.minimumTrackTintColor = UIColor.systemGray
        }
        if blueSwitch.isOn{
            blueSlider.isEnabled = true
            blueSlider.minimumTrackTintColor = UIColor.systemBlue
        }
        else{
            blueSlider.isEnabled = false
            blueSlider.minimumTrackTintColor = UIColor.systemGray
        }
        if alphaSwitch.isOn{
            alphaSlider.isEnabled = true
            alphaSlider.minimumTrackTintColor = UIColor.darkGray
        }
        else{
            alphaSlider.isEnabled = false
            alphaSlider.minimumTrackTintColor = UIColor.systemGray
        }
        //Switch都打開,才可以按Random
        if redSwitch.isOn, greenSwitch.isOn, blueSwitch.isOn, alphaSwitch.isOn{
            Random.isEnabled = true
        }
        else{
            Random.isEnabled = false
        }
    }
    //隨機
    @IBAction func randomColor(_ sender: Any) {
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        bodyImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
    }
}

