-----------------------------
Joomla\\CMS\\Toolbar\\Toolbar
-----------------------------

.. php:namespace: Joomla\\CMS\\Toolbar

.. php:class:: Toolbar

    ToolBar handler

    .. php:attr:: _name

        :type: string

        :scope: protected

        Toolbar name

    .. php:attr:: _bar

        :type: array

        :scope: protected

        Toolbar array

    .. php:attr:: _buttons

        :type: array

        :scope: protected

        Loaded buttons

    .. php:attr:: _buttonPath

        :type: array

        :scope: protected

        Directories, where button types can be stored.

    .. php:attr:: instances

        :type: Toolbar

        :scope: protected

        Stores the singleton instances of various toolbar.

    .. php:method:: __construct($name = 'toolbar')

        Constructor

        :param $name:

    .. php:method:: getInstance($name = 'toolbar')

        Returns the global Toolbar object, only creating it if it
        doesn't already exist.

        :param $name:
        :returns: \JToolbar The JToolbar object.

    .. php:method:: appendButton()

        Set a value

        :returns: string The set value.

    .. php:method:: getItems()

        Get the list of toolbar links.

        :returns: array

    .. php:method:: getName()

        Get the name of the toolbar.

        :returns: string

    .. php:method:: prependButton()

        Get a value.

        :returns: string

    .. php:method:: render()

        Render a toolbar.

        :returns: string HTML for the toolbar.

    .. php:method:: renderButton($node)

        Render a button.

        :param $node:
        :returns: string

    .. php:method:: loadButtonType($type, $new = false)

        Loads a button type.

        :param $type:
        :param $new:
        :returns: boolean

    .. php:method:: loadButtonClass($type)

        Load the button class including the deprecated ones.

        :param $type:
        :returns: string|null

    .. php:method:: addButtonPath($path)

        Add a directory where Toolbar should search for button types in LIFO
        order.

        You may either pass a string or an array of directories.

        Toolbar will be searching for an element type in the same order you added
        them. If the parameter type cannot be found in the custom folders,
        it will look in libraries/joomla/html/toolbar/button.

        :param $path:
        :returns: void
