---------------------------------------------
Joomla\\CMS\\Form\\Field\\ModulepositionField
---------------------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Field

.. php:class:: ModulepositionField

    Module Position field.

    .. php:attr:: type

        :type: string

        :scope: protected

        The form field type.

    .. php:attr:: clientId

        :type: integer

        :scope: protected

        The client ID.

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

    .. php:method:: getInput()

        Method to get the field input markup.

        :returns: string The field input markup.
