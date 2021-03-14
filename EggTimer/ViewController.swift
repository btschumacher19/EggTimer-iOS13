import UIKit

class ViewController: UIViewController {

    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    @IBOutlet weak var gggTitle: UILabel!
    @IBOutlet weak var myTimerBar: UIProgressView!
    
    var totalTime = 0
    var secondsPassed = 0
    
    var timer = Timer()

    @IBAction func buttonPressed(_ sender: UIButton) {
        timer.invalidate()
        myTimerBar.progress = 0.0
        secondsPassed = 0
        let hardness = sender.currentTitle!
        gggTitle.text = hardness

        totalTime = eggTimes[hardness]!
    

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    @objc func updateTimer() {
             if secondsPassed < totalTime {
                secondsPassed += 1
                myTimerBar.progress = Float(secondsPassed) / Float(totalTime)

             }
            else {
                timer.invalidate()
                gggTitle.text = "All Done!"
                }
             }
        }
    


