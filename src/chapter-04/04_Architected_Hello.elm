module ArchitectedHello exposing (..)

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram { model = model, view = view, update = update }


type alias Model =
    { text : String }


model : Model
model =
    { text = "Hello world" }


type Msg
    = Text


update : Msg -> Model -> Model
update msg model =
    case msg of
        Text ->
            { model | text = model.text ++ "!" }


myStyle : Attribute msg
myStyle =
    style
        [ ( "fontSize", "10em" )
        , ( "color", "teal" )
        ]


view : Model -> Html Msg
view model =
    div []
        [ div [ myStyle ] [ text model.text ]
        , button [ onClick Text ] [ text "Add exclamation mark" ]
        ]
