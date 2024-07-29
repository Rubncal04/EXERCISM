package cars

const (
	rate            float64 = 100
	minutes         float64 = 60
	valuePerTenCars int     = 95000
	valuePerCar     int     = 10000
)

// CalculateWorkingCarsPerHour calculates how many working cars are
// produced by the assembly line every hour.
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	ratePercentage := successRate / rate
	return float64(productionRate) * ratePercentage
}

// CalculateWorkingCarsPerMinute calculates how many working cars are
// produced by the assembly line every minute.
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	ratePerHour := CalculateWorkingCarsPerHour(productionRate, successRate)
	return int(ratePerHour / minutes)
}

// CalculateCost works out the cost of producing the given number of cars.
func CalculateCost(carsCount int) uint {
	eachTenCars := carsCount / 10
	restOfCars := carsCount % 10
	return uint(eachTenCars*valuePerTenCars) + (uint(restOfCars * valuePerCar))
}
