module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (..)
import Routing exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        ShowDashboard ->
            ( { model | route = DashboardRoute }, Cmd.none )

        ShowAbout ->
            ( { model | route = AboutRoute }, Cmd.none )
