module NavBar.Nav.Update exposing (update)

import NavBar.Nav.Messages exposing (..)
import NavBar.Nav.Models exposing (..)


update : Msg -> Model -> Model
update message model =
    case message of
        Activate ->
            { model | status = Active }

        Deactivate ->
            { model | status = Inactive }
