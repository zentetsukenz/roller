module Update exposing (update)

import Messages exposing (..)
import Models exposing (..)
import Routing exposing (..)
import Navigation exposing (..)
import NavBar.Update exposing (..)
import NavBar.Messages exposing (..)


update : Messages.Msg -> Model -> ( Model, Cmd Messages.Msg )
update message model =
    case message of
        NavBarMsg navbarMessages ->
            let
                moduleName =
                    case navbarMessages of
                        NavMsg identifier _ ->
                            identifier
            in
                ( { model
                    | navBar =
                        NavBar.Update.update navbarMessages model.navBar
                  }
                , Navigation.newUrl ("#" ++ moduleName)
                )
