--- === WindowMode ===
---
--- Adds a hotkey mode for manipulating windows.
---
--- Upon activating the mode, the following shortcuts are available:
---
--- h: Move window left 100 units
--- j: Move window down 100 units
--- k: Move window up 100 units
--- l: Move window right 100 units
---
--- Shift-h: Move window left 20 units
--- Shift-j: Move window down 20 units
--- Shift-k: Move window up 20 units
--- Shift-l: Move window right 20 units
---
--- Option-h: Move window left 5 units
--- Option-j: Move window down 5 units
--- Option-k: Move window up 5 units
--- Option-l: Move window right 5 units
---
--- i: Move window to top
---
--- [: Move window left one screen
--- ]: Move window right one screen
---
--- e: Reduce window height 100 units
--- s: Reduce window width 100 units
--- d: Increase window height 100 units
--- f: Increase window width 100 units
---
--- Shift-e: Reduce window height 20 units
--- Shift-s: Reduce window width 20 units
--- Shift-d: Increase window height 20 units
--- Shift-f: Increase window width 20 units
---
--- Option-e: Reduce window height 5 units
--- Option-s: Reduce window width 5 units
--- Option-d: Increase window height 5 units
--- Option-f: Increase window width 5 units

-- Copyright (c) 2019  Teddy Wing
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <https://www.gnu.org/licenses/>.


local obj = {}

-- Metadata
obj.name = 'WindowMode'
obj.version = '0.0.1'
obj.author = 'Teddy Wing'
obj.license = 'GNU GPLv3+ (https://www.gnu.org/licenses/gpl-3.0.txt)'

-- Internal function used to find our location, so we know where to load files from
local function script_path()
	local str = debug.getinfo(2, "S").source:sub(2)
	return str:match("(.*/)")
end
obj.spoonPath = script_path()

local window = dofile(obj.spoonPath .. '/window.lua')

--- WindowMode:bindModal(mapping)
--- Method
--- Bind keys for WindowMode
---
--- Parameters:
---  * mapping – A table containing hotkey modifier/key details for the following items:
---   * mode – Activate and deactivate window mode
function obj:bindHotkeys(keys)
	local mode = keys['mode']
	window:bindModal(mode[1], mode[2])
end

return obj
