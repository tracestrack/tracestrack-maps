@water-text: #4d80b3;
@glacier: #ddecec;
@glacier-line: #9cf;

@waterway-text-repeat-distance: 200;

#water-areas {
  [natural = 'glacier']::natural {
    [zoom >= 5] {
      line-width: 1.0;
      line-color: @glacier-line;
      polygon-fill: @glacier;
      [zoom >= 10] {
        line-dasharray: 4,2;
        line-width: 1.5;
      }
    }
  }

  [waterway = 'dock'],
  [landuse = 'basin'],
  [natural = 'water'],
  [landuse = 'reservoir'],
  [waterway = 'riverbank'] {
    [int_intermittent = 'no'] {
      polygon-fill: @water-color;
      [way_pixels >= 4] { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.6; }
    }
    [int_intermittent = 'yes'] {
      polygon-pattern-file: url('symbols/intermittent_water.svg');
      [way_pixels >= 4] { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.6; }
    }
  }
}

#water-lines-casing {
  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [int_tunnel = 'no'] {
      [int_intermittent != 'yes'][zoom >= 14],
      [zoom >= 15] {
        line-width: 2.5;
        line-color: white;
        [waterway = 'stream'][zoom >= 15] {
          line-width: 3.5;
        }
        [int_intermittent = 'yes'] {
          line-dasharray: 4,3;
          line-cap: butt;
          line-join: round;
          line-clip: false;
        }
      }
    }
  }
}

#water-lines-low-zoom {
  [waterway = 'river'][zoom >= 8][zoom < 12] {
    [int_intermittent = 'yes'] {
      line-dasharray: 8,4;
      line-cap: butt;
      line-join: round;
      line-clip: false;
    }
    line-color: @water-color;
    line-width: 0.7;
    [zoom >= 9] { line-width: 1.2; }
    [zoom >= 10] { line-width: 1.6; }
  }
}

#water-lines,
#waterway-bridges {
  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 12] {
    // the additional line of land color is used to provide a background for dashed casings
    [int_tunnel = 'yes'] {
      background/line-color: @land-color;
      background/line-width: 2;
      background/line-cap: round;
      background/line-join: round;
    }

    [bridge = 'yes'] {
      [zoom >= 14] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: 6;
        [zoom >= 15] { bridgecasing/line-width: 7; }
        [zoom >= 17] { bridgecasing/line-width: 11; }
        [zoom >= 18] { bridgecasing/line-width: 13; }
      }
    }

    water/line-color: @water-color;
    water/line-width: 2;
    water/line-cap: round;
    water/line-join: round;

    [int_intermittent = 'yes'] {
      [bridge = 'yes'][zoom >= 14] {
        bridgefill/line-color: white;
        bridgefill/line-join: round;
        bridgefill/line-width: 4;
        [zoom >= 15] { bridgefill/line-width: 5; }
        [zoom >= 17] { bridgefill/line-width: 9; }
        [zoom >= 18] { bridgefill/line-width: 11; }
      }
      water/line-dasharray: 4,3;
      water/line-cap: butt;
      water/line-join: round;
      water/line-clip: false;
    }

    [zoom >= 13] { water/line-width: 3; }
    [zoom >= 14] { water/line-width: 5; }
    [zoom >= 15] { water/line-width: 6; }
    [zoom >= 17] { water/line-width: 10; }
    [zoom >= 18] { water/line-width: 12; }

    [int_tunnel = 'yes'] {
      [zoom >= 13] { background/line-width: 3; }
      [zoom >= 14] { background/line-width: 5; }
      [zoom >= 15] { background/line-width: 6; }
      [zoom >= 17] { background/line-width: 10; }
      [zoom >= 18] { background/line-width: 12; }

      water/line-dasharray: 4,2;
      background/line-cap: butt;
      background/line-join: miter;
      water/line-cap: butt;
      water/line-join: miter;
      tunnelfill/line-color: #f3f7f7;
      tunnelfill/line-width: 1;
      [zoom >= 14] { tunnelfill/line-width: 2; }
      [zoom >= 15] { tunnelfill/line-width: 3; }
      [zoom >= 17] { tunnelfill/line-width: 7; }
      [zoom >= 18] { tunnelfill/line-width: 8; }
    }
  }

  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [int_intermittent != 'yes'][zoom >= 14],
    [zoom >= 15] {
      // the additional line of land color is used to provide a background for dashed casings
      [int_tunnel = 'yes'] {
        background/line-width: 2;
        background/line-color: @land-color;
      }
      water/line-width: 2;
      water/line-color: @water-color;

      [bridge = 'yes'] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: 4;
        [waterway = 'stream'][zoom >= 15] { bridgecasing/line-width: 4; }
        bridgeglow/line-color: white;
        bridgeglow/line-join: round;
        bridgeglow/line-width: 3;
        [waterway = 'stream'][zoom >= 15] { bridgeglow/line-width: 3; }
      }

      [int_intermittent = 'yes'] {
        water/line-dasharray: 4,3;
        water/line-cap: butt;
        water/line-join: round;
        water/line-clip: false;
      }

      [waterway = 'stream'][zoom >= 15] {
        water/line-width: 3;

        [int_tunnel = 'yes'] {
          background/line-width: 3;
        }
      }
      [int_tunnel = 'yes'][zoom >= 15] {
        background/line-width: 3.5;
        water/line-width: 3.5;
        [waterway = 'stream'] {
          background/line-width: 4.5;
          water/line-width: 4.5;
        }
        water/line-dasharray: 4,2;
        tunnelfill/line-width: 1;
        [waterway = 'stream'] { tunnelfill/line-width: 2; }
        tunnelfill/line-color: #f3f7f7;
      }
    }
  }
}