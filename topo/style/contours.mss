#contours {
    [zoom >= 13] {
        line-color: #aaa;
        line-width: 0.5;
        line-opacity: 0.3;
        line-comp-op: multiply;
        line-smooth: 0.5;
        line-rasterizer: fast;
        line-simplify-algorithm: visvalingam-whyatt;
        line-clip: true;
        [zoom >= 14] {
            line-opacity: 0.5;
        }
    }

    // mod 100
    [ele_mod_100 = 0] {
        line-color: #7c7f7f;
        line-width: 1;
        line-opacity: 0.3;
        [zoom >= 13] {
            line-opacity: 0.5;
        }
        [zoom >= 14] {
            line-width: 1;
            line-opacity: 0.7;
        }
    }

    [ele_mod_100 = 50][zoom >= 12] {
        line-color: #7c7f7f;
        line-width: 0.5;
        line-opacity: 0.3;

        [zoom >= 14] {
            line-width: 0.7;
            line-opacity: 0.5;
        }
    }

    [ele_mod_200 = 0][zoom >= 13],
    [ele_mod_100 = 0][zoom >= 14],
    [ele_mod_100 = 50][zoom >= 15] {
        text-name: "[name]";
        text-size: 10;
        text-face-name: @semi-bold-fonts;
        text-fill: #888;
        text-halo-radius: 1;
        text-halo-fill: rgba(255,255,255,0.6);
        text-placement: line;
        text-spacing: 500;
        text-character-spacing: -0.5;
        text-max-char-angle-delta: 10;
        text-placement-type: simple;
        text-comp-op: multiply;
        [zoom >= 16] {
            text-spacing: 300;
        }
        [zoom >= 18] {
            text-spacing: 200;
        }
        text-clip: false;
    }
}

#hillshade-5000,
#hillshade-500,
#hillshade-90 {
    raster-comp-op: grain-merge;
    raster-scaling: lanczos;
    raster-opacity: 0.7;
}

#relief-5000,
#relief-500 {
    raster-scaling: lanczos;
    raster-comp-op:multiply;
    raster-opacity:0.7;
    [zoom >= 5] {
        raster-opacity:0.75;
    }
    [zoom >= 6] {
        raster-opacity:0.8;
    }
    [zoom >= 7] {
        raster-opacity:0.85;
    }
    [zoom >= 8] {
        raster-opacity:0.9;
    }
}
