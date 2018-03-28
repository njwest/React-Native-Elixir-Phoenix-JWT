defmodule MyApi.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :MyApi,
  module: MyApi.Guardian,
  error_handler: MyApi.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
