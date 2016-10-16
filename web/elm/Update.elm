module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (..)
import Routing exposing (..)
import Navigation


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        ShowDashboard ->
            ( { model | route = DashboardRoute }, Navigation.newUrl "#dashboard" )

        ShowAbout ->
            ( { model | route = AboutRoute }, Navigation.newUrl "#about" )
