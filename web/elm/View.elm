module View exposing (..)

import Html exposing (Html, div, text, li, ul, h1)
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
            h1 [] [ text "Dashboard!!" ]

        AboutRoute ->
            h1 [] [ text "About!!" ]

        NotFoundRoute ->
            h1 [] [ text "Not Found!!" ]
