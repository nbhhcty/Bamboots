//
//  HomeViewController.swift
//  MBNetwork
//
//  Created by ZhengYidong on 15/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit
import MBNetwork

class HomeViewController: UITableViewController, MBRequestable {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch (indexPath.section, indexPath.row) {
        case (0, 0), (1, 0):
            request(WeatherForm())
            break
        case (1, 1):
            self.performSegue(withIdentifier: "fromHomeToDownload", sender: nil)
            break
        case (1, 2):
            self.performSegue(withIdentifier: "fromHomeToUpload", sender: nil)
            break
        case (0, 1):
            self.performSegue(withIdentifier: "fromHomeToSerialize", sender: nil)
            break
        case (2, 0):
            self.performSegue(withIdentifier: "fromHomeToLoad", sender: nil)
            break
        case (2, 1):
            self.performSegue(withIdentifier: "fromHomeToTable", sender: nil)
            break
        case (0, 2):
            self.performSegue(withIdentifier: "fromHomeToProgress", sender: nil)
            break;
        case (3, 0):
            self.performSegue(withIdentifier: "fromHomeToWarn", sender: nil)
        default:
            break
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
