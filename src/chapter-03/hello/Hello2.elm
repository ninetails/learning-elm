module HelloTwo exposing (..)

import Html exposing (div, h1, p, text)


main =
    div []
        [ h1 [] [ text "This is a title" ]
        , p [] [ text "This is a paragraph" ]
        , p [] [ text "Another paragraph" ]
        ]
