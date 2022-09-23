# flutter_session_getx_clean_architecture

This is a test project sessions for UBX brownbag session with clean archeticture using getX.


# About the app

The app app is more like login, register, and fetching of user data using a public REST API from Reqres.in.

# App Structure

```
-- lib
    -- app
        -- config
            - constants
        -- core
            - reusable_components
            - routes
            - app_pages
        -- extensions
            - hex_extensions
        -- services
            - dio_service
            - share_storage
    -- data
        -- model
            - reques
            - response
        -- provider
            - database
            - network
               - api
                  - api_method
                  - api_endpoint
               - environment
    -- domain
        -- entities
        -- usecases
        -- repositories
    -- pages
        -- views
        -- widgets
    -- presentation
        -- bindings
        -- controller
        -- my_app.dart
    -- main.dart
-- .env.development
-- .env.production
     
```

# Packages Used

```
 flutter_dotenv
   |-- This is use for implementing different environment of the app like development and production with two different Base URL.
   
 get
   |-- This is a state management for flutter.
   
 dio
   |-- A powerful Http client for Dart, which supports Interceptors, Global configuration, FormData, Request Cancellation, File downloading, Timeout etc.
   
 logger
   |-- This is useful for developers specially handing in debug, to see the exact response and exact error.
   
 form_field_validator
   |-- A straightforward flutter form field validator that provides common validation options.
   
 snippet_coder_utils
   |-- This library have a lot to offer, but for this project i'm using it for the loading dialog while calling the api.
   
 google_fonts
   |-- This will help you to identify or select which google font do you prefer to use. With this package, you will not import fonts manually in your asset folder.
   
 shared_preferences
   |-- Flutter plugin for reading and writing simple key-value pairs. Wraps NSUserDefaults on iOS and SharedPreferences on Android. I'm using this as a local storage for me to save the item locally and get it whenever i need it anytime, anywhere.
   
 flutter_svg
   |-- Helps read svg files.
   
 fluttertoast: ^8.0.9
   |-- Is a dialog where you can display an error, or a notification to the user on every event.
   
```

# API Used

```
 BASE URL : https://reqres.in/
 USER LIST ENDPOINT : /api/users?page=2
 LOGIN ENDPOINT: /api/login
 REGISTER ENDPOINT: /api/register
 
 For those who are not familliar with reqres.in yet. This is a hosted REST-API ready to respond. You do not need to create fake data for your data creating. This is a real responses develop with real response codes. GET, POST, PUT & DELETE supported.
 
 Website: https://reqres.in/

```

# Instruction before using the app

```
For the login and registration you need to use eve.holt@reqres.in as email. And you can select whatever password you like. Please take time to check the loggers for you to see the response from the api.

```
