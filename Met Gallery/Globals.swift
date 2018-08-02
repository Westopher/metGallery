//
//  Globals.swift
//  Met Gallery
//
//  Created by West Kraemer on 7/26/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

// MARK: - GLOBAL VARIABLES ---------------------------

let device = UIDevice.current
let application = UIApplication.shared
let appDelegate = application.delegate as! AppDelegate

var paintingDetailVC: PaintingDetailVC!
var fullScreenSetToLandscapeMode: Bool = false

// MARK: - DATA MODEL ---------------------------

class Painting {
    var thumbName: String
    var imageName: String
    var artist: String
    var title: String
    var date: String
    var onlineReference: String
    
    init(thumbName: String, imageName: String, artist: String, title: String, date: String, onlineReference: String) {
        self.thumbName = thumbName
        self.imageName = imageName
        self.artist = artist
        self.title = title
        self.date = date
        self.onlineReference = onlineReference
    }
}

var paintings: [Painting] = {
    var paintings = [Painting]()
    paintings.append(Painting(thumbName:"DP259921-thumb", imageName: "DP259921", artist: "Georges Seurat", title: "Study for \"A Sunday on La Grande Jatte\"", date: "1884", onlineReference: "http://metmuseum.org/art/collection/search/437658"))
    paintings.append(Painting(thumbName:"DP152808-thumb", imageName: "DP152808", artist: "Rembrandt", title: "Self-Portrait", date: "1660", onlineReference: "http://metmuseum.org/art/collection/search/437397"))
    paintings.append(Painting(thumbName:"DT1937-thumb", imageName: "DT1937", artist: "Paul Cézanne", title: "View of the Domaine Saint-Joseph", date: "late 1880s", onlineReference: "http://metmuseum.org/art/collection/search/435885"))
    paintings.append(Painting(thumbName:"DT88-thumb", imageName: "DT88", artist: "Mary Cassatt", title: "The Cup of Tea", date: "ca. 1880–81", onlineReference: "http://metmuseum.org/art/collection/search/10388"))
    paintings.append(Painting(thumbName:"DT1854-thumb", imageName: "DT1854", artist: "Claude Monet", title: "Bridge over a Pond of Water Lilies", date: "1899", onlineReference: "http://metmuseum.org/art/collection/search/437127"))
    paintings.append(Painting(thumbName:"DT1859-thumb", imageName: "DT1859", artist: "Camille Pissarro", title: "Jalais Hill, Pontoise", date: "1867", onlineReference: "http://metmuseum.org/art/collection/search/437299"))
    paintings.append(Painting(thumbName:"DT1567-thumb", imageName: "DT1567", artist: "Vincent van Gogh", title: "Wheat Field with Cypresses", date: "1889", onlineReference: "http://metmuseum.org/art/collection/search/436535"))
    paintings.append(Painting(thumbName:"DT5571-thumb", imageName: "DT5571", artist: "Childe Hassam", title: "Winter in Union Square", date: "1889–90", onlineReference: "http://metmuseum.org/art/collection/search/16881"))
    paintings.append(Painting(thumbName:"DT47-thumb", imageName: "DT47", artist: "Paul Cézanne", title: "Still Life with Apples and a Pot of Primroses", date: "ca. 1890", onlineReference: "http://metmuseum.org/art/collection/search/435882"))
    paintings.append(Painting(thumbName:"DT1565-thumb", imageName: "DT1565", artist: "Edgar Degas", title: "The Rehearsal of the Ballet Onstage", date: "ca. 1874", onlineReference: "http://metmuseum.org/art/collection/search/436155"))
    paintings.append(Painting(thumbName:"DT1947-thumb", imageName: "DT1947", artist: "Vincent van Gogh", title: "Shoes", date: "1888", onlineReference: "http://metmuseum.org/art/collection/search/436533"))
    paintings.append(Painting(thumbName:"DT7098-thumb", imageName: "DT7098", artist: "Vincent van Gogh", title: "Bouquet of Flowers in a Vase", date: "1890", onlineReference: "http://metmuseum.org/art/collection/search/436525"))
    paintings.append(Painting(thumbName:"DT1883-thumb", imageName: "DT1883", artist: "Edgar Degas", title: "The Dance Lesson", date: "ca. 1879", onlineReference: "http://metmuseum.org/art/collection/search/436132"))
    paintings.append(Painting(thumbName:"DT46-thumb", imageName: "DT46", artist: "Edgar Degas", title: "The Dance Class", date: "1874", onlineReference: "http://metmuseum.org/art/collection/search/436141"))
    paintings.append(Painting(thumbName:"DT3108-thumb", imageName: "DT3108", artist: "Paul Cézanne", title: "Trees and Houses Near the Jas de Bouffan", date: "1885–86", onlineReference: "http://metmuseum.org/art/collection/search/459092"))
    paintings.append(Painting(thumbName:"DP231550-thumb", imageName: "DP231550", artist: "Paul Cézanne", title: "The Card Players", date: "1890–92", onlineReference: "http://metmuseum.org/art/collection/search/435868"))
    paintings.append(Painting(thumbName:"DT1938-thumb", imageName: "DT1938", artist: "Paul Cézanne", title: "Gustave Boyer (b. 1840) in a Straw Hat", date: "1870–71", onlineReference: "http://metmuseum.org/art/collection/search/435873"))
    paintings.append(Painting(thumbName:"DT1943-thumb", imageName: "DT1943", artist: "Paul Cézanne", title: "The House with the Cracked Walls", date: "1892–94", onlineReference: "http://metmuseum.org/art/collection/search/435874"))
    paintings.append(Painting(thumbName:"DT1563-thumb", imageName: "DT1563", artist: "Édouard Manet", title: "Fishing", date: "ca. 1862–63", onlineReference: "http://metmuseum.org/art/collection/search/436951"))
    paintings.append(Painting(thumbName:"DP169650-thumb", imageName: "DP169650", artist: "Frederick Waters Watts", title: "An Old Bridge at Hendon, Middlesex", date: "ca. 1828", onlineReference: "http://metmuseum.org/art/collection/search/437935"))
    paintings.append(Painting(thumbName:"DT2091-thumb", imageName: "DT2091", artist: "Charles Caleb Ward", title: "Coming Events Cast Their Shadows Before", date: "1871", onlineReference: "http://metmuseum.org/art/collection/search/13131"))
    paintings.append(Painting(thumbName:"DT11612-thumb", imageName: "DT11612", artist: "Thomas Sully", title: "Mother and Son", date: "1840", onlineReference: "http://metmuseum.org/art/collection/search/12693"))
    paintings.append(Painting(thumbName:"APS2199-thumb", imageName: "APS2199", artist: "Stacy Tolman", title: "The Etcher", date: "ca. 1887–89", onlineReference: "http://metmuseum.org/art/collection/search/12810"))
    paintings.append(Painting(thumbName:"DT2074-thumb", imageName: "DT2074", artist: "John Ferguson Weir", title: "Forging the Shaft", date: "1874–77", onlineReference: "http://metmuseum.org/art/collection/search/13174"))
    paintings.append(Painting(thumbName:"DT1367-thumb", imageName: "DT1367", artist: "John Kane", title: "The Monongahela River Valley, Pennsylvania", date: "1931", onlineReference: "http://metmuseum.org/art/collection/search/19346"))
    paintings.append(Painting(thumbName:"DT3128-thumb", imageName: "DT3128", artist: "Auguste Renoir", title: "Figures on the Beach", date: "1890", onlineReference: "http://metmuseum.org/art/collection/search/459109"))
    paintings.append(Painting(thumbName:"DT3119-thumb", imageName: "DT3119", artist: "Armand Guillaumin", title: "The Bouchardon Mill, Crozant", date: "ca. 1898", onlineReference: "http://metmuseum.org/art/collection/search/459102"))
    paintings.append(Painting(thumbName:"DP161224-thumb", imageName: "DP161224", artist: "John Singer Sargent", title: "Two Girls on a Lawn", date: "ca. 1889", onlineReference: "http://metmuseum.org/art/collection/search/12446"))
    return paintings
}()




