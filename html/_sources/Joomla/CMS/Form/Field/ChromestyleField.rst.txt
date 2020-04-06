------------------------------------------
Joomla\\CMS\\Form\\Field\\ChromestyleField
------------------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Field

.. php:class:: ChromestyleField

    Chrome Styles field.

    .. php:attr:: type

        :type: string

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

    .. php:method:: getGroups()

        Method to get the list of template chrome style options
        grouped by template.

        :returns: array The field option objects as a nested array in groups.

    .. php:method:: getTemplateModuleStyles()

        Method to get the templates module styles.

        :returns: array The array of styles, grouped by templates.

    .. php:method:: getSystemTemplate()

        Method to get the system template as an object.

        :returns: \stdClass The object of system template.

    .. php:method:: getTemplates()

        Return a list of templates

        :returns: array List of templates
