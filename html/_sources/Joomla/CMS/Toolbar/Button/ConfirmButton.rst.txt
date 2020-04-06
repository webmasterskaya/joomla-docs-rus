-------------------------------------------
Joomla\\CMS\\Toolbar\\Button\\ConfirmButton
-------------------------------------------

.. php:namespace: Joomla\\CMS\\Toolbar\\Button

.. php:class:: ConfirmButton

    Renders a standard button with a confirm dialog

    .. php:attr:: _name

        :type: string

        :scope: protected

        Button type

    .. php:attr:: _parent

        :type: \JButton

        :scope: protected

        reference to the object that instantiated the element

    .. php:method:: fetchButton($type = 'Confirm', $msg = '', $name = '', $text = '', $task = '', $list = true, $hideMenu = false)

        Fetch the HTML for the button

        :param $type:
        :param $msg:
        :param $name:
        :param $text:
        :param $task:
        :param $list:
        :param $hideMenu:
        :returns: string HTML string for the button

    .. php:method:: fetchId($type = 'Confirm', $msg = '', $name = '', $text = '', $task = '', $list = true, $hideMenu = false)

        Get the button CSS Id

        :param $type:
        :param $msg:
        :param $name:
        :param $text:
        :param $task:
        :param $list:
        :param $hideMenu:
        :returns: string Button CSS Id

    .. php:method:: _getCommand($msg, $name, $task, $list)

        Get the JavaScript command for the button

        :param $msg:
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
