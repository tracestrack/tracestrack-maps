@marina-text: #576ddf; // also swimming_pool
                       @wetland-text: darken(#4aa5fa, 25%); /* Also for mud */
@shop-icon: #ac39ac;
@shop-text: #939;
@transportation-icon: #0092da;
@transportation-text: #0066ff;
@accommodation-icon: @transportation-icon;
@accommodation-text: @transportation-text;
@airtransport: #8461C4; //also ferry_terminal
                        @health-color: #BF0000;
@amenity-brown: #734a08;
@gastronomy-icon: #C77400;
@gastronomy-text: darken(@gastronomy-icon, 5%);
@memorials: @amenity-brown;
@culture: @amenity-brown;
@public-service: @amenity-brown;
@office: #4863A0;
@man-made-icon: #666666;
@advertising-grey: @man-made-icon;
@barrier-icon: #3f3f3f;
@landform-color: #d08f55;
@leisure-green: darken(@park, 60%);
@protected-area: #008000;
@aboriginal: #82643a;
@religious-icon: #000000;

@landcover-font-size: 10*1.2;
@landcover-wrap-width-size: 30*2.5;
@landcover-line-spacing-size: -1.5*1.2;
@landcover-font-size-big: 12*1.2;
@landcover-wrap-width-size-big: 36*2.5;
@landcover-line-spacing-size-big: -1.8*1.2;
@landcover-font-size-bigger: 15*1.2;
@landcover-wrap-width-size-bigger: 45*2.5;
@landcover-line-spacing-size-bigger: -2.25*1.2;
@landcover-face-name: @oblique-fonts;

@standard-font-size: 10*1.4;
@standard-wrap-width: 30*2.5;
@standard-line-spacing-size: -1.5*1.2;
@standard-font: @book-fonts;

#amenity-line {
    // Ford tagging on ways
    [feature = 'highway_ford'][zoom >= 16] {
        marker-file: url('symbols/highway/ford.svg');
        marker-fill: @transportation-icon;
    }
    // Slipway tagging on ways
    [feature = 'leisure_slipway'][zoom >= 17] {
        marker-file: url('symbols/leisure/slipway.svg');
        marker-fill: @transportation-icon;
    }

    [feature = 'leisure_track'] {
        [zoom >= 16] {
            [zoom >= 17] {
                bridgecasing/line-color: saturate(darken(@pitch, 30%), 20%);
                bridgecasing/line-join: round;
                bridgecasing/line-width: 1.25;
                [zoom >= 18] { bridgecasing/line-width: 2.5; }
                [zoom >= 19] { bridgecasing/line-width: 5; }
            }
            line-color: @pitch;
            line-join: round;
            line-cap: round;
            line-width: 1;
            [zoom >= 18] { line-width: 2; }
            [zoom >= 19] { line-width: 4; }
        }
    }

    [feature = 'attraction_water_slide'] {
        [zoom >= 16] {
            [zoom >= 17] {
                bridgecasing/line-color: black;
                bridgecasing/line-join: round;
                bridgecasing/line-width: 1.25;
                [zoom >= 18] { bridgecasing/line-width: 2.5; }
                [zoom >= 19] { bridgecasing/line-width: 5; }
            }
            line-color: @pitch;
            line-join: round;
            line-cap: round;
            line-width: 1;
            [zoom >= 18] { line-width: 2; }
            [zoom >= 19] { line-width: 4; }
        }
    }
}

#natural {
    [natural = 'peak'][zoom >= 11] {
        marker-file: url('symbols/natural/mountain.svg');
        marker-fill: @landform-color;
        marker-clip: false;
        marker-transform: scale(0.5, 0.5);
        marker-opacity: 0.6;

        [zoom >= 13] {
            marker-transform: scale(0.6, 0.6);
            marker-opacity: 0.7;
        }
        [zoom >= 14] {
            marker-transform: scale(0.7, 0.7);
            marker-opacity: 0.9;
        }
        [zoom >= 15] {
            marker-transform: scale(0.8, 0.8);
            marker-opacity: 1;
        }
    }

    [natural = 'volcano'][zoom >= 11] {
        marker-file: url('symbols/natural/peak.svg');
        marker-fill: #d40000;
        marker-clip: false;
    }

    [natural = 'saddle'][zoom >= 15] {
        marker-file: url('symbols/natural/saddle.svg');
        marker-fill: @landform-color;
        marker-clip: false;
    }

  [natural='peak'][zoom >= 12][zoom <= 14],
  [natural='volcano'][zoom >= 12][zoom <= 14],
  [natural='saddle'][zoom >= 12][zoom <= 14] {
    text-name: "[name]";
    text-size: 10;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@landform-color, 30%);
    [natural='volcano'] { text-fill: #d40000; }
    text-dy: 8;
    text-face-name: @book-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-margin: 3;
  }
}
