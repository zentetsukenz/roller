module NavBar.Nav.Models exposing (Model, Status(..), init)


type alias Title =
    String


type alias Url =
    String


type Status
    = Active
    | Inactive


type alias Model =
    { title : Title
    , url : Url
    , status : Status
    }


init : Title -> Url -> Model
init title url =
    { title = title
    , url = url
    , status = Inactive
    }
