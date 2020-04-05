-------------------------------------
Joomla\\CMS\\Form\\Field\\EditorField
-------------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Field

.. php:class:: EditorField

    A textarea field for content creation

    .. php:attr:: type

        :type: string

        The form field type.

    .. php:attr:: editor

        :type: Editor

        :scope: protected

        The Editor object.

    .. php:attr:: height

        :type: string

        :scope: protected

        The height of the editor.

    .. php:attr:: width

        :type: string

        :scope: protected

        The width of the editor.

    .. php:attr:: assetField

        :type: string

        :scope: protected

        The assetField of the editor.

    .. php:attr:: authorField

        :type: string

        :scope: protected

        The authorField of the editor.

    .. php:attr:: asset

        :type: string

        :scope: protected

        The asset of the editor.

    .. php:attr:: buttons

        :type: mixed

        :scope: protected

        The buttons of the editor.

    .. php:attr:: hide

        :type: array

        :scope: protected

        The hide of the editor.

    .. php:attr:: editorType

        :type: array

        :scope: protected

        The editorType of the editor.

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

        Method to get the field input markup for the editor area

        :returns: string The field input markup.

    .. php:method:: getEditor()

        Method to get an Editor object based on the form field.

        :returns: Editor The Editor object.

    .. php:method:: save()

        Method to get the JEditor output for an onSave event.

        :returns: string The JEditor object output.
