------------------------------------------
Joomla\\CMS\\Toolbar\\Button\\CustomButton
------------------------------------------

.. php:namespace: Joomla\\CMS\\Toolbar\\Button

.. php:class:: CustomButton

    Renders a custom button

    .. php:attr:: _name

        :type: string

        :scope: protected

        Button type

    .. php:attr:: _parent

        :type: \JButton

        :scope: protected

        reference to the object that instantiated the element

    .. php:method:: fetchButton($type = 'Custom', $html = '', $id = 'custom')

        Fetch the HTML for the button

        :param $type:
        :param $html:
        :param $id:
        :returns: string HTML string for the button

    .. php:method:: fetchId($type = 'Custom', $html = '', $id = 'custom')

        Get the button CSS Id

        :param $type:
        :param $html:
        :param $id:
        :returns: string Button CSS Id

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
