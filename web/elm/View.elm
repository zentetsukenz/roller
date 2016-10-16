module View exposing (..)

import Html exposing (Html, div, text)
import Models exposing (..)
import Routing exposing (..)
import Messages exposing (Msg(..))


view : Model -> Html Msg
view model =
    div [] [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        DashboardRoute ->
            div [] [ text "Dashboard!!" ]

        AboutRoute ->
            div [] [ text "About!!" ]

        NotFoundRoute ->
            div [] [ text "Not Found!!" ]
