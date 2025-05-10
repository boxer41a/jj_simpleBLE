note
	description: "[
		Abstraction for BlueTooth used in wrapping SimpleBLE classes.
		]"
	author: "Jimmy J. Johnson"
	date: "5/7/25"

class
	BLUETOOTH

create
	make

feature -- Initialization

	make
			-- Create an instance
		do

		end

feature -- Access

feature -- Status report

	is_bluetooth_enabled: BOOLEAN
			-- Is bluetooth available for use?
		do
			result := c_is_bluetooth_enabled
		end

feature -- Implementation

	adapters: ARRAYED_LIST [ADAPTER]
			-- List of adapters Current can use
		require
			enabled: is_bluetooth_enabled
		once
			create Result.make (0)
		end

feature {NONE} -- Implmentation

	c_is_bluetooth_enabled: BOOLEAN
			-- Wrapper to determine if bluetooth is working
		external
			"C++ inline use %"simpleble/Adapter.h%""
		alias
			"[
			return (EIF_BOOLEAN) SimpleBLE::Adapter::bluetooth_enabled();
			]"
		end


end
