module Update exposing (update)

import Messages exposing (..)
import Models exposing (..)
import Routing exposing (..)
import Navigation exposing (..)
import NavBar.Update exposing (..)
import NavBar.Messages exposing (..)
import Dict exposing (..)


update : Messages.Msg -> Model -> ( Model, Cmd Messages.Msg )
update message model =
    case message of
        NavBarMsg navbarMessages ->
            let
                moduleName =
                    case navbarMessages of
                        NavMsg identifier _ ->
                            identifier

                updatedNavBar =
                    NavBar.Update.update navbarMessages model.navBar

                newUrl =
                    case Dict.get moduleName updatedNavBar of
                        Nothing ->
                            ""

                        Just nav ->
                            nav.url
            in
                ( { model
                    | navBar = updatedNavBar
                  }
                , Navigation.newUrl newUrl
                )
