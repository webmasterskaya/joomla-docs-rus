----------------------------------------
Joomla\\CMS\\Toolbar\\Button\\HelpButton
----------------------------------------

.. php:namespace: Joomla\\CMS\\Toolbar\\Button

.. php:class:: HelpButton

    Renders a help popup window button

    .. php:attr:: _name

        :type: string

        :scope: protected

    .. php:attr:: _parent

        :type: \JButton

        :scope: protected

        reference to the object that instantiated the element

    .. php:method:: fetchButton($type = 'Help', $ref = '', $com = false, $override = null, $component = null)

        Fetches the button HTML code.

        :param $type:
        :param $ref:
        :param $com:
        :param $override:
        :param $component:
        :returns: string

    .. php:method:: fetchId()

        Get the button id

        Redefined from JButton class

        :returns: string Button CSS Id

    .. php:method:: _getCommand($ref, $com, $override, $component)

        Get the JavaScript command for the button

        :param $ref:
        :param $com:
        :param $override:
        :param $component:
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
