# WindBar2 Privacy Notes

WindBar2 is a local macOS menu bar app. It does not include analytics, accounts, advertising, telemetry, or third-party tracking code.

## Data Stored Locally

WindBar2 stores app preferences on the Mac using `UserDefaults`. Stored values may include:

- Selected location mode.
- Last entered city name.
- Last entered latitude and longitude.
- Selected region, country, and city.
- Selected aircraft profile.
- Custom aircraft name and wind/gust limits.
- Display preferences such as wind unit, temperature unit, and layout width.

These settings are used to restore the app state between launches.

## Data Sent For Weather

When live weather is enabled, WindBar2 sends the selected location to Open-Meteo so it can request current weather and forecast data.

Depending on the selected location mode, the request may be based on:

- A geocoded city name.
- Latitude and longitude.
- The selected world city.

WindBar2 requests current conditions and hourly forecast data, including wind speed, gusts, wind direction, temperature, UV index, and surface pressure.

## Device Location

The code includes support for requesting macOS location permission and a device location lookup. If used, macOS controls the permission prompt. WindBar2 should only receive location data after the user grants permission.

## Screenshots

Documentation screenshots in this repository are redacted. They do not include personal coordinates or a live private location from the maintainer's machine.

## No Pilot Safety Guarantee

WindBar2 provides advisory weather information only. It does not guarantee safe flight conditions and should not be treated as an aviation safety system.
