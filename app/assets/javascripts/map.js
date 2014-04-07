jQuery(document).ready(function() {
    handler = Gmaps.build('Google');
    console.log(handler)
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
        markers = handler.addMarkers([
            {
                "lat": -33.7459191,
                "lng": 150.7441706,
                "picture": {
                    "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
                    "width":  36,
                    "height": 36
                },
                "infowindow": "hello!"
            }
        ]);
        handler.bounds.extendWith(markers);
        handler.fitMapToBounds();
    });
});
