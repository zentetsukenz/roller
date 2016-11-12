module NavBar.View exposing (view)

import NavBar.Models as NavBar exposing (..)
import NavBar.Nav.Models as Nav exposing (..)
import NavBar.Nav.View as NavView exposing (..)
import NavBar.Messages exposing (..)
import Html exposing (Html, ul, div, text, span)
import Html.Attributes exposing (class, href)
import Html.App exposing (..)
import Bootstrap.Html exposing (..)
import Dict exposing (..)


view : NavBar.Model -> Html Msg
view model =
    navbarDefault' "navbar-fixed-top" [ container model ]


container : NavBar.Model -> Html Msg
container model =
    containerFluid_
        [ navbarHeader
        , navBar model
        ]


navbarHeader : Html Msg
navbarHeader =
    navbarHeader_
        [ span [ class "navbar-brand" ] [ text "Roller" ] ]


navBar : NavBar.Model -> Html Msg
navBar model =
    div
        [ class "collapse navbar-collapse" ]
        [ navs model ]


navs : NavBar.Model -> Html Msg
navs model =
    ul
        [ class "nav navbar-nav" ]
        (buildNavs model)


buildNavs : NavBar.Model -> List (Html Msg)
buildNavs model =
    List.map buildNav (Dict.toList model)


buildNav : ( Identifier, Nav.Model ) -> Html Msg
buildNav nav =
    let
        ( identifier, navModel ) =
            nav
    in
        Html.App.map (NavMsg identifier) (NavView.view navModel)
