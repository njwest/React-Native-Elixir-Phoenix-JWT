# Elixir on Phoenix 1.4 JSON Web Token Authentication API

##### App by Nick West. Email Nick at mail@nickwe.st

Companion repo for [JWT Auth with an Elixir on Phoenix 1.4 API and React Native, Part I: Phoenix JWT API](https://medium.com/@njwest/jwt-auth-with-an-elixir-on-phoenix-1-3-guardian-api-and-react-native-mobile-app-1bd00559ea51)

This is a demo Phoenix Elixir JWT REST API app, using Ueberauth's [Guardian](https://github.com/ueberauth/guardian) package for JWT authentication and riverrun's [Comeonin](https://github.com/riverrun/comeonin)/[bcrypt_elixir](https://github.com/riverrun/bcrypt_elixir) packages for password hashing.

##### Note: replace the Guardian config secret with your own, as the secrets used in this demo app are public.

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix server with `mix phx.server`

## API Endpoints:

Our API routes are configured in `lib/myApi_web/router.ex`.

By default, they are:

### `POST`: Sign up a User

`POST` a JSON `"user"` to `/api/v1/sign_up`:
```
{
  "user": {
    "email": "foobar@email.com",
    "password": "some_password",
    "password": "some_password"
  }
}
```

If the client sign up `POST` request is successful, the server will return a JSON Web Token, as `{ "jwt": "some JSON web token here"}`

### `POST`: Sign in a User

`POST` a valid email and password JSON  to `/api/v1/sign_in`:
```
{
  "email": "foobar@email.com",
  "password": "some_password"
}
```

If the client `POST` sign in request is successful, the server will return a JSON Web Token, as `{ "jwt": "some JSON web token here"}`.

### `GET`: User Data

The subject of our JWT is its correlating user's `user_id`.

With the request header `"Authorization": "Bearer " + jwt`, a client can retrieve user data via a `GET` request to `/api/v1/my_user`.

## Learn more about Phoenix

  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Source: https://github.com/phoenixframework/phoenix

#### 🍹 Tips Appreciated 😉
My Bitcoin address: **1QJuBzHpis4jqQXnSuYxKzGS4Yu3GHhNtX**
