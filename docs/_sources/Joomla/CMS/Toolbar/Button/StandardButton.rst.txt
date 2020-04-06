--------------------------------------------
Joomla\\CMS\\Toolbar\\Button\\StandardButton
--------------------------------------------

.. php:namespace: Joomla\\CMS\\Toolbar\\Button

.. php:class:: StandardButton

    Renders a standard button

    .. php:attr:: _name

        :type: string

        :scope: protected

        Button type

    .. php:attr:: _parent

        :type: \JButton

        :scope: protected

        reference to the object that instantiated the element

    .. php:method:: fetchButton($type = 'Standard', $name = '', $text = '', $task = '', $list = true)

        Fetch the HTML for the button

        :param $type:
        :param $name:
        :param $text:
        :param $task:
        :param $list:
        :returns: string HTML string for the button

    .. php:method:: fetchId($type = 'Standard', $name = '', $text = '', $task = '', $list = true, $hideMenu = false)

        Get the button CSS Id

        :param $type:
        :param $name:
        :param $text:
        :param $task:
        :param $list:
        :param $hideMenu:
        :returns: string Button CSS Id

    .. php:method:: _getCommand($name, $task, $list)

        Get the JavaScript command for the button

        :param $name:
        :param $task:
        :param $list:
        :returns: string JavaScript command string

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
