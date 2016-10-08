module Main exposing (..)

import Navigation


main : Program Never
main =
    Navigation.program (Navigation.makeParser State.pathParser)
        { init = init
        , view = view
        , update = update
        , urlUpdate = urlUpdate
        , subscriptions = subscriptions
        }



-- MODEL


type Page
    = Dashboard


type alias Model =
    { page : Page }


init : Result String Int -> ( Model, Cmd Msg )
init result =
    urlUpdate result 0



-- UPDATE


type Msg
    = NavigateTo Page


urlUpdate : Result String Int -> Model -> ( Model, Cmd Msg )
urlUpdate result model =
    case result of
        Ok newCount ->
            ( newCount, Cmd.none )

        Err _ ->
            ( model, Navigation.modifyUrl (toUrl model) )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
