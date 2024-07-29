// Package weather is used to generate weather.
package weather

// CurrentCondition represents the current condition of weather.
var CurrentCondition string

// CurrentLocation represents the current location.
var CurrentLocation string

// Forecast return a comments indicating the current weather and location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
