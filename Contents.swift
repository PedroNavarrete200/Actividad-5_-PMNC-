//Punto 1
import Foundation

class Persona
{

var estatura:Float, saludo = “”
var edad:Int, camino = 0

      func Caminar(pasos:Int)
     {
      self.camino = pasos
     }

      func Hablar(mensaje:string)
     {
           self.saludo = mensaje 

     }

}

var persona = persona.Caminar(pasos: 80)
persona.Hablar(mensaje: "Mucho gusto")


print("Persona caminó \(persona.Caminar) pasos")
print("La persona dice \(persona.Hablar)")


//Punto 2

struct video
{
    var alto:Int 
    var ancho:Int

    init(alto:Int, ancho:Int)
     {
      self.alto = alto
      self.ancho = ancho  
     }

     func QueResolucion() -> (Int, Int)
     {
         return (self.alto, self.ancho)
     }

}   


var hd = Video(alto: 1810, ancho: 990)

var vga = Video(alto: 990, ancho: 680)

hd.QueResolucion()
vga.QueResolucion()

var fullhd = hd
fullhd.QueResolucion()
hd.QueResolucion()

fullhd.alto = 1810
fullhd.ancho = 990

//Punto 3

extension Int 
{
    var dias:Int 
    {
        return self*12*30
    }
    func horas() -> Int 
    {
        return self*24*60
    }
}

//Horas a Segundos

4.horas()

//Punto 4

func getDayOfWeek(today:String)->Int
{
    let formatter  = NSDateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    let todayDate = formatter.dateFromString(today)!
    let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
    let myComponents = myCalendar.components(.Weekday, fromDate: todayDate)
    let weekDay = myComponents.weekday
    return weekDay
}

let weekday = getDayOfWeek(fecha)

//Punto  5

var ciudad = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var existe:Int?

existe = ciudad["DF"]
existe = ciudad["PUE"]

if let temp = ciudad["DF"]
{
    print("Si existe")
}
else
{
    print("No existe")
}





