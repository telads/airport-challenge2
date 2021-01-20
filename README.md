
As an air traffic controller
So I can get passengers to a destination
I want to instruct a plane to land at an airport

As an air traffic controller
So I can get passengers on the way to their destination

I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

As an air traffic controller
To ensure safety
I want to prevent takeoff when weather is stormy

As an air traffic controller
To ensure safety
I want to prevent landing when weather is stormy

As an air traffic controller
To ensure safety
I want to prevent landing when the airport is full

As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate


User story 1
plane1			->	[land]		->	[plane1]
plane2			->	[land]		->	[plane2]

User story 2
airport.land
[plane1]		->	[take_off]	->	[plane2]
[plane2]		->	[take_off]	->	[ ]

User story 3
plane1			->	[take_off]	->	[plane1]

User story 4
airport.take_off("plane1") -> [land] -> []

User story 5
airport.take_off("plane1") -> [land] -> "airport full, cannot land"

User story 6
50        -> [override_capacity]   -> "capacity overridden"
