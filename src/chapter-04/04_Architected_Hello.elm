module ArchitectedHello exposing (..)

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram { model = model, view = view, update = update }


type alias Model =
    { text : String
    , size : Int
    }


model : Model
model =
    { text = "Hello world"
    , size = 1
    }


type Msg
    = Text
    | SizeUp
    | SizeDown


update : Msg -> Model -> Model
update msg model =
    case msg of
        Text ->
            { model | text = model.text ++ "!" }

        SizeUp ->
            { model | size = model.size + 1 }

        SizeDown ->
            { model | size = model.size - 1 }


myStyle : Int -> Attribute msg
myStyle size =
    style
        [ ( "fontSize", toString size ++ "em" )
        , ( "color", "teal" )
        ]


view : Model -> Html Msg
view model =
    div []
        [ div [ myStyle model.size ] [ text model.text ]
        , button [ onClick Text ] [ text "Add exclamation mark" ]
        , button [ onClick SizeUp ] [ text "+" ]
        , button [ onClick SizeDown ] [ text "-" ]
        ]
