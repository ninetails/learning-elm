module UserInput exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)


main =
    Html.beginnerProgram { model = model, view = view, update = update }


type alias Model =
    { text : String }


model : Model
model =
    { text = "" }


type Msg
    = Text String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Text txt ->
            { model | text = txt }


styleText : Attribute msg
styleText =
    style
        [ ( "fontSize", "20em" )
        , ( "color", "sandybrown" )
        ]


view : Model -> Html Msg
view model =
    div []
        [ input [ placeholder "Type text here", onInput Text ] []
        , div [ styleText ] [ text model.text ]
        ]
