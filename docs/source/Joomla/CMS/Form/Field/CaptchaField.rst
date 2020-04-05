--------------------------------------
Joomla\\CMS\\Form\\Field\\CaptchaField
--------------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Field

.. php:class:: CaptchaField

    Captcha field.

    .. php:attr:: type

        :type: string

        :scope: protected

        The field type.

    .. php:attr:: _captcha

        :type: Captcha

        :scope: protected

        The captcha base instance of our type.

    .. php:attr:: description

        :type: string

        :scope: protected

        The description text for the form field. Usually used in tooltips.

    .. php:attr:: hint

        :type: string

        :scope: protected

        The hint text for the form field used to display hint inside the field.

    .. php:attr:: autocomplete

        :type: mixed

        :scope: protected

        The autocomplete state for the form field.  If 'off' element will not be
        automatically
        completed by browser.

    .. php:attr:: spellcheck

        :type: boolean

        :scope: protected

        The spellcheck state for the form field.

    .. php:attr:: autofocus

        :type: boolean

        :scope: protected

        The autofocus request for the form field.  If true element will be
        automatically
        focused on document load.

    .. php:attr:: element

        :type: \SimpleXMLElement

        :scope: protected

        The SimpleXMLElement object of the `<field>` XML element that describes
        the form field.

    .. php:attr:: form

        :type: Form

        :scope: protected

        The Form object of the form attached to the form field.

    .. php:attr:: formControl

        :type: string

        :scope: protected

        The form control prefix for field names from the JForm object attached to
        the form field.

    .. php:attr:: hidden

        :type: boolean

        :scope: protected

        The hidden state for the form field.

    .. php:attr:: translateLabel

        :type: boolean

        :scope: protected

        True to translate the field label string.

    .. php:attr:: translateDescription

        :type: boolean

        :scope: protected

        True to translate the field description string.

    .. php:attr:: translateHint

        :type: boolean

        :scope: protected

        True to translate the field hint string.

    .. php:attr:: id

        :type: string

        :scope: protected

        The document id for the form field.

    .. php:attr:: input

        :type: string

        :scope: protected

        The input for the form field.

    .. php:attr:: label

        :type: string

        :scope: protected

        The label for the form field.

    .. php:attr:: multiple

        :type: boolean

        :scope: protected

        The multiple state for the form field.  If true then multiple values are
        allowed for the
        field.  Most often used for list field types.

    .. php:attr:: repeat

        :type: mixed

        Allows extensions to create repeat elements

    .. php:attr:: pattern

        :type: string

        :scope: protected

        The pattern (Reg Ex) of value of the form field.

    .. php:attr:: validationtext

        :type: string

        :scope: protected

        The validation text of invalid value of the form field.

    .. php:attr:: name

        :type: string

        :scope: protected

        The name of the form field.

    .. php:attr:: fieldname

        :type: string

        :scope: protected

        The name of the field.

    .. php:attr:: group

        :type: string

        :scope: protected

        The group of the field.

    .. php:attr:: required

        :type: boolean

        :scope: protected

        The required state for the form field.  If true then there must be a value
        for the field to
        be considered valid.

    .. php:attr:: disabled

        :type: boolean

        :scope: protected

        The disabled state for the form field.  If true then the field will be
        disabled and user can't
        interact with the field.

    .. php:attr:: readonly

        :type: boolean

        :scope: protected

        The readonly state for the form field.  If true then the field will be
        readonly.

    .. php:attr:: validate

        :type: string

        :scope: protected

        The validation method for the form field.  This value will determine which
        method is used
        to validate the value for a field.

    .. php:attr:: value

        :type: mixed

        :scope: protected

        The value of the form field.

    .. php:attr:: default

        :type: mixed

        :scope: protected

        The default value of the form field.

    .. php:attr:: size

        :type: integer

        :scope: protected

        The size of the form field.

    .. php:attr:: class

        :type: mixed

        :scope: protected

        The class of the form field

    .. php:attr:: labelclass

        :type: mixed

        :scope: protected

        The label's CSS class of the form field

    .. php:attr:: onchange

        :type: string

        :scope: protected

        The javascript onchange of the form field.

    .. php:attr:: onclick

        :type: string

        :scope: protected

        The javascript onclick of the form field.

    .. php:attr:: showon

        :type: string

        :scope: protected

        The conditions to show/hide the field.

    .. php:attr:: count

        :type: integer

        :scope: protected

        The count value for generated name field

    .. php:attr:: generated_fieldname

        :type: string

        :scope: protected

        The string used for generated fields names

    .. php:attr:: layout

        :type: string

        :scope: protected

        Name of the layout being used to render the field

    .. php:attr:: renderLayout

        :type: string

        :scope: protected

        Layout to render the form field

    .. php:attr:: renderLabelLayout

        :type: string

        :scope: protected

        Layout to render the label

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

        Method to get the field input.

        :returns: string The field input.

    .. php:method:: __construct($form = null)

        Method to instantiate the form field object.

        :param $form:

    .. php:method:: setForm(Form $form)

        Method to attach a JForm object to the field.

        :type $form: Form
        :param $form:
        :returns: FormField The form field object so that the method can be used in a chain.

    .. php:method:: setValue($value)

        Simple method to set the value

        :param $value:
        :returns: void

    .. php:method:: getId($fieldId, $fieldName)

        Method to get the id used for the field input tag.

        :param $fieldId:
        :param $fieldName:
        :returns: string The id to be used for the field input tag.

    .. php:method:: getTitle()

        Method to get the field title.

        :returns: string The field title.

    .. php:method:: getLabel()

        Method to get the field label markup.

        :returns: string The field label markup.

    .. php:method:: getName($fieldName)

        Method to get the name used for the field input tag.

        :param $fieldName:
        :returns: string The name to be used for the field input tag.

    .. php:method:: getFieldName($fieldName)

        Method to get the field name used.

        :param $fieldName:
        :returns: string The field name

    .. php:method:: getAttribute($name, $default = null)

        Method to get an attribute of the field

        :param $name:
        :param $default:
        :returns: mixed Value of the attribute / default

    .. php:method:: getControlGroup()

        Method to get a control group with label and input.

        :returns: string A string containing the html for the control group

    .. php:method:: render($layoutId, $data = array())

        Render a layout of this field

        :param $layoutId:
        :param $data:
        :returns: string

    .. php:method:: renderField($options = array())

        Method to get a control group with label and input.

        :param $options:
        :returns: string A string containing the html for the control group

    .. php:method:: getLayoutData()

        Method to get the data to be passed to the layout for rendering.

        :returns: array

    .. php:method:: getLayoutPaths()

        Allow to override renderer include paths in child fields

        :returns: array

    .. php:method:: getRenderer($layoutId = 'default')

        Get the renderer

        :param $layoutId:
        :returns: FileLayout

    .. php:method:: isDebugEnabled()

        Is debug enabled for this field

        :returns: boolean
