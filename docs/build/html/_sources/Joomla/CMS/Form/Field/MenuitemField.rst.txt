---------------------------------------
Joomla\\CMS\\Form\\Field\\MenuitemField
---------------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Field

.. php:class:: MenuitemField

    Supports an HTML grouped select list of menu item grouped by menu

    .. php:attr:: type

        :type: string

        The form field type.

    .. php:attr:: menuType

        :type: string

        :scope: protected

        The menu type.

    .. php:attr:: clientId

        :type: string

        :scope: protected

        The client id.

    .. php:attr:: language

        :type: array

        :scope: protected

        The language.

    .. php:attr:: published

        :type: array

        :scope: protected

        The published status.

    .. php:attr:: disable

        :type: array

        :scope: protected

        The disabled status.

    .. php:method:: __get($name)

        Method to get certain otherwise inaccessible properties from the form
        field object.

        :param $name:
        :returns: mixed The property value or null.

    .. php:method:: __set($name, $value)

        Method to set certain otherwise inaccessible properties of the form field
        object.

        :param $name:
        :param $value:
        :returns: void

    .. php:method:: setup(SimpleXMLElement $element, $value, $group = null)

        Method to attach a JForm object to the field.

        :type $element: SimpleXMLElement
        :param $element:
        :param $value:
        :param $group:
        :returns: boolean True on success.

    .. php:method:: getGroups()

        Method to get the field option groups.

        :returns: array The field option objects as a nested array in groups.
