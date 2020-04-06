-----------------------------------------
Joomla\\CMS\\Toolbar\\Button\\PopupButton
-----------------------------------------

.. php:namespace: Joomla\\CMS\\Toolbar\\Button

.. php:class:: PopupButton

    Renders a modal window button

    .. php:attr:: _name

        :type: string

        :scope: protected

        Button type

    .. php:attr:: _parent

        :type: \JButton

        :scope: protected

        reference to the object that instantiated the element

    .. php:method:: fetchButton($type = 'Modal', $name = '', $text = '', $url = '', $width = 640, $height = 480, $top = 0, $left = 0, $onClose = '', $title = '', $footer = null)

        Fetch the HTML for the button

        :param $type:
        :param $name:
        :param $text:
        :param $url:
        :param $width:
        :param $height:
        :param $top:
        :param $left:
        :param $onClose:
        :param $title:
        :param $footer:
        :returns: string HTML string for the button

    .. php:method:: fetchId($type, $name)

        Get the button id

        :param $type:
        :param $name:
        :returns: string Button CSS Id

    .. php:method:: _getCommand($url)

        Get the JavaScript command for the button

        :param $url:
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
