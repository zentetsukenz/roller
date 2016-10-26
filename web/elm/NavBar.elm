module NavBar exposing (view)

import Messages exposing (Msg(..))
import Routing exposing (Route(..))
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Models exposing (Model)
import Bootstrap.Html exposing (..)


view : Model -> Html Msg
view model =
    navbarDefault' "navbar-fixed-top" [ container model ]


container : Model -> Html Msg
container model =
    containerFluid_
        [ navbarHeader
        , navBar model
        ]


navbarHeader : Html Msg
navbarHeader =
    navbarHeader_
        [ a [ class "navbar-brand", href "#" ] [ text "Roller" ] ]


navBar : Model -> Html Msg
navBar model =
    let
        navs =
            case model.route of
                DashboardRoute ->
                    ul [ class "nav navbar-nav" ]
                        [ li [ class "active" ] [ a [] [ text "Dashboard" ] ]
                        , li [ onClick ShowAbout ] [ a [] [ text "About" ] ]
                        ]

                AboutRoute ->
                    ul [ class "nav navbar-nav" ]
                        [ li [ onClick ShowDashboard ] [ a [] [ text "Dashboard" ] ]
                        , li [ class "active" ] [ a [] [ text "About" ] ]
                        ]

                NotFoundRoute ->
                    ul [ class "nav navbar-nav" ]
                        [ li [ onClick ShowDashboard ] [ a [] [ text "Dashboard" ] ]
                        , li [ onClick ShowAbout ] [ a [] [ text "About" ] ]
                        ]
    in
        div [ class "collapse navbar-collapse" ] [ navs ]
