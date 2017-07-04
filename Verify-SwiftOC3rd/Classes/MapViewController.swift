//
//  MapViewController.swift
//  Pods
//
//  Created by wangcong on 30/06/2017.
//
//

import UIKit
import BaiduMapAPI_Map

public class MapViewController: UIViewController {

   public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let mapView = BMKMapView.init(frame: self.view.bounds)
        self.view.addSubview(mapView)
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
