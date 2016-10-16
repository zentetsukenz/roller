module View exposing (..)

import Html exposing (Html, div, text, li, ul)
import Models exposing (..)
import Routing exposing (..)
import Messages exposing (Msg(..))


view : Model -> Html Msg
view model =
    div []
        [ div [] [ navBar model ]
        , div [] [ page model ]
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
                , li [] [ text "About" ]
                ]

        AboutRoute ->
            ul []
                [ li [] [ text "Dashboard" ]
                , li [] [ text "At About" ]
                ]

        NotFoundRoute ->
            ul []
                [ li [] [ text "Dashboard" ]
                , li [] [ text "About" ]
                ]
