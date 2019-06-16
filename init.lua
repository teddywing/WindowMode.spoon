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

function obj:bindHotkeys(keys)
	local mode = keys['mode']
	window:bindModal(mode[1], mode[2])
end

return obj
