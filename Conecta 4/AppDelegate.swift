//
//  AppDelegate.swift
//  Conecta 4
//
//  Created by Miguel Angel Rosell Fernandez on 22/1/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? // creamos una variable del tipo ventana UIWindow hay que instanciar window en setupView

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // setup
         setupView()
        
        
        return true
    }

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        
        // Support only one orientation value.
        return UIInterfaceOrientationMask.portrait // solo vertical
        //return UIInterfaceOrientationMask.landscape // solo apaisado

        // Support multiple orientation values.
        //return ( UIInterfaceOrientationMask(rawValue: UIInterfaceOrientationMask.portrait.rawValue | UIInterfaceOrientationMask.landscape.rawValue | UIInterfaceOrientationMask.portraitUpsideDown.rawValue) )
    }
    

    // MARK: - Private methods
   
    private func setupView() { // instanciamos e iniciamos como primera pantalla homeviewcontroller
        
        window = UIWindow(frame: UIScreen.main.bounds) // instanciamos window y le damos el ancho total de la pantala
        
        let vc = HomeViewController() // instanciamos
        window?.rootViewController = vc // le decimos que es la panatalla principal
        window?.makeKeyAndVisible() // le decimos que la cree y que la muestre
        
    }


}

