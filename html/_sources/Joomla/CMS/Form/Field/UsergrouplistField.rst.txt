--------------------------------------------
Joomla\\CMS\\Form\\Field\\UsergrouplistField
--------------------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Field

.. php:class:: UsergrouplistField

    Field to load a dropdown list of available user groups

    .. php:attr:: type

        :type: string

        :scope: protected

        The form field type.

    .. php:attr:: options

        :type: array

        :scope: protected

        Cached array of the category items.

    .. php:method:: setup(SimpleXMLElement $element, $value, $group = null)

        Method to attach a JForm object to the field.

        :type $element: SimpleXMLElement
        :param $element:
        :param $value:
        :param $group:
        :returns: boolean True on success.

    .. php:method:: getOptions()

        Method to get the options to populate list

        :returns: array The field option objects.
