note
	description: "jj_simpleBLE application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	TESTER

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")

			create bluetooth.make
			create adapters
		end

feature {NONE} -- Implementation

	bluetooth: BLUETOOTH
			-- Handle to the underlying adapter(s)

	adapters: ADAPTER_LIST
			-- Holds a peripherals


end
