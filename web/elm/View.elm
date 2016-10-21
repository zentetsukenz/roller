module View exposing (..)

import Html exposing (Html, div, text, li, ul)
import Html.Events exposing (..)
import Models exposing (..)
import Routing exposing (..)
import Messages exposing (Msg(..))
import Bootstrap.Html exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ div [] [ navBar model ]
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


navBar : Model -> Html Msg
navBar model =
    case model.route of
        DashboardRoute ->
            ul []
                [ li [] [ text "At Dashboard" ]
                , li [ onClick ShowAbout ] [ text "About" ]
                ]

        AboutRoute ->
            ul []
                [ li [ onClick ShowDashboard ] [ text "Dashboard" ]
                , li [] [ text "At About" ]
                ]

        NotFoundRoute ->
            ul []
                [ li [ onClick ShowDashboard ] [ text "Dashboard" ]
                , li [ onClick ShowAbout ] [ text "About" ]
                ]
