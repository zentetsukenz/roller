module View exposing (..)

import Html exposing (Html, div, text, li, ul)
import Html.Events exposing (..)
import Models exposing (..)
import Routing exposing (..)
import Messages exposing (Msg(..))
import Bootstrap.Html exposing (..)
import NavBar


view : Model -> Html Msg
view model =
    div []
        [ NavBar.view model
        , container_ [ page model ]
        ]


page : Model -> Html Msg
page model =
    case model.route of
        DashboardRoute ->
            div [] [ text "Dashboard!!" ]

        AboutRoute ->
            div [] [ text "About!!" ]

        NotFoundRoute ->
            div [] [ text "Not Found!!" ]
