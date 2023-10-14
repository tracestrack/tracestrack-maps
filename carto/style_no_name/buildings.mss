@building-fill: #e6dad1;
@building-line: darken(@building-fill, 40%);
@building-low-zoom: lighten(@building-fill, 1%);

@building-major-fill: darken(@building-fill, 10%);  // Lch(75, 8, 67)
@building-major-line: darken(@building-major-fill, 15%);  // Lch(61, 13, 65)
@building-major-z15: darken(@building-major-fill, 5%);  // Lch(70, 9, 66)
@building-major-z14: darken(@building-major-fill, 10%);  // Lch(66, 11, 65)

@entrance-permissive: darken(@building-line, 15%);
@entrance-normal: @building-line;

#buildings {
  [zoom >= 16] {
      polygon-fill: @building-fill;
      polygon-opacity: 0.5;
      polygon-clip: false;
      polygon-comp-op: contrast;
      line-color: gray;
      line-width: 1;
      line-opacity: 0.3;
    [zoom >= 17] {
      polygon-fill: @building-fill;
      polygon-opacity: 0.8;
    }
    [zoom >= 18] {
      building-fill-opacity: 0.5;
      building-fill: white;
      building-fill-opacity: 0.4;
      building-height: [height] * 0.2;
    }
    [zoom >= 19] {
      building-fill-opacity: 0.6;
    }
    [amenity = 'place_of_worship'],
    [aeroway = 'terminal'],
    [aerialway = 'station'],
    [building = 'train_station'],
    [public_transport = 'station'] {
      polygon-fill: @building-major-z14;
      line-opacity: 1;
      line-width: 2;
      [zoom >= 15] {
        polygon-fill: @building-major-z15;
        line-color: @building-major-line;
        [zoom >= 16] {
          polygon-fill: @building-major-fill;
        }
      }
    }
  }
}

#bridge {
  [zoom >= 17] {
      polygon-fill: #B8B8B8;
      polygon-comp-op: screen;
      line-color: #333;
      line-width: 1.5;
      [zoom >= 16] {
          line-width: 2;
      }
      [zoom >= 17] {
          line-width: 3;
      }
      [zoom >= 18] {
          line-width: 3.5;
      }

      line-opacity: 0.8;
  }
}

#entrances {
  [zoom >= 18]["entrance" != null]  {
    marker-fill: @entrance-normal;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-file: url('symbols/rect.svg');
    marker-width: 5.0;
    marker-height: 5.0;
    marker-opacity: 0.0;
    ["entrance" = "main"] {
      marker-opacity: 1.0;
      marker-file: url('symbols/square.svg');
    }
  }
  [zoom >= 19]["entrance" != null] {
    ["entrance" = "yes"],
    ["entrance" = "main"],
    ["entrance" = "home"],
    ["entrance" = "service"],
    ["entrance" = "staircase"] {
      marker-opacity: 1.0;
      marker-width: 6.0;
      marker-height: 6.0;
      ["entrance" = "service"] {
        marker-file: url('symbols/corners.svg');
      }
    }
    ["access" = "yes"],
    ["access" = "permissive"] {
      marker-fill: @entrance-permissive;
    }
    ["access" = "no"] {
      marker-fill: @entrance-normal;
      marker-file: url('symbols/rectdiag.svg');
    }
  }
  [zoom >= 20]["entrance" != null] {
    marker-width: 8.0;
    marker-height: 8.0;
  }
}
