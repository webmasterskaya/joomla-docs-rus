---------------------------
Joomla\\CMS\\Editor\\Editor
---------------------------

.. php:namespace: Joomla\\CMS\\Editor

.. php:class:: Editor

    Editor class to handle WYSIWYG editors

    .. php:attr:: _observers

        :type: array

        :scope: protected

        An array of Observer objects to notify

    .. php:attr:: _state

        :type: mixed

        :scope: protected

        The state of the observable object

    .. php:attr:: _methods

        :type: array

        :scope: protected

        A multi dimensional array of [function][] = key for observers

    .. php:attr:: _editor

        :type: object

        :scope: protected

        Editor Plugin object

    .. php:attr:: _name

        :type: string

        :scope: protected

        Editor Plugin name

    .. php:attr:: asset

        :type: string

        :scope: protected

        Object asset

    .. php:attr:: author

        :type: string

        :scope: protected

        Object author

    .. php:attr:: instances

        :type: Editor[]

        :scope: protected

        Editor instances container.

    .. php:method:: __construct($editor = 'none')

        Constructor

        :param $editor:

    .. php:method:: getInstance($editor = 'none')

        Returns the global Editor object, only creating it
        if it doesn't already exist.

        :param $editor:
        :returns: Editor The Editor object.

    .. php:method:: getState()

        Get the state of the Editor object

        :returns: mixed The state of the object.

    .. php:method:: attach($observer)

        Attach an observer object

        :param $observer:
        :returns: void

    .. php:method:: detach($observer)

        Detach an observer object

        :param $observer:
        :returns: boolean True if the observer object was detached.

    .. php:method:: initialise()

        Initialise the editor

        :returns: void

    .. php:method:: display($name, $html, $width, $height, $col, $row, $buttons = true, $id = null, $asset = null, $author = null, $params = array())

        Display the editor area.

        :param $name:
        :param $html:
        :param $width:
        :param $height:
        :param $col:
        :param $row:
        :param $buttons:
        :param $id:
        :param $asset:
        :param $author:
        :param $params:
        :returns: string

    .. php:method:: save($editor)

        Save the editor content

        :param $editor:
        :returns: string

    .. php:method:: getContent($editor)

        Get the editor contents

        :param $editor:
        :returns: string

    .. php:method:: setContent($editor, $html)

        Set the editor contents

        :param $editor:
        :param $html:
        :returns: string

    .. php:method:: getButtons($editor, $buttons = true)

        Get the editor extended buttons (usually from plugins)

        :param $editor:
        :param $buttons:
        :returns: array

    .. php:method:: _loadEditor($config = array())

        Load the editor

        :param $config:
        :returns: mixed
