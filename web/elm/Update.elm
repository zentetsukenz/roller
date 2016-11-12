module Update exposing (update)

import Messages exposing (..)
import Models exposing (..)
import Routing exposing (..)
import NavBar.Update exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        NavBarMsg navbarMessages ->
            ( { model
                | navBar =
                    NavBar.Update.update navbarMessages model.navBar
              }
            , Cmd.none
            )
