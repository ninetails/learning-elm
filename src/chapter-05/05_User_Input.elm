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


bigText : Attribute msg
bigText =
    style
        [ ( "fontSize", "20em" )
        , ( "color", "sandybrown" )
        ]


smallText : Attribute msg
smallText =
    style
        [ ( "fontSize", "10em" )
        , ( "color", "indianred" )
        ]


checkTextSize : String -> Attribute msg
checkTextSize str =
    if String.length str < 8 then
        bigText
    else
        smallText


view : Model -> Html Msg
view model =
    div []
        [ input [ placeholder "Type text here", onInput Text ] []
        , div [ checkTextSize model.text ] [ text model.text ]
        ]
