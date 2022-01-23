//
//  

import UIKit
import AVKit

class WelcomeVC: UIViewController {
  
  // MARK: - Properties
  
  var videoPlayer:AVPlayer?
  
  var videoPlayerLayer:AVPlayerLayer?
  
  
  
  // MARK: - IBOutlets
  
  @IBOutlet weak var signUpButton: UIButton!
  
  @IBOutlet weak var loginButton: UIButton!
  
  
  
  // MARK: - View controller lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    navigationItem.backButtonTitle = ""
    setUpElements()
    
    navigationItem.backButtonTitle = ""
    
    overrideUserInterfaceStyle = .light
    navigationItem.setHidesBackButton(true, animated: true)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    
    // Set up video in the background
    setUpVideo()
  }
  
  
  
  // MARK: - Methods
  
  func setUpElements() {
    Utilities.styleFilledButton(signUpButton)
    Utilities.styleHollowButton(loginButton)
    
  }
  
  func setUpVideo() {
    
    // Get the path to the resource in the bundle
    let bundlePath = Bundle.main.path(forResource: "loginbg", ofType: "mp4")
    
    guard bundlePath != nil else {
      return
    }
    
    // Create a URL from it
    let url = URL(fileURLWithPath: bundlePath!)
    
    // Create the video player item
    let item = AVPlayerItem(url: url)
    
    // Create the player
    videoPlayer = AVPlayer(playerItem: item)
    
    // Create the layer
    videoPlayerLayer = AVPlayerLayer(player: videoPlayer!)
    
    // Adjust the size and frame
    videoPlayerLayer?.frame = CGRect(x: -self.view.frame.size.width*1.5, y: 0, width: self.view.frame.size.width*4, height: self.view.frame.size.height)
    
    view.layer.insertSublayer(videoPlayerLayer!, at: 0)
    
    // Add it to the view and play it
    videoPlayer?.playImmediately(atRate: 0.3)
  }
  
  
}

