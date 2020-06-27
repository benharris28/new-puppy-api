const REGEX_UPPER_LOWER_NUMBER_SPECIAL = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&])[\S]+/

const MapService = {
    getMarkers(db, lat, lng) {
        
        return db
            .from('markers')
            .select(
                'marker_id',
                db.raw( 
                    `(3959 * acos( cos( radians(37) ) * cos( radians( ${lat} ) ) * cos( radians( ${lng} ) - radians(-122) ) + sin( radians(37) ) * sin( radians( ${lat} ) ) ) ) AS distance`
                ),
            )
            .having('distance', '<', 25)
            .orderBy('distance')
            .limit(5)



         
    },
   
}

module.exports = MapService