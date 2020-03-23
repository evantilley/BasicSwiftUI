//
//  MapView.swift
//  LandmarkBook
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
        
    var coordinate: CLLocationCoordinate2D
    
    //updating view we created
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        //create span - how zoomed in the map is
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        //center view at region with zoomage of span
        uiView.setRegion(region, animated: true)
    }
    
    //making view
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero) //no frame
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkArray[0].locationCoordinate)
    }
}
