//
//  HappyKingModel.swift
//  
//
//  Created by Jorge Barrios on 7/31/15.
//
//

import Foundation

class HappyKingModel: NSObject {
    
    let deck = ["2_of_clubs","3_of_spades","4_of_hearts","5_of_diamonds","6_of_clubs","7_of_hearts","8_of_spades","9_of_spades","10_of_diamonds","jack_of_clubs2","queen_of_clubs2","king_of_hearts2","ace_of_spades"]
    
    func dealOneCard()->String{
        let index: Int = Int(arc4random_uniform(13))
        let card = deck[index]
        return card
    }
    
    
    let gameByCardDictionary: [String:[String]] = [
        "2_of_clubs": ["Manda 2 Tragos","El jugador tiene 2 bebidas completas y decide quienes las tomaran de golpe"] ,
        "3_of_spades": ["Pepa Pinga","Se elige una letra al azar, estilo Basta! Los jugadores deberan decir 'Mi pepa (mujer)/pinga (hombre) es...' seguida de un adjetivo que empiece con esa letra. Ejemplo: 'Mi pepa es bellísima''Mi pinga es bárbara' El juego termina cuando una persona no sabe que decir o repite un adjetivo. Ese jugador toma un trago"],
        "4_of_hearts": ["Caricachupas", "El primer jugador empieza diciendo 'Caricachupas', el segundo dice 'Presenta', el tercero dice 'Nombres de' y el cuarto menciona un tema y los jugadores deberan decir una palabra relacionada con ese tema. Ejemplo: Caricachupas.. Presenta.. Nombres de.. Equipos de fútbol mexicano.. Por ejemplo.. America.. Pumas.. El juego termina cuando alguien no sabe que decir o repite una palabra. Ese jugador toma un trago."],
        "5_of_diamonds": ["Verdad o Reto","EL jugador que sacó carta le pregunta verdad o reto a cada uno de los demás jugadores. Si algun jugador se niega a responder, debe tomar un shot"],
        "6_of_clubs": ["Animalitos","Cada jugador escoje un animal del que pueda imitar un sonido y lo comparte con los demás. El juego empieza con el primer jugador diciendo su animal, haciendo el sonido y llamando a otro animal haciendo su sonido. Ejemplo: Perro 'guau guau' llamando a Pajarito 'pio pio'. El objetivo del juego es hacer esto sucesivamente sin mostrar los dientes, el primer jugador en enseñar los dientes toma su bebida."],
        "7_of_hearts": ["Multiplos","El jugador elige un número y se lo dice a los demás. Él empieza la cuenta de uno en uno, el segundo jugador dice el numero siguiente y así sucesivamente, evitando los multiplos del número. Ejemplo: Se elige el número 3. La cuenta va: 1,2,4,5,7. El juego termina cuando un jugador dice un número equivocado. Ese jugador toma un trago. "],
        "8_of_spades": ["Dedo","El jugador adquiere el poder de poner el dedo indice en la mesa disimuladamente y todos los otros jugadores lo tienen que hacer. Esto lo puede hacer en cualquier momento y el último jugador en poner el dedo, debe tomar una bebida. Se transfiere el poder cuando otro jugador saque un ocho"],
        "9_of_spades":[ "Yo Nunca Nunca","El jugador dice 'Yo nunca nunca he' seguido de una accion que él no ha hecho pero probablemente sus amigos sí. Ejemplo: 'Yo nunca nunca he tomado alcohol en la escuela/trabajo' En este juego se demuestra confianza ya que si alguien ha hecho esa acción debe tomar. Prepárate para enterarte de los mejores chismes"],
        "10_of_diamonds": ["Historia","El jugador comienza diciendo 'Habia una vez...' y los siguientes jugadores repiten la hisoria y añaden una palabra. El juego termina cuando un jugador pierde si no logra repetir la historia en el orden adecuado o agrega más de una palabra. El perdedor debe tomar un trago. El juego se trata de crear la historia mas graciosa y complicada posible."],
        "jack_of_clubs2": ["Hombres Toman","Todos los hombres toman un trago de golpe! Aquí se define quién sí es hombre"],
        "queen_of_clubs2": ["Mujeres Toman","Todas las mujeres toman un trago de golpe! Sí, las damas también"],
        "king_of_hearts2": ["Regla","El rey pone nueva regla que los demas jugadores deben seguir. Ejemplo: Nadie dice malas palabras, el que lo haga toma un shot. La regla esta vigente hasta que salga otro rey."],
        "ace_of_spades": ["¡Todos Toman!","Todos los jugadores agarran una bebida y la toman juntos al mismo tiempo. De esta nadie se salva!"]
    ]
    
}
