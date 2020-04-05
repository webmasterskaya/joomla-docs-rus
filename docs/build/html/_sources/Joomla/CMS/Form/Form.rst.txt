-----------------------
Joomla\\CMS\\Form\\Form
-----------------------

.. php:namespace: Joomla\\CMS\\Form

.. php:class:: Form

    Form Class for the Joomla Platform.

    This class implements a robust API for constructing, populating, filtering, and validating forms.
    It uses XML definitions to construct form fields and a variety of field and rule classes to render and validate the form.

    .. php:attr:: data

        :type: Registry

        :scope: protected

        The Registry data store for form fields during display.

    .. php:attr:: errors

        :type: array

        :scope: protected

        The form object errors array.

    .. php:attr:: name

        :type: string

        :scope: protected

        The name of the form instance.

    .. php:attr:: options

        :type: array

        :scope: protected

        The form object options for use in rendering and validation.

    .. php:attr:: xml

        :type: \SimpleXMLElement

        :scope: protected

        The form XML definition.

    .. php:attr:: forms

        :type: Form[]

        :scope: protected

        Form instances.

    .. php:attr:: repeat

        :type: boolean

        Alows extensions to implement repeating elements

    .. php:method:: __construct($name, $options = array())

        Method to instantiate the form object.

        :param $name:
        :param $options:

    .. php:method:: bind($data)

        Method to bind data to the form.

        :param $data:
        :returns: boolean True on success.

    .. php:method:: bindLevel($group, $data)

        Method to bind data to the form for the group level.

        :param $group:
        :param $data:
        :returns: void

    .. php:method:: filter($data, $group = null)

        Method to filter the form data.

        :param $data:
        :param $group:
        :returns: mixed Array or false.

    .. php:method:: getErrors()

        Return all errors, if any.

        :returns: array Array of error messages or RuntimeException objects.

    .. php:method:: getField($name, $group = null, $value = null)

        Method to get a form field represented as a JFormField object.

        :param $name:
        :param $group:
        :param $value:
        :returns: \JFormField|boolean The JFormField object for the field or boolean false on error.

    .. php:method:: getFieldAttribute($name, $attribute, $default = null, $group = null)

        Method to get an attribute value from a field XML element.  If the
        attribute doesn't exist or
        is null then the optional default value will be used.

        :param $name:
        :param $attribute:
        :param $default:
        :param $group:
        :returns: mixed The attribute value for the field.

    .. php:method:: getFieldset($set = null)

        Method to get an array of JFormField objects in a given fieldset by name.
        If no name is
        given then all fields are returned.

        :param $set:
        :returns: \JFormField[] The array of JFormField objects in the fieldset.

    .. php:method:: getFieldsets($group = null)

        Method to get an array of fieldset objects optionally filtered over a
        given field group.

        :param $group:
        :returns: array The array of fieldset objects.

    .. php:method:: getFormControl()

        Method to get the form control. This string serves as a container for all
        form fields. For
        example, if there is a field named 'foo' and a field named 'bar' and the
        form control is
        empty the fields will be rendered like: `<input name="foo" />` and `<input
        name="bar" />`.  If
        the form control is set to 'joomla' however, the fields would be rendered
        like:
        `<input name="joomla[foo]" />` and `<input name="joomla[bar]" />`.

        :returns: string The form control string.

    .. php:method:: getGroup($group, $nested = false)

        Method to get an array of JFormField objects in a given field group by
        name.

        :param $group:
        :param $nested:
        :returns: \JFormField[] The array of JFormField objects in the field group.

    .. php:method:: getInput($name, $group = null, $value = null)

        Method to get a form field markup for the field input.

        :param $name:
        :param $group:
        :param $value:
        :returns: string The form field markup.

    .. php:method:: getLabel($name, $group = null)

        Method to get the label for a field input.

        :param $name:
        :param $group:
        :returns: string The form field label.

    .. php:method:: getName()

        Method to get the form name.

        :returns: string The name of the form.

    .. php:method:: getValue($name, $group = null, $default = null)

        Method to get the value of a field.

        :param $name:
        :param $group:
        :param $default:
        :returns: mixed The value of the field or the default value if empty.

    .. php:method:: getControlGroup($name, $group = null, $default = null)

        Method to get a control group with label and input.

        :param $name:
        :param $group:
        :param $default:
        :returns: string A string containing the html for the control goup

    .. php:method:: getControlGroups($name)

        Method to get all control groups with label and input of a fieldset.

        :param $name:
        :returns: string A string containing the html for the control goups

    .. php:method:: renderField($name, $group = null, $default = null, $options = array())

        Method to get a control group with label and input.

        :param $name:
        :param $group:
        :param $default:
        :param $options:
        :returns: string A string containing the html for the control goup

    .. php:method:: renderFieldset($name, $options = array())

        Method to get all control groups with label and input of a fieldset.

        :param $name:
        :param $options:
        :returns: string A string containing the html for the control goups

    .. php:method:: load($data, $replace = true, $xpath = false)

        Method to load the form description from an XML string or object.

        The replace option works per field.  If a field being loaded already
        exists in the current form definition then the behavior or load will vary
        depending upon the replace flag.  If it is set to true, then the existing
        field will be replaced in its exact location by the new field being
        loaded.  If it is false, then the new field being loaded will be ignored
        and the method will move on to the next field to load.

        :param $data:
        :param $replace:
        :param $xpath:
        :returns: boolean True on success, false otherwise.

    .. php:method:: loadFile($file, $reset = true, $xpath = false)

        Method to load the form description from an XML file.

        The reset option works on a group basis. If the XML file references groups
        that have already been created they will be replaced with the fields in
        the new XML file unless the $reset parameter has been set to false.

        :param $file:
        :param $reset:
        :param $xpath:
        :returns: boolean True on success, false otherwise.

    .. php:method:: removeField($name, $group = null)

        Method to remove a field from the form definition.

        :param $name:
        :param $group:
        :returns: boolean True on success, false otherwise.

    .. php:method:: removeGroup($group)

        Method to remove a group from the form definition.

        :param $group:
        :returns: boolean True on success.

    .. php:method:: reset($xml = false)

        Method to reset the form data store and optionally the form XML
        definition.

        :param $xml:
        :returns: boolean True on success.

    .. php:method:: setField(SimpleXMLElement $element, $group = null, $replace = true, $fieldset = 'default')

        Method to set a field XML element to the form definition.  If the replace
        flag is set then
        the field will be set whether it already exists or not.  If it isn't set,
        then the field
        will not be replaced if it already exists.

        :type $element: SimpleXMLElement
        :param $element:
        :param $group:
        :param $replace:
        :param $fieldset:
        :returns: boolean True on success.

    .. php:method:: setFieldAttribute($name, $attribute, $value, $group = null)

        Method to set an attribute value for a field XML element.

        :param $name:
        :param $attribute:
        :param $value:
        :param $group:
        :returns: boolean True on success.

    .. php:method:: setFields($elements, $group = null, $replace = true, $fieldset = 'default')

        Method to set some field XML elements to the form definition.  If the
        replace flag is set then
        the fields will be set whether they already exists or not.  If it isn't
        set, then the fields
        will not be replaced if they already exist.

        :param $elements:
        :param $group:
        :param $replace:
        :param $fieldset:
        :returns: boolean True on success.

    .. php:method:: setValue($name, $group = null, $value = null)

        Method to set the value of a field. If the field does not exist in the
        form then the method
        will return false.

        :param $name:
        :param $group:
        :param $value:
        :returns: boolean True on success.

    .. php:method:: validate($data, $group = null)

        Method to validate form data.

        Validation warnings will be pushed into JForm::errors and should be
        retrieved with JForm::getErrors() when validate returns boolean false.

        :param $data:
        :param $group:
        :returns: boolean True on success.

    .. php:method:: filterField($element, $value)

        Method to apply an input filter to a value based on field data.

        :param $element:
        :param $value:
        :returns: mixed The filtered value.

    .. php:method:: findField($name, $group = null)

        Method to get a form field represented as an XML element object.

        :param $name:
        :param $group:
        :returns: \SimpleXMLElement|boolean The XML element object for the field or boolean false on error.

    .. php:method:: findFieldsByFieldset($name)

        Method to get an array of `<field>` elements from the form XML document
        which are in a specified fieldset by name.

        :param $name:
        :returns: \SimpleXMLElement[]|boolean Boolean false on error or array of SimpleXMLElement objects.

    .. php:method:: findFieldsByGroup($group = null, $nested = false)

        Method to get an array of `<field>` elements from the form XML document
        which are in a control group by name.

        :param $group:
        :param $nested:
        :returns: \SimpleXMLElement[]|boolean Boolean false on error or array of SimpleXMLElement objects.

    .. php:method:: findGroup($group)

        Method to get a form field group represented as an XML element object.

        :param $group:
        :returns: \SimpleXMLElement[]|boolean An array of XML element objects for the group or boolean false on error.

    .. php:method:: loadField($element, $group = null, $value = null)

        Method to load, setup and return a JFormField object based on field data.

        :param $element:
        :param $group:
        :param $value:
        :returns: \JFormField|boolean The JFormField object for the field or boolean false on error.

    .. php:method:: loadFieldType($type, $new = true)

        Proxy for {@link FormHelper::loadFieldType()}.

        :param $type:
        :param $new:
        :returns: FormField|boolean FormField object on success, false otherwise.

    .. php:method:: loadRuleType($type, $new = true)

        Proxy for FormHelper::loadRuleType().

        :param $type:
        :param $new:
        :returns: FormRule|boolean FormRule object on success, false otherwise.

    .. php:method:: syncPaths()

        Method to synchronize any field, form or rule paths contained in the XML
        document.

        :returns: boolean True on success.

    .. php:method:: validateField(SimpleXMLElement $element, $group = null, $value = null, Registry $input = null)

        Method to validate a JFormField object based on field data.

        :type $element: SimpleXMLElement
        :param $element:
        :param $group:
        :param $value:
        :type $input: Registry
        :param $input:
        :returns: boolean Boolean true if field value is valid, Exception on failure.

    .. php:method:: addFieldPath($new = null)

        Proxy for {@link FormHelper::addFieldPath()}.

        :param $new:
        :returns: array The list of paths that have been added.

    .. php:method:: addFormPath($new = null)

        Proxy for FormHelper::addFormPath().

        :param $new:
        :returns: array The list of paths that have been added.

    .. php:method:: addRulePath($new = null)

        Proxy for FormHelper::addRulePath().

        :param $new:
        :returns: array The list of paths that have been added.

    .. php:method:: getInstance($name, $data = null, $options = array(), $replace = true, $xpath = false)

        Method to get an instance of a form.

        :param $name:
        :param $data:
        :param $options:
        :param $replace:
        :param $xpath:
        :returns: Form JForm instance.

    .. php:method:: addNode(SimpleXMLElement $source, SimpleXMLElement $new)

        Adds a new child SimpleXMLElement node to the source.

        :type $source: SimpleXMLElement
        :param $source:
        :type $new: SimpleXMLElement
        :param $new:
        :returns: void

    .. php:method:: mergeNode(SimpleXMLElement $source, SimpleXMLElement $new)

        Update the attributes of a child node

        :type $source: SimpleXMLElement
        :param $source:
        :type $new: SimpleXMLElement
        :param $new:
        :returns: void

    .. php:method:: mergeNodes(SimpleXMLElement $source, SimpleXMLElement $new)

        Merges new elements into a source `<fields>` element.

        :type $source: SimpleXMLElement
        :param $source:
        :type $new: SimpleXMLElement
        :param $new:
        :returns: void

    .. php:method:: getAttribute($name, $default = null)

        Returns the value of an attribute of the form itself

        :param $name:
        :param $default:
        :returns: mixed Value of the attribute / default

    .. php:method:: getData()

        Getter for the form data

        :returns: Registry Object with the data

    .. php:method:: getXml()

        Method to get the XML form object

        :returns: \SimpleXMLElement The form XML object

    .. php:method:: getFieldXml($name, $group = null)

        Method to get a form field represented as an XML element object.

        :param $name:
        :param $group:
        :returns: \SimpleXMLElement|boolean The XML element object for the field or boolean false on error.
