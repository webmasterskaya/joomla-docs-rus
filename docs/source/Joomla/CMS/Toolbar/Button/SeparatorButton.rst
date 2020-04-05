---------------------------------------------
Joomla\\CMS\\Toolbar\\Button\\SeparatorButton
---------------------------------------------

.. php:namespace: Joomla\\CMS\\Toolbar\\Button

.. php:class:: SeparatorButton

    Renders a button separator

    .. php:attr:: _name

        :type: string

        :scope: protected

        Button type

    .. php:attr:: _parent

        :type: \JButton

        :scope: protected

        reference to the object that instantiated the element

    .. php:method:: render($definition)

        Get the HTML for a separator in the toolbar

        :param $definition:
        :returns: string The HTML for the separator

    .. php:method:: fetchButton()

        Empty implementation (not required for separator)

        :returns: void

    .. php:method:: __construct($parent = null)

        Constructor

        :param $parent:

    .. php:method:: getName()

        Get the element name

        :returns: string type of the parameter

    .. php:method:: fetchIconClass($identifier)

        Method to get the CSS class name for an icon identifier

        Can be redefined in the final class

        :param $identifier:
        :returns: string CSS class name
