module NavBar.Update exposing (update)

import NavBar.Messages exposing (..)
import NavBar.Models exposing (..)
import NavBar.Nav.Update as Nav exposing (..)
import Dict exposing (..)


update : Msg -> Model -> Model
update message model =
    case message of
        NavMsg navTitle navMessage ->
            case Dict.get navTitle model of
                Nothing ->
                    model

                Just nav ->
                    let
                        resettedNavs =
                            resetNavs model
                    in
                        Dict.insert navTitle (Nav.update navMessage nav) resettedNavs


resetNavs : Model -> Model
resetNavs model =
    let
        resetFunction =
            NavBar.Models.reset << Dict.toList
    in
        resetFunction model
