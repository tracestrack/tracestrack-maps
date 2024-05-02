#roads-ref {
        shield-name: "A1";
        shield-file: "svg/motorway_1x1.svg";
        shield-size: 12;
        shield-line-spacing: 100;
        shield-fill: #000000;

        shield-placement: line;
        shield-spacing: 100;
        shield-repeat-distance: 100;
        shield-face-name:  @book-fonts;
}

#roads [highway='motorway'] {
        line-width: 10;
        line-color: pink;
        line-cap: round;
        line-join: round;
}


#roads-text-name {
        text-margin: 8;
        text-name: "[name]";
        text-size: 10;
        text-fill: black;
        text-spacing: 300;
        text-min-path-length: 60;
        text-clip: false;
        text-placement: line;
        text-face-name: @book-fonts;
}

@book-fonts:    "Source Sans Pro Regular",
                "Source Han Sans SC Regular",
                "Noto Sans Mono CJK SC Regular",
                "Noto Sans Adlam Regular",
                "Noto Sans Adlam Unjoined Regular",
                "Noto Sans Armenian Regular",
                "Noto Sans Bamum Regular",
                "Noto Sans Batak Regular",
                "Noto Sans Bengali UI Regular",
                "Noto Sans Buginese Regular",
                "Noto Sans Buhid Regular",
                "Noto Sans Canadian Aboriginal Regular",
                "Noto Sans Chakma Regular",
                "Noto Sans Cham Regular",
                "Noto Sans Cherokee Regular",
                "Noto Sans Coptic Regular",
                "Noto Sans Devanagari UI Regular",
                "Noto Sans Ethiopic Regular",
                "Noto Sans Georgian Regular",
                "Noto Sans Gujarati UI Regular",
                "Noto Sans Gurmukhi UI Regular",
                "Noto Sans Hanunoo Regular",
                "Noto Sans Hebrew Regular",
                "Noto Sans Javanese Regular",
                "Noto Sans Kannada UI Regular",
                "Noto Sans Kayah Li Regular",
                "Noto Sans Khmer UI Regular",
                "Noto Sans Lao UI Regular",
                "Noto Sans Lepcha Regular",
                "Noto Sans Limbu Regular",
                "Noto Sans Lisu Regular",
                "Noto Sans Malayalam UI Regular",
                "Noto Sans Mandaic Regular",
                "Noto Sans Mongolian Regular",
                "Noto Sans Myanmar UI Regular",
                "Noto Sans New Tai Lue Regular",
                "Noto Sans NKo Regular",
                "Noto Sans Ol Chiki Regular",
                "Noto Sans Oriya UI Regular",
                "Noto Sans Osage Regular",
                "Noto Sans Osmanya Regular",
                "Noto Sans Samaritan Regular",
                "Noto Sans Saurashtra Regular",
                "Noto Sans Shavian Regular",
                "Noto Sans Sinhala UI Regular", "Noto Sans Sinhala Regular",
                "Noto Sans Sundanese Regular",
                "Noto Sans Symbols Regular",
                "Noto Sans Symbols2 Regular",
                "Noto Sans Syriac Eastern Regular",
                "Noto Sans Tagalog Regular",
                "Noto Sans Tagbanwa Regular",
                "Noto Sans Tai Le Regular",
                "Noto Sans Tai Tham Regular",
                "Noto Sans Tai Viet Regular",
                "Noto Sans Tamil UI Regular",
                "Noto Sans Telugu UI Regular",
                "Noto Sans Thaana Regular",
                "Noto Sans Thai UI Regular",
                "Noto Sans Tifinagh Regular",
                "Noto Sans Vai Regular",
                "Noto Sans Yi Regular",
                "Noto Sans Arabic UI Regular", "Noto Naskh Arabic UI Regular",                
                "Noto Serif Tibetan Regular", "Noto Sans Tibetan Regular",
                "FSung-1 Regular","FSung-2 Regular","FSung-3 Regular","FSung-p Regular", "FSung-m Regular", "FSung-F Regular", "FSung-X Regular";
