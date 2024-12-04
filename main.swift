//
//  main.swift
//  MySwiftCalculator
//
//

import Foundation

func obtenerDatos(){
    print("Ingrese el primer numero: ")
    var  n1: Double? , n2: Double?
    
    n1 = Double(readLine()!)
    while n1 == nil{//para verificar que no sea una letra o vacio
        print("Favor ingresar un numero valido\n")
        
        n1 = Double(readLine()!)
    }
    print("Ingrese el segundo numero: ")
    n2 = Double(readLine()!)
    while n2 == nil{//para verificar que no sea una letra o vacio
        print("Favor ingresar un numero valido\n")
        n2 = Double(readLine()!)
    }
    
    print("Ingrese la operacion a realizar(* / - +): ")
    let operation = readLine()
    
    switch operation {
    case "+":
        print("El resultado es \(sum(n1!, n2!))")
    case "*":
        print("El resultado es \(multiply(n1!, n2!))")
    case "/":
        if 0 == n2 {
            print("Error: No se puede dividir entre cero")
        }else{
            print("El resultado es \(divide(n1!, n2!))")
        }
    case "-":
        print("El resultado es \(rest(n1!, n2!))")
    default:
        print("Error: Operacion no valida")
    }
    
}

func sum(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double {
    return a / b
}

func rest(_ a: Double, _ b: Double) -> Double {
    return a - b
}

obtenerDatos()
