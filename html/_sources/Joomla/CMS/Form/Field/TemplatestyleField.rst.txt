--------------------------------------------
Joomla\\CMS\\Form\\Field\\TemplatestyleField
--------------------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Field

.. php:class:: TemplatestyleField

    Supports a select grouped list of template styles

    .. php:attr:: type

        :type: string

        The form field type.

    .. php:attr:: clientName

        :type: mixed

        :scope: protected

        The client name.

    .. php:attr:: template

        :type: mixed

        :scope: protected

        The template.

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

        Method to get the list of template style options grouped by template.
        Use the client attribute to specify a specific client.
        Use the template attribute to specify a specific template

        :returns: array The field option objects as a nested array in groups.
