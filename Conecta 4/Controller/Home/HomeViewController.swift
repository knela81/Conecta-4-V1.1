//
//  HomeViewController.swift
//  Conecta 4
//
//  Created by Miguel Angel Rosell Fernandez on 22/1/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var marcadorRojo: UILabel!
    @IBOutlet weak var marcadorAmarillo: UILabel!
    
    @IBOutlet weak var lblTurnoJugador: UILabel!
    
    @IBOutlet weak var Columna1: UIStackView!
    @IBOutlet weak var Columna2: UIStackView!
    @IBOutlet weak var Columna3: UIStackView!
    @IBOutlet weak var Columna4: UIStackView!
    @IBOutlet weak var Columna5: UIStackView!
    @IBOutlet weak var Columna6: UIStackView!
    
    @IBOutlet weak var tablero: UIView!
    
    @IBOutlet weak var BotonResetWin: UIButton!
    @IBOutlet weak var BotonRestart: UIButton!
    
    @IBOutlet weak var fichaA1: UIButton!
    @IBOutlet weak var fichaB1: UIButton!
    @IBOutlet weak var fichaC1: UIButton!
    @IBOutlet weak var fichaD1: UIButton!
    @IBOutlet weak var fichaE1: UIButton!
    @IBOutlet weak var fichaF1: UIButton!
    
    @IBOutlet weak var fichaA2: UIButton!
    @IBOutlet weak var fichaB2: UIButton!
    @IBOutlet weak var fichaC2: UIButton!
    @IBOutlet weak var fichaD2: UIButton!
    @IBOutlet weak var fichaE2: UIButton!
    @IBOutlet weak var fichaF2: UIButton!
    
    @IBOutlet weak var fichaA3: UIButton!
    @IBOutlet weak var fichaB3: UIButton!
    @IBOutlet weak var fichaC3: UIButton!
    @IBOutlet weak var fichaD3: UIButton!
    @IBOutlet weak var fichaE3: UIButton!
    @IBOutlet weak var fichaF3: UIButton!
    
    @IBOutlet weak var fichaA4: UIButton!
    @IBOutlet weak var fichaB4: UIButton!
    @IBOutlet weak var fichaC4: UIButton!
    @IBOutlet weak var fichaD4: UIButton!
    @IBOutlet weak var fichaE4: UIButton!
    @IBOutlet weak var fichaF4: UIButton!
    
    @IBOutlet weak var fichaA5: UIButton!
    @IBOutlet weak var fichaB5: UIButton!
    @IBOutlet weak var fichaC5: UIButton!
    @IBOutlet weak var fichaD5: UIButton!
    @IBOutlet weak var fichaE5: UIButton!
    @IBOutlet weak var fichaF5: UIButton!
    
    @IBOutlet weak var fichaA6: UIButton!
    @IBOutlet weak var fichaB6: UIButton!
    @IBOutlet weak var fichaC6: UIButton!
    @IBOutlet weak var fichaD6: UIButton!
    @IBOutlet weak var fichaE6: UIButton!
    @IBOutlet weak var fichaF6: UIButton!
    
    @IBOutlet weak var fichaA7: UIButton!
    @IBOutlet weak var fichaB7: UIButton!
    @IBOutlet weak var fichaC7: UIButton!
    @IBOutlet weak var fichaD7: UIButton!
    @IBOutlet weak var fichaE7: UIButton!
    @IBOutlet weak var fichaF7: UIButton!
   
    
    // MARK: Variables
    
    private var columna1 = [false,false,false,false,false,false]
    private var columna2 = [false,false,false,false,false,false]
    private var columna3 = [false,false,false,false,false,false]
    private var columna4 = [false,false,false,false,false,false]
    private var columna5 = [false,false,false,false,false,false]
    private var columna6 = [false,false,false,false,false,false]
    private var columna7 = [false,false,false,false,false,false]
    
    private var numeroColumna1 = 0
    private var numeroColumna2 = 0
    private var numeroColumna3 = 0
    private var numeroColumna4 = 0
    private var numeroColumna5 = 0
    private var numeroColumna6 = 0
    private var numeroColumna7 = 0
    
    private var turno: turnoEnum = .none
    private var turnoInicio: turnoEnum = .none
    
    private var colorCasillaColumna1: [turnoEnum] = [.none,.none,.none,.none,.none,.none]
    private var colorCasillaColumna2: [turnoEnum] = [.none,.none,.none,.none,.none,.none]
    private var colorCasillaColumna3: [turnoEnum] = [.none,.none,.none,.none,.none,.none]
    private var colorCasillaColumna4: [turnoEnum] = [.none,.none,.none,.none,.none,.none]
    private var colorCasillaColumna5: [turnoEnum] = [.none,.none,.none,.none,.none,.none]
    private var colorCasillaColumna6: [turnoEnum] = [.none,.none,.none,.none,.none,.none]
    private var colorCasillaColumna7: [turnoEnum] = [.none,.none,.none,.none,.none,.none]
    
    private var cuentaColumna1 = 0
    
    private var ganadasRojo = 0
    private var ganadasAmarillo = 0
    
    private var retardoAlerta: Timer?
    
    private var ponerFicha = false

    
    // MARK: Constantes
    
    private let morado: UIColor = UIColor(red: 0.088, green: 0.048, blue: 0.218, alpha: 1)
    private let rojoWin = UIColor(red: 1, green: 0.466, blue: 0.346, alpha: 1)
    private let amarilloWin = UIColor(red: 1, green: 0.993, blue: 0.434, alpha: 1)
    private enum turnoEnum {
        case none, amarillo, rojo
    }
    
    // MARK: viewDidload
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        marcadorRojo.text = "0"
        marcadorAmarillo.text = "0"
        lblTurnoJugador.text = "Rojo"
        lblTurnoJugador.textColor = .red
        tablero.round1()
        BotonRestart.round()
        BotonResetWin.round()
        ponerFicha = true
        fichaA1.round()
        fichaB1.round()
        fichaC1.round()
        fichaD1.round()
        fichaE1.round()
        fichaF1.round()
        
        fichaA1.setTitle("", for: .normal)
        fichaB1.setTitle("", for: .normal)
        fichaC1.setTitle("", for: .normal)
        fichaD1.setTitle("", for: .normal)
        fichaE1.setTitle("", for: .normal)
        fichaF1.setTitle("", for: .normal)
        
        fichaA1.backgroundColor = morado
        fichaB1.backgroundColor = morado
        fichaC1.backgroundColor = morado
        fichaD1.backgroundColor = morado
        fichaE1.backgroundColor = morado
        fichaF1.backgroundColor = morado
        
        
        fichaA2.round()
        fichaB2.round()
        fichaC2.round()
        fichaD2.round()
        fichaE2.round()
        fichaF2.round()
        
        fichaA2.setTitle("", for: .normal)
        fichaB2.setTitle("", for: .normal)
        fichaC2.setTitle("", for: .normal)
        fichaD2.setTitle("", for: .normal)
        fichaE2.setTitle("", for: .normal)
        fichaF2.setTitle("", for: .normal)
        
        fichaA2.backgroundColor = morado
        fichaB2.backgroundColor = morado
        fichaC2.backgroundColor = morado
        fichaD2.backgroundColor = morado
        fichaE2.backgroundColor = morado
        fichaF2.backgroundColor = morado
        
        fichaA3.round()
        fichaB3.round()
        fichaC3.round()
        fichaD3.round()
        fichaE3.round()
        fichaF3.round()
        
        fichaA3.setTitle("", for: .normal)
        fichaB3.setTitle("", for: .normal)
        fichaC3.setTitle("", for: .normal)
        fichaD3.setTitle("", for: .normal)
        fichaE3.setTitle("", for: .normal)
        fichaF3.setTitle("", for: .normal)
        
        fichaA3.backgroundColor = morado
        fichaB3.backgroundColor = morado
        fichaC3.backgroundColor = morado
        fichaD3.backgroundColor = morado
        fichaE3.backgroundColor = morado
        fichaF3.backgroundColor = morado
        
        fichaA4.round()
        fichaB4.round()
        fichaC4.round()
        fichaD4.round()
        fichaE4.round()
        fichaF4.round()
        
        fichaA4.setTitle("", for: .normal)
        fichaB4.setTitle("", for: .normal)
        fichaC4.setTitle("", for: .normal)
        fichaD4.setTitle("", for: .normal)
        fichaE4.setTitle("", for: .normal)
        fichaF4.setTitle("", for: .normal)
        
        fichaA4.backgroundColor = morado
        fichaB4.backgroundColor = morado
        fichaC4.backgroundColor = morado
        fichaD4.backgroundColor = morado
        fichaE4.backgroundColor = morado
        fichaF4.backgroundColor = morado
        
        fichaA5.round()
        fichaB5.round()
        fichaC5.round()
        fichaD5.round()
        fichaE5.round()
        fichaF5.round()
        
        fichaA5.setTitle("", for: .normal)
        fichaB5.setTitle("", for: .normal)
        fichaC5.setTitle("", for: .normal)
        fichaD5.setTitle("", for: .normal)
        fichaE5.setTitle("", for: .normal)
        fichaF5.setTitle("", for: .normal)
        
        fichaA5.backgroundColor = morado
        fichaB5.backgroundColor = morado
        fichaC5.backgroundColor = morado
        fichaD5.backgroundColor = morado
        fichaE5.backgroundColor = morado
        fichaF5.backgroundColor = morado
        
        fichaA6.round()
        fichaB6.round()
        fichaC6.round()
        fichaD6.round()
        fichaE6.round()
        fichaF6.round()
        
        fichaA6.setTitle("", for: .normal)
        fichaB6.setTitle("", for: .normal)
        fichaC6.setTitle("", for: .normal)
        fichaD6.setTitle("", for: .normal)
        fichaE6.setTitle("", for: .normal)
        fichaF6.setTitle("", for: .normal)
        
        fichaA6.backgroundColor = morado
        fichaB6.backgroundColor = morado
        fichaC6.backgroundColor = morado
        fichaD6.backgroundColor = morado
        fichaE6.backgroundColor = morado
        fichaF6.backgroundColor = morado
        
        fichaA7.round()
        fichaB7.round()
        fichaC7.round()
        fichaD7.round()
        fichaE7.round()
        fichaF7.round()
        
        fichaA7.setTitle("", for: .normal)
        fichaB7.setTitle("", for: .normal)
        fichaC7.setTitle("", for: .normal)
        fichaD7.setTitle("", for: .normal)
        fichaE7.setTitle("", for: .normal)
        fichaF7.setTitle("", for: .normal)
        
        fichaA7.backgroundColor = morado
        fichaB7.backgroundColor = morado
        fichaC7.backgroundColor = morado
        fichaD7.backgroundColor = morado
        fichaE7.backgroundColor = morado
        fichaF7.backgroundColor = morado
        
        turno = .rojo
        turnoInicio = .rojo
       
        
        
    }
    
    // MARK: Reiniciar Victorias
    
    @IBAction func reiniciarVictorias(_ sender: Any) {
        
        ganadasRojo = 0
        marcadorRojo.text = "0"
        ganadasAmarillo = 0
        marcadorAmarillo.text = "0"
    
    }
    
// MARK: Restart
    
    @IBAction func Restart(_ sender: Any) {
        reiniciarPartida()
       
    }
    
    private func reiniciarPartida() {
        
        fichaA1.backgroundColor = morado
        fichaB1.backgroundColor = morado
        fichaC1.backgroundColor = morado
        fichaD1.backgroundColor = morado
        fichaE1.backgroundColor = morado
        fichaF1.backgroundColor = morado
        
        fichaA1.blink(enabled: false)
        fichaB1.blink(enabled: false)
        fichaC1.blink(enabled: false)
        fichaD1.blink(enabled: false)
        fichaE1.blink(enabled: false)
        fichaF1.blink(enabled: false)
        
        for i in 0..<6 {
            
            columna1[i] = false
            colorCasillaColumna1[i] = .none
            numeroColumna1 = 0
            
        }
        
        
        fichaA2.backgroundColor = morado
        fichaB2.backgroundColor = morado
        fichaC2.backgroundColor = morado
        fichaD2.backgroundColor = morado
        fichaE2.backgroundColor = morado
        fichaF2.backgroundColor = morado
        
        fichaA2.blink(enabled: false)
        fichaB2.blink(enabled: false)
        fichaC2.blink(enabled: false)
        fichaD2.blink(enabled: false)
        fichaE2.blink(enabled: false)
        fichaF2.blink(enabled: false)
        
        for i in 0..<6 {
            
            columna2[i] = false
            colorCasillaColumna2[i] = .none
            numeroColumna2 = 0
            
        }
        
        fichaA3.backgroundColor = morado
        fichaB3.backgroundColor = morado
        fichaC3.backgroundColor = morado
        fichaD3.backgroundColor = morado
        fichaE3.backgroundColor = morado
        fichaF3.backgroundColor = morado
        
        fichaA3.blink(enabled: false)
        fichaB3.blink(enabled: false)
        fichaC3.blink(enabled: false)
        fichaD3.blink(enabled: false)
        fichaE3.blink(enabled: false)
        fichaF3.blink(enabled: false)
        
        for i in 0..<6 {
            
            columna3[i] = false
            colorCasillaColumna3[i] = .none
            numeroColumna3 = 0
            
        }
        
        fichaA4.backgroundColor = morado
        fichaB4.backgroundColor = morado
        fichaC4.backgroundColor = morado
        fichaD4.backgroundColor = morado
        fichaE4.backgroundColor = morado
        fichaF4.backgroundColor = morado
        
        fichaA4.blink(enabled: false)
        fichaB4.blink(enabled: false)
        fichaC4.blink(enabled: false)
        fichaD4.blink(enabled: false)
        fichaE4.blink(enabled: false)
        fichaF4.blink(enabled: false)
        
        for i in 0..<6 {
            
            columna4[i] = false
            colorCasillaColumna4[i] = .none
            numeroColumna4 = 0
            
        }
        
        fichaA5.backgroundColor = morado
        fichaB5.backgroundColor = morado
        fichaC5.backgroundColor = morado
        fichaD5.backgroundColor = morado
        fichaE5.backgroundColor = morado
        fichaF5.backgroundColor = morado
        
        fichaA5.blink(enabled: false)
        fichaB5.blink(enabled: false)
        fichaC5.blink(enabled: false)
        fichaD5.blink(enabled: false)
        fichaE5.blink(enabled: false)
        fichaF5.blink(enabled: false)
        
        for i in 0..<6 {
            
            columna5[i] = false
            colorCasillaColumna5[i] = .none
            numeroColumna5 = 0
            
        }
        
        fichaA6.backgroundColor = morado
        fichaB6.backgroundColor = morado
        fichaC6.backgroundColor = morado
        fichaD6.backgroundColor = morado
        fichaE6.backgroundColor = morado
        fichaF6.backgroundColor = morado
        
        fichaA6.blink(enabled: false)
        fichaB6.blink(enabled: false)
        fichaC6.blink(enabled: false)
        fichaD6.blink(enabled: false)
        fichaE6.blink(enabled: false)
        fichaF6.blink(enabled: false)
        
        for i in 0..<6 {
            
            columna6[i] = false
            colorCasillaColumna6[i] = .none
            numeroColumna6 = 0
            
        }
        
        fichaA7.backgroundColor = morado
        fichaB7.backgroundColor = morado
        fichaC7.backgroundColor = morado
        fichaD7.backgroundColor = morado
        fichaE7.backgroundColor = morado
        fichaF7.backgroundColor = morado
        
        fichaA7.blink(enabled: false)
        fichaB7.blink(enabled: false)
        fichaC7.blink(enabled: false)
        fichaD7.blink(enabled: false)
        fichaE7.blink(enabled: false)
        fichaF7.blink(enabled: false)
        
        for i in 0..<6 {
            
            columna7[i] = false
            colorCasillaColumna7[i] = .none
            numeroColumna7 = 0
            
        }
        
        if turnoInicio == .rojo {
            turno = .amarillo
            turnoInicio = .amarillo
            lblTurnoJugador.text = "Amarillo"
            lblTurnoJugador.textColor = .yellow
            
        }else {
            
            turno = .rojo
            turnoInicio = .rojo
            lblTurnoJugador.text = "Rojo"
            lblTurnoJugador.textColor = .red
        }
        
        ponerFicha = true
        
        
        
        
    
    }
    
    //MARK: Insertar ficha
    
    @IBAction func InsertarFichaColumna1(_ sender: UIButton) {
        
        if colorCasillaColumna1[5] == .none && ponerFicha == true {
            colorCasillaColumna1[numeroColumna1] = turno
        }
        
        if numeroColumna1 == 0 && fichaF1.backgroundColor == morado && ponerFicha == true {
            
            switch turno {
            case .amarillo:
                fichaF1.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaF1.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
            
            
        }
        if numeroColumna1 == 1 && fichaE1.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaE1.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaE1.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna1 == 2 && fichaD1.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaD1.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaD1.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna1 == 3 && fichaC1.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaC1.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
                
            case .rojo:
                fichaC1.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna1 == 4 && fichaB1.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaB1.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaB1.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna1 == 5 && fichaA1.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaA1.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaA1.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        
        if columna1[numeroColumna1] == false   {
            
            columna1[numeroColumna1] = true
            
            
            if numeroColumna1 < 5 && ponerFicha == true {
                
                numeroColumna1 +=  1
                
            }
            
            

        }
        if ponerFicha == true {
            checkWin()
        }
       

        
    }
    
    @IBAction func InsertarFichaColumna2(_ sender: UIButton) {
        
        if colorCasillaColumna2[5] == .none && ponerFicha == true {
            colorCasillaColumna2[numeroColumna2] = turno
        }
        
        
        if numeroColumna2 == 0 && fichaF2.backgroundColor == morado && ponerFicha == true {
            
            switch turno {
            case .amarillo:
                fichaF2.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaF2.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
            
            
        }
        if numeroColumna2 == 1 && fichaE2.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaE2.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaE2.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna2 == 2 && fichaD2.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaD2.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaD2.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna2 == 3 && fichaC2.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaC2.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaC2.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna2 == 4 && fichaB2.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaB2.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaB2.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna2 == 5 && fichaA2.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaA2.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaA2.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        
        if columna2[numeroColumna2] == false   {
            
            columna2[numeroColumna2] = true
            
            if numeroColumna2 < 5 && ponerFicha == true {
                
                numeroColumna2 +=  1
                
            }
            
        }
        if ponerFicha == true {
            checkWin()
        }
    }
    
    @IBAction func InsertarFichaColumna3(_ sender: UIButton) {
        
        if colorCasillaColumna3[5] == .none && ponerFicha == true {
            colorCasillaColumna3[numeroColumna3] = turno
        }
        
        if numeroColumna3 == 0 && fichaF3.backgroundColor == morado && ponerFicha == true {
            
            switch turno {
            case .amarillo:
                fichaF3.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaF3.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
            
            
        }
        if numeroColumna3 == 1 && fichaE3.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaE3.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaE3.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna3 == 2 && fichaD3.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaD3.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaD3.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna3 == 3 && fichaC3.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaC3.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaC3.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna3 == 4 && fichaB3.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaB3.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaB3.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna3 == 5 && fichaA3.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaA3.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaA3.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        
        if columna3[numeroColumna3] == false   {
            
            columna3[numeroColumna3] = true
            
            if numeroColumna3 < 5 && ponerFicha == true {
                
                numeroColumna3 +=  1
                
            }
            
        }
        if ponerFicha == true {
            checkWin()
        }
    }
    
    @IBAction func InsertarFichaColumna4(_ sender: UIButton) {
        
        if colorCasillaColumna4[5] == .none && ponerFicha == true {
            colorCasillaColumna4[numeroColumna4] = turno
        }
       
        if numeroColumna4 == 0 && fichaF4.backgroundColor == morado && ponerFicha == true {
            
            switch turno {
            case .amarillo:
                fichaF4.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaF4.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
            
            
        }
        if numeroColumna4 == 1 && fichaE4.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaE4.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaE4.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna4 == 2 && fichaD4.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaD4.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaD4.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna4 == 3 && fichaC4.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaC4.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaC4.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna4 == 4 && fichaB4.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaB4.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaB4.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna4 == 5 && fichaA4.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaA4.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaA4.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        
        if columna4[numeroColumna4] == false   {
            
            columna4[numeroColumna4] = true
            
            if numeroColumna4 < 5 && ponerFicha == true {
                
                numeroColumna4 +=  1
                
            }
            
        }
        if ponerFicha == true {
            checkWin()
        }
    }
    
    @IBAction func InsertarFichaColumna5(_ sender: UIButton) {
        
        if colorCasillaColumna5[5] == .none && ponerFicha == true {
            colorCasillaColumna5[numeroColumna5] = turno
        }
        
        if numeroColumna5 == 0 && fichaF5.backgroundColor == morado && ponerFicha == true {
            
            switch turno {
            case .amarillo:
                fichaF5.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaF5.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
            
            
        }
        if numeroColumna5 == 1 && fichaE5.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaE5.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaE5.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna5 == 2 && fichaD5.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaD5.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaD5.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna5 == 3 && fichaC5.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaC5.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaC5.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna5 == 4 && fichaB5.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaB5.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaB5.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna5 == 5 && fichaA5.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaA5.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaA5.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        
        if columna5[numeroColumna5] == false   {
            
            columna5[numeroColumna5] = true
            
            if numeroColumna5 < 5 && ponerFicha == true {
                
                numeroColumna5 +=  1
                
            }
            
        }
        if ponerFicha == true {
            checkWin()
        }
    }
    
    @IBAction func InsertarFichaColumna6(_ sender: UIButton) {
        
        if colorCasillaColumna6[5] == .none && ponerFicha == true {
            colorCasillaColumna6[numeroColumna6] = turno
        }
        
        if numeroColumna6 == 0 && fichaF6.backgroundColor == morado && ponerFicha == true {
            
            switch turno {
            case .amarillo:
                fichaF6.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaF6.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
            
            
        }
        if numeroColumna6 == 1 && fichaE6.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaE6.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaE6.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna6 == 2 && fichaD6.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaD6.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaD6.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna6 == 3 && fichaC6.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaC6.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaC6.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna6 == 4 && fichaB6.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaB6.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaB6.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna6 == 5 && fichaA6.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaA6.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaA6.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        
        if columna6[numeroColumna6] == false   {
            
            columna6[numeroColumna6] = true
            
            if numeroColumna6 < 5 && ponerFicha == true {
                
                numeroColumna6 +=  1
                
            }
            
        }
        if ponerFicha == true {
            checkWin()
        }
    }
    
    @IBAction func InsertarFichaColumna7(_ sender: UIButton) {
        
        if colorCasillaColumna7[5] == .none && ponerFicha == true {
            colorCasillaColumna7[numeroColumna7] = turno
        }
        
        if numeroColumna7 == 0 && fichaF7.backgroundColor == morado && ponerFicha == true {
            
            switch turno {
            case .amarillo:
                fichaF7.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaF7.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
            
            
        }
        if numeroColumna7 == 1 && fichaE7.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaE7.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaE7.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna7 == 2 && fichaD7.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaD7.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaD7.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna7 == 3 && fichaC7.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaC7.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaC7.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna7 == 4 && fichaB7.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaB7.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaB7.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        if numeroColumna7 == 5 && fichaA7.backgroundColor == morado && ponerFicha == true {
            switch turno {
            case .amarillo:
                fichaA7.backgroundColor = .yellow
                turno = .rojo
                lblTurnoJugador.text = "Rojo"
                lblTurnoJugador.textColor = .red
            case .rojo:
                fichaA7.backgroundColor = .red
                turno = .amarillo
                lblTurnoJugador.text = "Amarillo"
                lblTurnoJugador.textColor = .yellow
            case .none:
                break
            }
        }
        
        if columna7[numeroColumna7] == false   {
            
            columna7[numeroColumna7] = true
            
            if numeroColumna7 < 5 && ponerFicha == true {
                
                numeroColumna7 +=  1
                
            }
            
        }
        if ponerFicha == true {
            checkWin()
        }
    }
    

    private func checkWin() {
        
        
        verticales()
        horizontales()
        diagonalesIzqDchaAbajo()
        diagonalesIzqDchaArriba()


    }
    
    private func verticales() {
        
        // vertical Columna 1 rojo
                
                if colorCasillaColumna1[0] == .rojo && colorCasillaColumna1[1] == .rojo && colorCasillaColumna1[2] == .rojo && colorCasillaColumna1[3] == .rojo {
                    ganadasRojo += 1

                    fichaF1.blink()
                    fichaE1.blink()
                    fichaD1.blink()
                    fichaC1.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna1[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")

                }
                else if colorCasillaColumna1[1] == .rojo && colorCasillaColumna1[2] == .rojo && colorCasillaColumna1[3] == .rojo && colorCasillaColumna1[4] == .rojo {
                    ganadasRojo += 1
                    fichaB1.blink()
                    fichaE1.blink()
                    fichaD1.blink()
                    fichaC1.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna1[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna1[2] == .rojo && colorCasillaColumna1[3] == .rojo && colorCasillaColumna1[4] == .rojo && colorCasillaColumna1[5] == .rojo {
                    ganadasRojo += 1
                    fichaB1.blink()
                    fichaA1.blink()
                    fichaD1.blink()
                    fichaC1.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna1[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
        // vertical Columna 1 amarillo
                
                if colorCasillaColumna1[0] == .amarillo && colorCasillaColumna1[1] == .amarillo && colorCasillaColumna1[2] == .amarillo && colorCasillaColumna1[3] == .amarillo {
                    ganadasAmarillo += 1
                    fichaF1.blink()
                    fichaE1.blink()
                    fichaD1.blink()
                    fichaC1.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna1[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                    
                }
                else if colorCasillaColumna1[1] == .amarillo && colorCasillaColumna1[2] == .amarillo && colorCasillaColumna1[3] == .amarillo && colorCasillaColumna1[4] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB1.blink()
                    fichaE1.blink()
                    fichaD1.blink()
                    fichaC1.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna1[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                   
                }
                else if colorCasillaColumna1[2] == .amarillo && colorCasillaColumna1[3] == .amarillo && colorCasillaColumna1[4] == .amarillo && colorCasillaColumna1[5] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB1.blink()
                    fichaA1.blink()
                    fichaD1.blink()
                    fichaC1.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna1[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                
        // Vertical Columna 2 rojo
                
                if colorCasillaColumna2[0] == .rojo && colorCasillaColumna2[1] == .rojo && colorCasillaColumna2[2] == .rojo && colorCasillaColumna2[3] == .rojo {
                    ganadasRojo += 1
                    fichaF2.blink()
                    fichaE2.blink()
                    fichaD2.blink()
                    fichaC2.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna2[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna2[1] == .rojo && colorCasillaColumna2[2] == .rojo && colorCasillaColumna2[3] == .rojo && colorCasillaColumna2[4] == .rojo {
                    ganadasRojo += 1
                    fichaB2.blink()
                    fichaE2.blink()
                    fichaD2.blink()
                    fichaC2.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna2[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna2[2] == .rojo && colorCasillaColumna2[3] == .rojo && colorCasillaColumna2[4] == .rojo && colorCasillaColumna2[5] == .rojo {
                    ganadasRojo += 1
                    fichaB2.blink()
                    fichaA2.blink()
                    fichaD2.blink()
                    fichaC2.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna2[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                   
                }
                
        // vertical Columna 2 amarillo
                
                if colorCasillaColumna2[0] == .amarillo && colorCasillaColumna2[1] == .amarillo && colorCasillaColumna2[2] == .amarillo && colorCasillaColumna2[3] == .amarillo {
                    ganadasAmarillo += 1
                    fichaF2.blink()
                    fichaE2.blink()
                    fichaD2.blink()
                    fichaC2.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna2[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna2[1] == .amarillo && colorCasillaColumna2[2] == .amarillo && colorCasillaColumna2[3] == .amarillo && colorCasillaColumna2[4] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB2.blink()
                    fichaE2.blink()
                    fichaD2.blink()
                    fichaC2.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna2[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna2[2] == .amarillo && colorCasillaColumna2[3] == .amarillo && colorCasillaColumna2[4] == .amarillo && colorCasillaColumna2[5] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB2.blink()
                    fichaA2.blink()
                    fichaD2.blink()
                    fichaC2.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna2[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                
        // Vertical Columna 3 rojo
                
                if colorCasillaColumna3[0] == .rojo && colorCasillaColumna3[1] == .rojo && colorCasillaColumna3[2] == .rojo && colorCasillaColumna3[3] == .rojo {
                    ganadasRojo += 1
                    fichaF3.blink()
                    fichaE3.blink()
                    fichaD3.blink()
                    fichaC3.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna3[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna3[1] == .rojo && colorCasillaColumna3[2] == .rojo && colorCasillaColumna3[3] == .rojo && colorCasillaColumna3[4] == .rojo {
                    ganadasRojo += 1
                    fichaB3.blink()
                    fichaE3.blink()
                    fichaD3.blink()
                    fichaC3.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna3[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna3[2] == .rojo && colorCasillaColumna3[3] == .rojo && colorCasillaColumna3[4] == .rojo && colorCasillaColumna3[5] == .rojo {
                    ganadasRojo += 1
                    fichaB3.blink()
                    fichaA3.blink()
                    fichaD3.blink()
                    fichaC3.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna3[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                   
                }
                        
                       
                        
        // vertical Columna 3 amarillo
                
                if colorCasillaColumna3[0] == .amarillo && colorCasillaColumna3[1] == .amarillo && colorCasillaColumna3[2] == .amarillo && colorCasillaColumna3[3] == .amarillo {
                    ganadasAmarillo += 1
                    fichaF3.blink()
                    fichaE3.blink()
                    fichaD3.blink()
                    fichaC3.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna3[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna3[1] == .amarillo && colorCasillaColumna3[2] == .amarillo && colorCasillaColumna3[3] == .amarillo && colorCasillaColumna3[4] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB3.blink()
                    fichaE3.blink()
                    fichaD3.blink()
                    fichaC3.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna3[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna3[2] == .amarillo && colorCasillaColumna3[3] == .amarillo && colorCasillaColumna3[4] == .amarillo && colorCasillaColumna3[5] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB3.blink()
                    fichaA3.blink()
                    fichaD3.blink()
                    fichaC3.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna3[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                
        // Vertical Columna 4 rojo
                
                if colorCasillaColumna4[0] == .rojo && colorCasillaColumna4[1] == .rojo && colorCasillaColumna4[2] == .rojo && colorCasillaColumna4[3] == .rojo {
                    ganadasRojo += 1
                    fichaF4.blink()
                    fichaE4.blink()
                    fichaD4.blink()
                    fichaC4.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna4[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna4[1] == .rojo && colorCasillaColumna4[2] == .rojo && colorCasillaColumna4[3] == .rojo && colorCasillaColumna4[4] == .rojo {
                    ganadasRojo += 1
                    fichaB4.blink()
                    fichaE4.blink()
                    fichaD4.blink()
                    fichaC4.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna4[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna4[2] == .rojo && colorCasillaColumna4[3] == .rojo && colorCasillaColumna4[4] == .rojo && colorCasillaColumna4[5] == .rojo {
                    ganadasRojo += 1
                    fichaB4.blink()
                    fichaA4.blink()
                    fichaD4.blink()
                    fichaC4.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna4[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                   
                }

                        
        // vertical Columna 4 amarillo

                if colorCasillaColumna4[0] == .amarillo && colorCasillaColumna4[1] == .amarillo && colorCasillaColumna4[2] == .amarillo && colorCasillaColumna4[3] == .amarillo {
                    ganadasAmarillo += 1
                    fichaF4.blink()
                    fichaE4.blink()
                    fichaD4.blink()
                    fichaC4.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna4[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna4[1] == .amarillo && colorCasillaColumna4[2] == .amarillo && colorCasillaColumna4[3] == .amarillo && colorCasillaColumna4[4] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB4.blink()
                    fichaE4.blink()
                    fichaD4.blink()
                    fichaC4.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna4[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna4[2] == .amarillo && colorCasillaColumna4[3] == .amarillo && colorCasillaColumna4[4] == .amarillo && colorCasillaColumna4[5] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB4.blink()
                    fichaA4.blink()
                    fichaD4.blink()
                    fichaC4.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna4[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
        // Vertical Columna 5 rojo
                
                if colorCasillaColumna5[0] == .rojo && colorCasillaColumna5[1] == .rojo && colorCasillaColumna5[2] == .rojo && colorCasillaColumna5[3] == .rojo {
                    ganadasRojo += 1
                    fichaF5.blink()
                    fichaE5.blink()
                    fichaD5.blink()
                    fichaC5.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna5[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna5[1] == .rojo && colorCasillaColumna5[2] == .rojo && colorCasillaColumna5[3] == .rojo && colorCasillaColumna5[4] == .rojo {
                    ganadasRojo += 1
                    fichaB5.blink()
                    fichaE5.blink()
                    fichaD5.blink()
                    fichaC5.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna5[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna5[2] == .rojo && colorCasillaColumna5[3] == .rojo && colorCasillaColumna5[4] == .rojo && colorCasillaColumna5[5] == .rojo {
                    ganadasRojo += 1
                    fichaB5.blink()
                    fichaA5.blink()
                    fichaD5.blink()
                    fichaC5.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna5[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                   
                }
                       

                                
        // vertical Columna 5 amarillo

                if colorCasillaColumna5[0] == .amarillo && colorCasillaColumna5[1] == .amarillo && colorCasillaColumna5[2] == .amarillo && colorCasillaColumna5[3] == .amarillo {
                    ganadasAmarillo += 1
                    fichaF5.blink()
                    fichaE5.blink()
                    fichaD5.blink()
                    fichaC5.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna5[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna5[1] == .amarillo && colorCasillaColumna5[2] == .amarillo && colorCasillaColumna5[3] == .amarillo && colorCasillaColumna5[4] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB5.blink()
                    fichaE5.blink()
                    fichaD5.blink()
                    fichaC5.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna5[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna5[2] == .amarillo && colorCasillaColumna5[3] == .amarillo && colorCasillaColumna5[4] == .amarillo && colorCasillaColumna5[5] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB5.blink()
                    fichaA5.blink()
                    fichaD5.blink()
                    fichaC5.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna5[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                
        // Vertical Columna 6 rojo
                        
                if colorCasillaColumna6[0] == .rojo && colorCasillaColumna6[1] == .rojo && colorCasillaColumna6[2] == .rojo && colorCasillaColumna6[3] == .rojo {
                    ganadasRojo += 1
                    fichaF6.blink()
                    fichaE6.blink()
                    fichaD6.blink()
                    fichaC6.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna6[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna6[1] == .rojo && colorCasillaColumna6[2] == .rojo && colorCasillaColumna6[3] == .rojo && colorCasillaColumna6[4] == .rojo {
                    ganadasRojo += 1
                    fichaB6.blink()
                    fichaE6.blink()
                    fichaD6.blink()
                    fichaC6.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna6[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna6[2] == .rojo && colorCasillaColumna6[3] == .rojo && colorCasillaColumna6[4] == .rojo && colorCasillaColumna6[5] == .rojo {
                    ganadasRojo += 1
                    fichaB6.blink()
                    fichaA6.blink()
                    fichaD6.blink()
                    fichaC6.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna6[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Rojo")
                   
                }
                               

                                        
        // vertical Columna 6 amarillo

                if colorCasillaColumna6[0] == .amarillo && colorCasillaColumna6[1] == .amarillo && colorCasillaColumna6[2] == .amarillo && colorCasillaColumna6[3] == .amarillo {
                    ganadasAmarillo += 1
                    fichaF6.blink()
                    fichaE6.blink()
                    fichaD6.blink()
                    fichaC6.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna6[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna6[1] == .amarillo && colorCasillaColumna6[2] == .amarillo && colorCasillaColumna6[3] == .amarillo && colorCasillaColumna6[4] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB6.blink()
                    fichaE6.blink()
                    fichaD6.blink()
                    fichaC6.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna6[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna6[2] == .amarillo && colorCasillaColumna6[3] == .amarillo && colorCasillaColumna6[4] == .amarillo && colorCasillaColumna6[5] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB6.blink()
                    fichaA6.blink()
                    fichaD6.blink()
                    fichaC6.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna6[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
        // Vertical Columna 7 rojo
                        
                if colorCasillaColumna7[0] == .rojo && colorCasillaColumna7[1] == .rojo && colorCasillaColumna7[2] == .rojo && colorCasillaColumna7[3] == .rojo {
                    ganadasRojo += 1
                    fichaF7.blink()
                    fichaE7.blink()
                    fichaD7.blink()
                    fichaC7.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna7[1] == .rojo && colorCasillaColumna7[2] == .rojo && colorCasillaColumna7[3] == .rojo && colorCasillaColumna7[4] == .rojo {
                    ganadasRojo += 1
                    fichaB7.blink()
                    fichaE7.blink()
                    fichaD7.blink()
                    fichaC7.blink()
                    
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna7[2] == .rojo && colorCasillaColumna7[3] == .rojo && colorCasillaColumna7[4] == .rojo && colorCasillaColumna7[5] == .rojo {
                    ganadasRojo += 1
                    fichaB7.blink()
                    fichaA7.blink()
                    fichaD7.blink()
                    fichaC7.blink()
                    
                    partidaFinalizada(ganador: "Rojo")
                   
                }
                               

                                        
        // vertical Columna 7 amarillo

                if colorCasillaColumna7[0] == .amarillo && colorCasillaColumna7[1] == .amarillo && colorCasillaColumna7[2] == .amarillo && colorCasillaColumna7[3] == .amarillo {
                    ganadasAmarillo += 1
                    fichaF7.blink()
                    fichaE7.blink()
                    fichaD7.blink()
                    fichaC7.blink()
                   
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna7[1] == .amarillo && colorCasillaColumna7[2] == .amarillo && colorCasillaColumna7[3] == .amarillo && colorCasillaColumna7[4] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB7.blink()
                    fichaE7.blink()
                    fichaD7.blink()
                    fichaC7.blink()
                    
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
                else if colorCasillaColumna7[2] == .amarillo && colorCasillaColumna7[3] == .amarillo && colorCasillaColumna7[4] == .amarillo && colorCasillaColumna7[5] == .amarillo {
                    ganadasAmarillo += 1
                    fichaB7.blink()
                    fichaA7.blink()
                    fichaD7.blink()
                    fichaC7.blink()
                    for i in 0..<6{
                        
                        print("\(colorCasillaColumna6[i])\(i)")
                    
                    }
                    partidaFinalizada(ganador: "Amarillo")
                    
                }
         
    }
    
    private func horizontales() {
        
        // Horizontal fila 1 rojo
                        
        if colorCasillaColumna1[0] == .rojo && colorCasillaColumna2[0] == .rojo && colorCasillaColumna3[0] == .rojo && colorCasillaColumna4[0] == .rojo {
            ganadasRojo += 1
            fichaF1.blink()
            fichaF2.blink()
            fichaF3.blink()
            fichaF4.blink()
            partidaFinalizada(ganador: "Rojo")
                    
        }
        else if colorCasillaColumna2[0] == .rojo && colorCasillaColumna3[0] == .rojo && colorCasillaColumna4[0] == .rojo && colorCasillaColumna5[0] == .rojo {
            ganadasRojo += 1
            fichaF5.blink()
            fichaF2.blink()
            fichaF3.blink()
            fichaF4.blink()
            partidaFinalizada(ganador: "Rojo")
                    
        }
        else if colorCasillaColumna3[0] == .rojo && colorCasillaColumna4[0] == .rojo && colorCasillaColumna5[0] == .rojo && colorCasillaColumna6[0] == .rojo {
            ganadasRojo += 1
            fichaF6.blink()
            fichaF5.blink()
            fichaF3.blink()
            fichaF4.blink()
            partidaFinalizada(ganador: "Rojo")
                   
        }
        else if colorCasillaColumna4[0] == .rojo && colorCasillaColumna5[0] == .rojo && colorCasillaColumna6[0] == .rojo && colorCasillaColumna7[0] == .rojo {
            ganadasRojo += 1
            fichaF4.blink()
            fichaF5.blink()
            fichaF6.blink()
            fichaF7.blink()
            partidaFinalizada(ganador: "Rojo")
                   
        }
                               

                                        
        // Horizontal fila 1 Amarillo

        if colorCasillaColumna1[0] == .amarillo && colorCasillaColumna2[0] == .amarillo && colorCasillaColumna3[0] == .amarillo && colorCasillaColumna4[0] == .amarillo {
            ganadasAmarillo += 1
            fichaF1.blink()
            fichaF2.blink()
            fichaF3.blink()
            fichaF4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna2[0] == .amarillo && colorCasillaColumna3[0] == .amarillo && colorCasillaColumna4[0] == .amarillo && colorCasillaColumna5[0] == .amarillo {
            ganadasAmarillo += 1
            fichaF5.blink()
            fichaF2.blink()
            fichaF3.blink()
            fichaF4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna3[0] == .amarillo && colorCasillaColumna4[0] == .amarillo && colorCasillaColumna5[0] == .amarillo && colorCasillaColumna6[0] == .amarillo {
            ganadasAmarillo += 1
            fichaF6.blink()
            fichaF5.blink()
            fichaF3.blink()
            fichaF4.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        else if colorCasillaColumna4[0] == .amarillo && colorCasillaColumna5[0] == .amarillo && colorCasillaColumna6[0] == .amarillo && colorCasillaColumna7[0] == .amarillo {
            ganadasAmarillo += 1
            fichaF4.blink()
            fichaF5.blink()
            fichaF6.blink()
            fichaF7.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        
        // Horizontal fila 2 rojo
                        
                if colorCasillaColumna1[1] == .rojo && colorCasillaColumna2[1] == .rojo && colorCasillaColumna3[1] == .rojo && colorCasillaColumna4[1] == .rojo {
                    ganadasRojo += 1
                    fichaE1.blink()
                    fichaE2.blink()
                    fichaE3.blink()
                    fichaE4.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna2[1] == .rojo && colorCasillaColumna3[1] == .rojo && colorCasillaColumna4[1] == .rojo && colorCasillaColumna5[1] == .rojo {
                    ganadasRojo += 1
                    fichaE5.blink()
                    fichaE2.blink()
                    fichaE3.blink()
                    fichaE4.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna3[1] == .rojo && colorCasillaColumna4[1] == .rojo && colorCasillaColumna5[1] == .rojo && colorCasillaColumna6[1] == .rojo {
                    ganadasRojo += 1
                    fichaE5.blink()
                    fichaE6.blink()
                    fichaE3.blink()
                    fichaE4.blink()
                    partidaFinalizada(ganador: "Rojo")
                   
                }
        else if colorCasillaColumna4[1] == .rojo && colorCasillaColumna5[1] == .rojo && colorCasillaColumna6[1] == .rojo && colorCasillaColumna7[1] == .rojo {
            ganadasRojo += 1
            fichaE4.blink()
            fichaE5.blink()
            fichaE6.blink()
            fichaE7.blink()
            partidaFinalizada(ganador: "Rojo")
           
        }
                               

                                        
        // Horizontal fila 2 Amarillo

        if colorCasillaColumna1[1] == .amarillo && colorCasillaColumna2[1] == .amarillo && colorCasillaColumna3[1] == .amarillo && colorCasillaColumna4[1] == .amarillo {
            ganadasAmarillo += 1
            fichaE1.blink()
            fichaE2.blink()
            fichaE3.blink()
            fichaE4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna2[1] == .amarillo && colorCasillaColumna3[1] == .amarillo && colorCasillaColumna4[1] == .amarillo && colorCasillaColumna5[1] == .amarillo {
            ganadasAmarillo += 1
            fichaE5.blink()
            fichaE2.blink()
            fichaE3.blink()
            fichaE4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna3[1] == .amarillo && colorCasillaColumna4[1] == .amarillo && colorCasillaColumna5[1] == .amarillo && colorCasillaColumna6[1] == .amarillo {
            ganadasAmarillo += 1
            fichaE5.blink()
            fichaE6.blink()
            fichaE3.blink()
            fichaE4.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        else if colorCasillaColumna4[1] == .amarillo && colorCasillaColumna5[1] == .amarillo && colorCasillaColumna6[1] == .amarillo && colorCasillaColumna7[1] == .amarillo {
            ganadasAmarillo += 1
            fichaE4.blink()
            fichaE5.blink()
            fichaE6.blink()
            fichaE7.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        
        // Horizontal fila 3 rojo
                        
                if colorCasillaColumna1[2] == .rojo && colorCasillaColumna2[2] == .rojo && colorCasillaColumna3[2] == .rojo && colorCasillaColumna4[2] == .rojo {
                    ganadasRojo += 1
                    fichaD1.blink()
                    fichaD2.blink()
                    fichaD3.blink()
                    fichaD4.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna2[2] == .rojo && colorCasillaColumna3[2] == .rojo && colorCasillaColumna4[2] == .rojo && colorCasillaColumna5[2] == .rojo {
                    ganadasRojo += 1
                    fichaD5.blink()
                    fichaD2.blink()
                    fichaD3.blink()
                    fichaD4.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna3[2] == .rojo && colorCasillaColumna4[2] == .rojo && colorCasillaColumna5[2] == .rojo && colorCasillaColumna6[2] == .rojo {
                    ganadasRojo += 1
                    fichaD5.blink()
                    fichaD6.blink()
                    fichaD3.blink()
                    fichaD4.blink()
                    partidaFinalizada(ganador: "Rojo")
                   
                }
        else if colorCasillaColumna4[2] == .rojo && colorCasillaColumna5[2] == .rojo && colorCasillaColumna6[2] == .rojo && colorCasillaColumna7[2] == .rojo {
            ganadasRojo += 1
            fichaD4.blink()
            fichaD5.blink()
            fichaD6.blink()
            fichaD7.blink()
            partidaFinalizada(ganador: "Rojo")
           
        }
                               

                                        
        // Horizontal fila 3 Amarillo

        if colorCasillaColumna1[2] == .amarillo && colorCasillaColumna2[2] == .amarillo && colorCasillaColumna3[2] == .amarillo && colorCasillaColumna4[2] == .amarillo {
            ganadasAmarillo += 1
            fichaD1.blink()
            fichaD2.blink()
            fichaD3.blink()
            fichaD4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna2[2] == .amarillo && colorCasillaColumna3[2] == .amarillo && colorCasillaColumna4[2] == .amarillo && colorCasillaColumna5[2] == .amarillo {
            ganadasAmarillo += 1
            fichaD5.blink()
            fichaD2.blink()
            fichaD3.blink()
            fichaD4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna3[2] == .amarillo && colorCasillaColumna4[2] == .amarillo && colorCasillaColumna5[2] == .amarillo && colorCasillaColumna6[2] == .amarillo {
            ganadasAmarillo += 1
            fichaD5.blink()
            fichaD6.blink()
            fichaD3.blink()
            fichaD4.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        else if colorCasillaColumna4[2] == .amarillo && colorCasillaColumna5[2] == .amarillo && colorCasillaColumna6[2] == .amarillo && colorCasillaColumna7[2] == .amarillo {
            ganadasAmarillo += 1
            fichaD4.blink()
            fichaD5.blink()
            fichaD6.blink()
            fichaD7.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        
        // Horizontal fila 4 rojo
                        
                if colorCasillaColumna1[3] == .rojo && colorCasillaColumna2[3] == .rojo && colorCasillaColumna3[3] == .rojo && colorCasillaColumna4[3] == .rojo {
                    ganadasRojo += 1
                    fichaC1.blink()
                    fichaC2.blink()
                    fichaC3.blink()
                    fichaC4.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna2[3] == .rojo && colorCasillaColumna3[3] == .rojo && colorCasillaColumna4[3] == .rojo && colorCasillaColumna5[3] == .rojo {
                    ganadasRojo += 1
                    fichaC5.blink()
                    fichaC2.blink()
                    fichaC3.blink()
                    fichaC4.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna3[3] == .rojo && colorCasillaColumna4[3] == .rojo && colorCasillaColumna5[3] == .rojo && colorCasillaColumna6[3] == .rojo {
                    ganadasRojo += 1
                    fichaC5.blink()
                    fichaC6.blink()
                    fichaC3.blink()
                    fichaC4.blink()
                    partidaFinalizada(ganador: "Rojo")
                   
                }
        else if colorCasillaColumna4[3] == .rojo && colorCasillaColumna5[3] == .rojo && colorCasillaColumna6[3] == .rojo && colorCasillaColumna7[3] == .rojo {
            ganadasRojo += 1
            fichaC4.blink()
            fichaC5.blink()
            fichaC6.blink()
            fichaC7.blink()
            partidaFinalizada(ganador: "Rojo")
           
        }
                               

                                        
        // Horizontal fila 4 Amarillo

        if colorCasillaColumna1[3] == .amarillo && colorCasillaColumna2[3] == .amarillo && colorCasillaColumna3[3] == .amarillo && colorCasillaColumna4[3] == .amarillo {
            ganadasAmarillo += 1
            fichaC1.blink()
            fichaC2.blink()
            fichaC3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna2[3] == .amarillo && colorCasillaColumna3[3] == .amarillo && colorCasillaColumna4[3] == .amarillo && colorCasillaColumna5[3] == .amarillo {
            ganadasAmarillo += 1
            fichaC5.blink()
            fichaC2.blink()
            fichaC3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna3[3] == .amarillo && colorCasillaColumna4[3] == .amarillo && colorCasillaColumna5[3] == .amarillo && colorCasillaColumna6[3] == .amarillo {
            ganadasAmarillo += 1
            fichaC5.blink()
            fichaC6.blink()
            fichaC3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        else if colorCasillaColumna4[3] == .amarillo && colorCasillaColumna5[3] == .amarillo && colorCasillaColumna6[3] == .amarillo && colorCasillaColumna7[3] == .amarillo {
            ganadasAmarillo += 1
            fichaC4.blink()
            fichaC5.blink()
            fichaC6.blink()
            fichaC7.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        
        // Horizontal fila 5 rojo
                        
                if colorCasillaColumna1[4] == .rojo && colorCasillaColumna2[4] == .rojo && colorCasillaColumna3[4] == .rojo && colorCasillaColumna4[4] == .rojo {
                    ganadasRojo += 1
                    fichaB1.blink()
                    fichaB2.blink()
                    fichaB3.blink()
                    fichaB4.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna2[4] == .rojo && colorCasillaColumna3[4] == .rojo && colorCasillaColumna4[4] == .rojo && colorCasillaColumna5[4] == .rojo {
                    ganadasRojo += 1
                    fichaB5.blink()
                    fichaB2.blink()
                    fichaB3.blink()
                    fichaB4.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna3[4] == .rojo && colorCasillaColumna4[4] == .rojo && colorCasillaColumna5[4] == .rojo && colorCasillaColumna6[4] == .rojo {
                    ganadasRojo += 1
                    fichaB5.blink()
                    fichaB6.blink()
                    fichaB3.blink()
                    fichaB4.blink()
                    partidaFinalizada(ganador: "Rojo")
                   
                }
        else if colorCasillaColumna4[4] == .rojo && colorCasillaColumna5[4] == .rojo && colorCasillaColumna6[4] == .rojo && colorCasillaColumna7[4] == .rojo {
            ganadasRojo += 1
            fichaB4.blink()
            fichaB5.blink()
            fichaB6.blink()
            fichaB7.blink()
            partidaFinalizada(ganador: "Rojo")
           
        }
                  
                               

                                        
        // Horizontal fila 5 Amarillo

        if colorCasillaColumna1[4] == .amarillo && colorCasillaColumna2[4] == .amarillo && colorCasillaColumna3[4] == .amarillo && colorCasillaColumna4[4] == .amarillo {
            ganadasAmarillo += 1
            fichaB1.blink()
            fichaB2.blink()
            fichaB3.blink()
            fichaB4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna2[4] == .amarillo && colorCasillaColumna3[4] == .amarillo && colorCasillaColumna4[4] == .amarillo && colorCasillaColumna5[4] == .amarillo {
            ganadasAmarillo += 1
            fichaB5.blink()
            fichaB2.blink()
            fichaB3.blink()
            fichaB4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna3[4] == .amarillo && colorCasillaColumna4[4] == .amarillo && colorCasillaColumna5[4] == .amarillo && colorCasillaColumna6[4] == .amarillo {
            ganadasAmarillo += 1
            fichaB5.blink()
            fichaB6.blink()
            fichaB3.blink()
            fichaB4.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        else if colorCasillaColumna4[4] == .amarillo && colorCasillaColumna5[4] == .amarillo && colorCasillaColumna6[4] == .amarillo && colorCasillaColumna7[4] == .amarillo {
            ganadasAmarillo += 1
            fichaB4.blink()
            fichaB5.blink()
            fichaB6.blink()
            fichaB7.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        
        // Horizontal fila 6 rojo
                        
                if colorCasillaColumna1[5] == .rojo && colorCasillaColumna2[5] == .rojo && colorCasillaColumna3[5] == .rojo && colorCasillaColumna4[5] == .rojo {
                    ganadasRojo += 1
                    fichaA1.blink()
                    fichaA2.blink()
                    fichaA3.blink()
                    fichaA4.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna2[5] == .rojo && colorCasillaColumna3[5] == .rojo && colorCasillaColumna4[5] == .rojo && colorCasillaColumna5[5] == .rojo {
                    ganadasRojo += 1
                    fichaA5.blink()
                    fichaA2.blink()
                    fichaA3.blink()
                    fichaA4.blink()
                    partidaFinalizada(ganador: "Rojo")
                    
                }
                else if colorCasillaColumna3[5] == .rojo && colorCasillaColumna4[5] == .rojo && colorCasillaColumna5[5] == .rojo && colorCasillaColumna6[5] == .rojo {
                    ganadasRojo += 1
                    fichaA5.blink()
                    fichaA6.blink()
                    fichaA3.blink()
                    fichaA4.blink()
                    partidaFinalizada(ganador: "Rojo")
                   
                }
        else if colorCasillaColumna4[5] == .rojo && colorCasillaColumna5[5] == .rojo && colorCasillaColumna6[5] == .rojo && colorCasillaColumna7[5] == .rojo {
            ganadasRojo += 1
            fichaA4.blink()
            fichaA5.blink()
            fichaA6.blink()
            fichaA7.blink()
            partidaFinalizada(ganador: "Rojo")
           
        }
                               

                                        
        // Horizontal fila 6 Amarillo

        if colorCasillaColumna1[5] == .amarillo && colorCasillaColumna2[5] == .amarillo && colorCasillaColumna3[5] == .amarillo && colorCasillaColumna4[5] == .amarillo {
            ganadasAmarillo += 1
            fichaA1.blink()
            fichaA2.blink()
            fichaA3.blink()
            fichaA4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna2[5] == .amarillo && colorCasillaColumna3[5] == .amarillo && colorCasillaColumna4[5] == .amarillo && colorCasillaColumna5[5] == .amarillo {
            ganadasAmarillo += 1
            fichaA5.blink()
            fichaA2.blink()
            fichaA3.blink()
            fichaA4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna3[5] == .amarillo && colorCasillaColumna4[5] == .amarillo && colorCasillaColumna5[5] == .amarillo && colorCasillaColumna6[5] == .amarillo {
            ganadasAmarillo += 1
            fichaA5.blink()
            fichaA6.blink()
            fichaA3.blink()
            fichaA4.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        else if colorCasillaColumna4[5] == .amarillo && colorCasillaColumna5[5] == .amarillo && colorCasillaColumna6[5] == .amarillo && colorCasillaColumna7[5] == .amarillo {
            ganadasAmarillo += 1
            fichaA4.blink()
            fichaA5.blink()
            fichaA6.blink()
            fichaA7.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
    }
   
    private func diagonalesIzqDchaAbajo() {
        
        // Diagonal de 1.0 a 6.5 Rojo
        
        if colorCasillaColumna1[0] == .rojo && colorCasillaColumna2[1] == .rojo && colorCasillaColumna3[2] == .rojo && colorCasillaColumna4[3] == .rojo {
            ganadasRojo += 1
            fichaF1.blink()
            fichaE2.blink()
            fichaD3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        else if colorCasillaColumna2[1] == .rojo && colorCasillaColumna3[2] == .rojo && colorCasillaColumna4[3] == .rojo && colorCasillaColumna5[4] == .rojo {
            ganadasRojo += 1
            fichaB5.blink()
            fichaE2.blink()
            fichaD3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        else if colorCasillaColumna3[2] == .rojo && colorCasillaColumna4[3] == .rojo && colorCasillaColumna5[4] == .rojo && colorCasillaColumna6[5] == .rojo {
            ganadasRojo += 1
            fichaB5.blink()
            fichaA6.blink()
            fichaD3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Rojo")
           
        }
        
        // Diagonal de 1.0 a 6.5 amarillo
        
        if colorCasillaColumna1[0] == .amarillo && colorCasillaColumna2[1] == .amarillo && colorCasillaColumna3[2] == .amarillo && colorCasillaColumna4[3] == .amarillo {
            ganadasAmarillo += 1
            fichaF1.blink()
            fichaE2.blink()
            fichaD3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna2[1] == .amarillo && colorCasillaColumna3[2] == .amarillo && colorCasillaColumna4[3] == .amarillo && colorCasillaColumna5[4] == .amarillo {
            ganadasAmarillo += 1
            fichaB5.blink()
            fichaE2.blink()
            fichaD3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna3[2] == .amarillo && colorCasillaColumna4[3] == .amarillo && colorCasillaColumna5[4] == .amarillo && colorCasillaColumna6[5] == .amarillo {
            ganadasAmarillo += 1
            fichaB5.blink()
            fichaA6.blink()
            fichaD3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        
        // Diagonal de 1.1 a 5.5 Rojo
        
        if colorCasillaColumna1[1] == .rojo && colorCasillaColumna2[2] == .rojo && colorCasillaColumna3[3] == .rojo && colorCasillaColumna4[4] == .rojo {
            ganadasRojo += 1
            fichaE1.blink()
            fichaD2.blink()
            fichaC3.blink()
            fichaB4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        else if colorCasillaColumna2[2] == .rojo && colorCasillaColumna3[3] == .rojo && colorCasillaColumna4[4] == .rojo && colorCasillaColumna5[5] == .rojo {
            ganadasRojo += 1
            fichaA5.blink()
            fichaD2.blink()
            fichaC3.blink()
            fichaB4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        
        // Diagonal de 1.1 a 5.5 Amarillo
        
        if colorCasillaColumna1[1] == .amarillo && colorCasillaColumna2[2] == .amarillo && colorCasillaColumna3[3] == .amarillo && colorCasillaColumna4[4] == .amarillo {
            ganadasAmarillo += 1
            fichaE1.blink()
            fichaD2.blink()
            fichaC3.blink()
            fichaB4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna2[2] == .amarillo && colorCasillaColumna3[3] == .amarillo && colorCasillaColumna4[4] == .amarillo && colorCasillaColumna5[5] == .amarillo {
            ganadasAmarillo += 1
            fichaA5.blink()
            fichaD2.blink()
            fichaC3.blink()
            fichaB4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        
        // Diagonal de 1.2 a 4.5 Rojo
        
        if colorCasillaColumna1[2] == .rojo && colorCasillaColumna2[3] == .rojo && colorCasillaColumna3[4] == .rojo && colorCasillaColumna4[5] == .rojo {
            ganadasRojo += 1
            fichaD1.blink()
            fichaC2.blink()
            fichaB3.blink()
            fichaA4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        
        // Diagonal de 1.2 a 4.5 Amarillo
        
        if colorCasillaColumna1[2] == .amarillo && colorCasillaColumna2[3] == .amarillo && colorCasillaColumna3[4] == .amarillo && colorCasillaColumna4[5] == .amarillo {
            ganadasAmarillo += 1
            fichaD1.blink()
            fichaC2.blink()
            fichaB3.blink()
            fichaA4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        
        // Diagonal de 2.0 a 7.5 Rojo
        
        if colorCasillaColumna2[0] == .rojo && colorCasillaColumna3[1] == .rojo && colorCasillaColumna4[2] == .rojo && colorCasillaColumna5[3] == .rojo {
            ganadasRojo += 1
            fichaF2.blink()
            fichaE3.blink()
            fichaD4.blink()
            fichaC5.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        else if colorCasillaColumna3[1] == .rojo && colorCasillaColumna4[2] == .rojo && colorCasillaColumna5[3] == .rojo && colorCasillaColumna6[4] == .rojo {
            ganadasRojo += 1
            fichaB6.blink()
            fichaE3.blink()
            fichaD4.blink()
            fichaC5.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        else if colorCasillaColumna7[5] == .rojo && colorCasillaColumna4[2] == .rojo && colorCasillaColumna5[3] == .rojo && colorCasillaColumna6[4] == .rojo {
            ganadasRojo += 1
            fichaB6.blink()
            fichaA7.blink()
            fichaD4.blink()
            fichaC5.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        
        // Diagonal de 2.0 a 6.4 Amarillo
        
        if colorCasillaColumna2[0] == .amarillo && colorCasillaColumna3[1] == .amarillo && colorCasillaColumna4[2] == .amarillo && colorCasillaColumna5[3] == .amarillo {
            ganadasAmarillo += 1
            fichaF2.blink()
            fichaE3.blink()
            fichaD4.blink()
            fichaC5.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna3[1] == .amarillo && colorCasillaColumna4[2] == .amarillo && colorCasillaColumna5[3] == .amarillo && colorCasillaColumna6[4] == .amarillo {
            ganadasAmarillo += 1
            fichaB6.blink()
            fichaE3.blink()
            fichaD4.blink()
            fichaC5.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna7[5] == .amarillo && colorCasillaColumna4[2] == .amarillo && colorCasillaColumna5[3] == .amarillo && colorCasillaColumna6[4] == .amarillo {
            ganadasAmarillo += 1
            fichaB6.blink()
            fichaA7.blink()
            fichaD4.blink()
            fichaC5.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        
        // Diagonal de 3.0 a 7.4 Rojo
        
        if colorCasillaColumna3[0] == .rojo && colorCasillaColumna4[1] == .rojo && colorCasillaColumna5[2] == .rojo && colorCasillaColumna6[3] == .rojo {
            ganadasRojo += 1
            fichaF3.blink()
            fichaE4.blink()
            fichaD5.blink()
            fichaC6.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        if colorCasillaColumna7[4] == .rojo && colorCasillaColumna4[1] == .rojo && colorCasillaColumna5[2] == .rojo && colorCasillaColumna6[3] == .rojo {
            ganadasRojo += 1
            fichaB7.blink()
            fichaE4.blink()
            fichaD5.blink()
            fichaC6.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        
        // Diagonal de 3.0 a 7.4 Amarillo
        
        if colorCasillaColumna3[0] == .amarillo && colorCasillaColumna4[1] == .amarillo && colorCasillaColumna5[2] == .amarillo && colorCasillaColumna6[3] == .amarillo {
            ganadasAmarillo += 1
            fichaF3.blink()
            fichaE4.blink()
            fichaD5.blink()
            fichaC6.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        if colorCasillaColumna7[4] == .amarillo && colorCasillaColumna4[1] == .amarillo && colorCasillaColumna5[2] == .amarillo && colorCasillaColumna6[3] == .amarillo {
            ganadasAmarillo += 1
            fichaB7.blink()
            fichaE4.blink()
            fichaD5.blink()
            fichaC6.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        // Diagonal de 4.0 a 7.3 Rojo
        
        if colorCasillaColumna7[3] == .rojo && colorCasillaColumna4[0] == .rojo && colorCasillaColumna5[1] == .rojo && colorCasillaColumna6[2] == .rojo {
            ganadasRojo += 1
            fichaF4.blink()
            fichaE5.blink()
            fichaD6.blink()
            fichaC7.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        
        // Diagonal de 4.0 a 7.3 Amarillo
        
        
        if colorCasillaColumna7[3] == .amarillo && colorCasillaColumna4[0] == .amarillo && colorCasillaColumna5[1] == .amarillo && colorCasillaColumna6[2] == .amarillo {
            ganadasAmarillo += 1
            fichaF4.blink()
            fichaE5.blink()
            fichaD6.blink()
            fichaC7.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
            
        
        
        
        
    }
    
    private func diagonalesIzqDchaArriba() {
        
        // Diagonal de 1.5 a 6.0 Rojo
        
        if colorCasillaColumna1[5] == .rojo && colorCasillaColumna2[4] == .rojo && colorCasillaColumna3[3] == .rojo && colorCasillaColumna4[2] == .rojo {
            ganadasRojo += 1
            fichaA1.blink()
            fichaB2.blink()
            fichaC3.blink()
            fichaD4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        else if colorCasillaColumna2[4] == .rojo && colorCasillaColumna3[3] == .rojo && colorCasillaColumna4[2] == .rojo && colorCasillaColumna5[1] == .rojo {
            ganadasRojo += 1
            fichaE5.blink()
            fichaB2.blink()
            fichaC3.blink()
            fichaD4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        else if colorCasillaColumna3[3] == .rojo && colorCasillaColumna4[2] == .rojo && colorCasillaColumna5[1] == .rojo && colorCasillaColumna6[0] == .rojo {
            ganadasRojo += 1
            fichaE5.blink()
            fichaF6.blink()
            fichaC3.blink()
            fichaD4.blink()
            partidaFinalizada(ganador: "Rojo")
           
        }
        
        // Diagonal de 1.5 a 6.0 amarillo
        
        if colorCasillaColumna1[5] == .amarillo && colorCasillaColumna2[4] == .amarillo && colorCasillaColumna3[3] == .amarillo && colorCasillaColumna4[2] == .amarillo {
            ganadasAmarillo += 1
            fichaA1.blink()
            fichaB2.blink()
            fichaC3.blink()
            fichaD4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna2[4] == .amarillo && colorCasillaColumna3[3] == .amarillo && colorCasillaColumna4[2] == .amarillo && colorCasillaColumna5[1] == .amarillo {
            ganadasAmarillo += 1
            fichaE5.blink()
            fichaB2.blink()
            fichaC3.blink()
            fichaD4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna3[3] == .amarillo && colorCasillaColumna4[2] == .amarillo && colorCasillaColumna5[1] == .amarillo && colorCasillaColumna6[0] == .amarillo {
            ganadasAmarillo += 1
            fichaE5.blink()
            fichaF6.blink()
            fichaC3.blink()
            fichaD4.blink()
            partidaFinalizada(ganador: "Amarillo")
           
        }
        
        // Diagonal de 1.4 a 5.0 Rojo
        
        if colorCasillaColumna1[4] == .rojo && colorCasillaColumna2[3] == .rojo && colorCasillaColumna3[2] == .rojo && colorCasillaColumna4[1] == .rojo {
            ganadasRojo += 1
            fichaB1.blink()
            fichaC2.blink()
            fichaD3.blink()
            fichaE4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        else if colorCasillaColumna2[3] == .rojo && colorCasillaColumna3[2] == .rojo && colorCasillaColumna4[1] == .rojo && colorCasillaColumna5[0] == .rojo {
            ganadasRojo += 1
            fichaF5.blink()
            fichaC2.blink()
            fichaD3.blink()
            fichaE4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        
        // Diagonal de 1.4 a 5.0 Amarillo
        
        if colorCasillaColumna1[4] == .amarillo && colorCasillaColumna2[3] == .amarillo && colorCasillaColumna3[2] == .amarillo && colorCasillaColumna4[1] == .amarillo {
            ganadasAmarillo += 1
            fichaB1.blink()
            fichaC2.blink()
            fichaD3.blink()
            fichaE4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna2[3] == .amarillo && colorCasillaColumna3[2] == .amarillo && colorCasillaColumna4[1] == .amarillo && colorCasillaColumna5[0] == .amarillo {
            ganadasAmarillo += 1
            fichaF5.blink()
            fichaC2.blink()
            fichaD3.blink()
            fichaE4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        
        // Diagonal de 1.3 a 4.0 Rojo
        
        if colorCasillaColumna1[3] == .rojo && colorCasillaColumna2[2] == .rojo && colorCasillaColumna3[1] == .rojo && colorCasillaColumna4[0] == .rojo {
            ganadasRojo += 1
            fichaC1.blink()
            fichaD2.blink()
            fichaE3.blink()
            fichaF4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        
        // Diagonal de 1.3 a 4.0 Amarillo
        
        if colorCasillaColumna1[3] == .amarillo && colorCasillaColumna2[2] == .amarillo && colorCasillaColumna3[1] == .amarillo && colorCasillaColumna4[0] == .amarillo {
            ganadasAmarillo += 1
            fichaC1.blink()
            fichaD2.blink()
            fichaE3.blink()
            fichaF4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        
        // Diagonal de 2.5 a 7.0 Rojo
        
        if colorCasillaColumna2[5] == .rojo && colorCasillaColumna3[4] == .rojo && colorCasillaColumna4[3] == .rojo && colorCasillaColumna5[2] == .rojo {
            ganadasRojo += 1
            fichaD5.blink()
            fichaA2.blink()
            fichaB3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        else if colorCasillaColumna7[0] == .rojo && colorCasillaColumna4[3] == .rojo && colorCasillaColumna5[2] == .rojo && colorCasillaColumna6[1] == .rojo {
            ganadasRojo += 1
            fichaD5.blink()
            fichaE6.blink()
            fichaF7.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        else if colorCasillaColumna3[4] == .rojo && colorCasillaColumna4[3] == .rojo && colorCasillaColumna5[2] == .rojo && colorCasillaColumna6[1] == .rojo {
            ganadasRojo += 1
            fichaD5.blink()
            fichaE6.blink()
            fichaB3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        
        // Diagonal de 2.5 a 7.0 Amarillo
        
        if colorCasillaColumna2[5] == .amarillo && colorCasillaColumna3[4] == .amarillo && colorCasillaColumna4[3] == .amarillo && colorCasillaColumna5[2] == .amarillo {
            ganadasAmarillo += 1
            fichaD5.blink()
            fichaA2.blink()
            fichaB3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna3[4] == .amarillo && colorCasillaColumna4[3] == .amarillo && colorCasillaColumna5[2] == .amarillo && colorCasillaColumna6[1] == .amarillo {
            ganadasAmarillo += 1
            fichaD5.blink()
            fichaE6.blink()
            fichaB3.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna7[0] == .amarillo && colorCasillaColumna4[3] == .amarillo && colorCasillaColumna5[2] == .amarillo && colorCasillaColumna6[1] == .amarillo {
            ganadasAmarillo += 1
            fichaD5.blink()
            fichaE6.blink()
            fichaF7.blink()
            fichaC4.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        
        // Diagonal de 3.5 a 7.1 Rojo
        
        if colorCasillaColumna3[5] == .rojo && colorCasillaColumna4[4] == .rojo && colorCasillaColumna5[3] == .rojo && colorCasillaColumna6[2] == .rojo {
            ganadasRojo += 1
            fichaA3.blink()
            fichaB4.blink()
            fichaC5.blink()
            fichaD6.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        if colorCasillaColumna7[1] == .rojo && colorCasillaColumna4[4] == .rojo && colorCasillaColumna5[3] == .rojo && colorCasillaColumna6[2] == .rojo {
            ganadasRojo += 1
            fichaE7.blink()
            fichaB4.blink()
            fichaC5.blink()
            fichaD6.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        
        
        // Diagonal de 3.5 a 7.1 Amarillo
        
        if colorCasillaColumna3[5] == .amarillo && colorCasillaColumna4[4] == .amarillo && colorCasillaColumna5[3] == .amarillo && colorCasillaColumna6[2] == .amarillo {
            ganadasAmarillo += 1
            fichaA3.blink()
            fichaB4.blink()
            fichaC5.blink()
            fichaD6.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        else if colorCasillaColumna7[1] == .amarillo && colorCasillaColumna4[4] == .amarillo && colorCasillaColumna5[3] == .amarillo && colorCasillaColumna6[2] == .amarillo {
            ganadasAmarillo += 1
            fichaE7.blink()
            fichaB4.blink()
            fichaC5.blink()
            fichaD6.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        // Diagonal de 4.5 a 7.2 Rojo
        
        if colorCasillaColumna7[2] == .rojo && colorCasillaColumna4[5] == .rojo && colorCasillaColumna5[4] == .rojo && colorCasillaColumna6[3] == .rojo {
            ganadasRojo += 1
            fichaA4.blink()
            fichaB5.blink()
            fichaC6.blink()
            fichaD7.blink()
            partidaFinalizada(ganador: "Rojo")
            
        }
        
        // Diagonal de 4.5 a 7.2 Amarillo
        
        if colorCasillaColumna7[2] == .amarillo && colorCasillaColumna4[5] == .amarillo && colorCasillaColumna5[4] == .amarillo && colorCasillaColumna6[3] == .amarillo {
            ganadasAmarillo += 1
            fichaA4.blink()
            fichaB5.blink()
            fichaC6.blink()
            fichaD7.blink()
            partidaFinalizada(ganador: "Amarillo")
            
        }
        
        
        
        
    }
    
    private func partidaFinalizada(ganador: String) {
        
        ponerFicha = false
        marcadorRojo.text = "\(ganadasRojo)"
        marcadorAmarillo.text = "\(ganadasAmarillo)"
        
        retardoAlerta = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { [self] timer in
        
            let finPartida = UIAlertController(title: "Ganador jugador \(ganador)", message: "¿Quiere Comenzar otra Nueva?", preferredStyle: .alert)
            
            finPartida.addAction(UIAlertAction(title: "Comenzar", style: .default, handler: { _ in
                
                retardoAlerta = Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { [self] timer in
                
                    self.reiniciarPartida()

                }
                
            }))
            
            present(finPartida, animated: true, completion: .none)

        }
        
        
        
        
    }
    
    

}
