module Models exposing (Model, initModel)

import Routing exposing (..)
import NavBar.Models as NavBar exposing (..)
import NavBar.Nav.Models as Nav exposing (..)


type alias Model =
    { route : Routing.Route
    , navBar : NavBar.Model
    }


initModel : Routing.Route -> Model
initModel route =
    Model route buildNavBar


buildNavBar : NavBar.Model
buildNavBar =
    NavBar.init
        [ ( "dashboard", Nav.init "Dashboard" "/dashboard" )
        , ( "about", Nav.init "About" "/about" )
        ]
