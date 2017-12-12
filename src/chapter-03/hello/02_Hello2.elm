module HelloTwo exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)


main : Html msg
main =
    div [ class "elm-div" ]
        [ h1 [ class "banner" ] [ text "This is a title" ]
        , p [] [ text "This is a paragraph" ]
        , p [] [ text "Another paragraph" ]
        ]
