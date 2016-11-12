module NavBar.Nav.View exposing (view)

import NavBar.Nav.Models exposing (..)
import NavBar.Nav.Messages exposing (..)
import Html exposing (Html, li, a, text, Attribute)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


view : Model -> Html Msg
view model =
    li
        [ navAttribute model
        ]
        [ a
            []
            [ text model.title
            ]
        ]


navAttribute : Model -> Attribute Msg
navAttribute model =
    case model.status of
        Active ->
            class "active"

        Inactive ->
            onClick Activate
