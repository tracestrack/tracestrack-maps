@admin-boundaries: #8d618b;

#necountries {
  [zoom >= 1][zoom < 4] {
    line-width: 0.2;
    [zoom >= 2] {
      line-width: 0.3;
    }
    [zoom >= 3] {
      line-width: 0.4;
    }
    line-color: @admin-boundaries;
  }
}

#ocean-lz,
#ocean {
    polygon-fill: #83c0e8;
    [zoom >= 9] {
        polygon-fill: @water-color;
    }
}

#icesheet-poly {
  [zoom >= 3] {
    polygon-fill: @glacier;
  }
}

#icesheet-outlines {
  [zoom >= 3] {
    [ice_edge = 'ice_ocean'],
    [ice_edge = 'ice_land'] {
      line-width: 0.375;
      line-color: @glacier-line;
      [zoom >= 8] {
        line-width: 0.5;
      }
      [zoom >= 10] {
        line-dasharray: 4,2;
        line-width: 0.75;
      }
    }
  }
}
