## DEVELOPMENT RELEASE

I'll populate this properly later, but I want to create a way to use a database online and offline, online-only for web. To do this, all operations seem to require async for web support with Drift, so that is implemented.

# Version 0.1.
- Firebase authentication is still available, but has been disabled in the config but is still referenced in the routing tables. The files still exist and work but are not being used for the moment. 
- You can launch the app in either web or mobile, and it navigates you to a home page. Simple.
- There will eventually be a functioning sidebar with an option to visit your profile, launching the profile widget, but as this profile widget does require profile data, it is not used at the moment.
- Dummy profile information will be implemented so the feature requires a simple transition towards using actual user data.
- The HomeModule is currently only used as a placeholder, but this will create a scaffold for the app, loading different modules as needed and unloading them when not being actively used. 

## Changes

There will likely be plenty of changes that will not be covered in detail by the changelog as this project is going to be in active development.
