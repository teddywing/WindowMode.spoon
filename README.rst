WindowMode.spoon
================

A Hammerspoon_ Spoon that provides a keyboard mode for manipulating windows.

Upon activating the mode, the following shortcuts are available:

+-------+-----------------------------+
| ``h`` | Move window left 100 units  |
+-------+-----------------------------+
| ``j`` | Move window down 100 units  |
+-------+-----------------------------+
| ``k`` | Move window up 100 units    |
+-------+-----------------------------+
| ``l`` | Move window right 100 units |
+-------+-----------------------------+

+-------------+-----------------------------+
| ``Shift-h`` | Move window left 20 units   |
+-------------+-----------------------------+
| ``Shift-j`` | Move window down 20 units   |
+-------------+-----------------------------+
| ``Shift-k`` | Move window up 20 units     |
+-------------+-----------------------------+
| ``Shift-l`` | Move window right 20 units  |
+-------------+-----------------------------+

+--------------+----------------------------+
| ``Option-h`` | Move window left 5 units   |
+--------------+----------------------------+
| ``Option-j`` | Move window down 5 units   |
+--------------+----------------------------+
| ``Option-k`` | Move window up 5 units     |
+--------------+----------------------------+
| ``Option-l`` | Move window right 5 units  |
+--------------+----------------------------+

+-------+---------------------+
| ``i`` | Move window to top  |
+-------+---------------------+

+-------+------------------------------+
| ``[`` | Move window left one screen  |
+-------+------------------------------+
| ``]`` | Move window right one screen |
+-------+------------------------------+

+-------+---------------------------------+
| ``e`` | Reduce window height 20 units   |
+-------+---------------------------------+
| ``s`` | Reduce window width 20 units    |
+-------+---------------------------------+
| ``d`` | Increase window height 20 units |
+-------+---------------------------------+
| ``f`` | Increase window width 20 units  |
+-------+---------------------------------+

+-------------+--------------------------------+
| ``Shift-e`` | Reduce window height 5 units   |
+-------------+--------------------------------+
| ``Shift-s`` | Reduce window width 5 units    |
+-------------+--------------------------------+
| ``Shift-d`` | Increase window height 5 units |
+-------------+--------------------------------+
| ``Shift-f`` | Increase window width 5 units  |
+-------------+--------------------------------+


Install
-------
::

	$ cd ~/.hammerspoon/Spoons
	$ git clone https://github.com/teddywing/WindowMode.spoon.git

Add the following to your Hammerspoon config, using your preferred hotkey to
activate & deactivate the mode::

	hs.loadSpoon('WindowMode')
	spoon.WindowMode:bindHotkeys({ mode = {{'ctrl', 'option'}, 'w'} })


License
-------
Copyright © 2019 Teddy Wing. Licensed under the GNU GPLv3+ (see the included
COPYING file).


.. _Hammerspoon: https://www.hammerspoon.org/
