module NavBar.Models exposing (Model, Identifier, init, reset)

import NavBar.Nav.Models as Nav exposing (..)
import Dict exposing (..)


type alias Identifier =
    String


type alias Model =
    Dict Identifier Nav.Model


init : List ( Identifier, Nav.Model ) -> Model
init navList =
    Dict.fromList navList


reset : List ( Identifier, Nav.Model ) -> Model
reset navList =
    let
        resettedNavs =
            List.map initNav navList
    in
        Dict.fromList resettedNavs


initNav : ( Identifier, Nav.Model ) -> ( Identifier, Nav.Model )
initNav oldNav =
    let
        ( identifier, nav ) =
            oldNav
    in
        ( identifier, Nav.init nav.title nav.url )
