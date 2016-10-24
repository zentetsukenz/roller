module NavBar exposing (view)

import Messages exposing (Msg(..))
import Routing exposing (Route(..))
import Html exposing (..)
import Html.Events exposing (..)
import Models exposing (Model)


view : Model -> Html Msg
view model =
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
