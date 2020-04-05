-----------------------------------
Joomla\\CMS\\Toolbar\\ToolbarButton
-----------------------------------

.. php:namespace: Joomla\\CMS\\Toolbar

.. php:class:: ToolbarButton

    Button base class

    The JButton is the base class for all JButton types

    .. php:attr:: _name

        :type: string

        :scope: protected

        element name

        This has to be set in the final renderer classes.

    .. php:attr:: _parent

        :type: \JButton

        :scope: protected

        reference to the object that instantiated the element

    .. php:method:: __construct($parent = null)

        Constructor

        :param $parent:

    .. php:method:: getName()

        Get the element name

        :returns: string type of the parameter

    .. php:method:: render($definition)

        Get the HTML to render the button

        :param $definition:
        :returns: string

    .. php:method:: fetchIconClass($identifier)

        Method to get the CSS class name for an icon identifier

        Can be redefined in the final class

        :param $identifier:
        :returns: string CSS class name

    .. php:method:: fetchButton()

        Get the button

        Defined in the final button class

        :returns: string
