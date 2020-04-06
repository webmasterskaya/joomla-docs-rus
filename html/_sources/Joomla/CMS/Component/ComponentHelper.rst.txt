---------------------------------------
Joomla\\CMS\\Component\\ComponentHelper
---------------------------------------

.. php:namespace: Joomla\\CMS\\Component

.. php:class:: ComponentHelper

    Component helper class

    .. php:attr:: components

        :type: ComponentRecord[]

        :scope: protected

        The component list cache

    .. php:method:: getComponent($option, $strict = false)

        Get the component information.

        :param $option:
        :param $strict:
        :returns: ComponentRecord An object with the information for the component.

    .. php:method:: isEnabled($option)

        Checks if the component is enabled

        :param $option:
        :returns: boolean

    .. php:method:: isInstalled($option)

        Checks if a component is installed

        :param $option:
        :returns: integer

    .. php:method:: getParams($option, $strict = false)

        Gets the parameter object for the component

        :param $option:
        :param $strict:
        :returns: Registry A Registry object.

    .. php:method:: filterText($text)

        Applies the global text filters to arbitrary text as per settings for
        current user groups

        :param $text:
        :returns: string The filtered string

    .. php:method:: renderComponent($option, $params = array())

        Render the component.

        :param $option:
        :param $params:
        :returns: string

    .. php:method:: executeComponent($path)

        Execute the component.

        :param $path:
        :returns: string The component output

    .. php:method:: _load($option)

        Load the installed components into the components property.

        :param $option:
        :returns: boolean True on success

    .. php:method:: load($option)

        Load the installed components into the components property.

        :param $option:
        :returns: boolean True on success

    .. php:method:: getComponents()

        Get installed components

        :returns: ComponentRecord[] The components property
