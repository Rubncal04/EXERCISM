package hamming

import (
	"errors"
)

func Distance(strandOne, strandTwo string) (int, error) {
	if len(strandOne) != len(strandTwo) {
		return 0, errors.New("disallow strand")
	}

	counter := 0
	for index := range strandOne {
		if strandOne[index] != strandTwo[index] {
			counter++
		}
	}
	return counter, nil
}
