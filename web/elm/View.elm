module View exposing (..)

import Html exposing (Html, div, text, li, ul, h1)
import Html.Events exposing (..)
import Html.App exposing (..)
import Models exposing (..)
import Routing exposing (..)
import Messages exposing (..)
import Bootstrap.Html exposing (..)
import NavBar.View exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ navBar model
        , container_ [ page model ]
        ]


navBar : Model -> Html Msg
navBar model =
    Html.App.map NavBarMsg (NavBar.View.view model.navBar)


page : Model -> Html Msg
page model =
    case model.route of
        DashboardRoute ->
            h1 [] [ text "Dashboard!!" ]

        AboutRoute ->
            h1 [] [ text "About!!" ]

        NotFoundRoute ->
            h1 [] [ text "Not Found!!" ]
