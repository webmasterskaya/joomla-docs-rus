----------------------------------
Joomla\\CMS\\Form\\Rule\\RulesRule
----------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Rule

.. php:class:: RulesRule

    Form Rule class for the Joomla Platform.

    .. php:attr:: regex

        :type: string

        :scope: protected

        The regular expression to use in testing a form field value.

    .. php:attr:: modifiers

        :type: string

        :scope: protected

        The regular expression modifiers to use when testing a form field value.

    .. php:method:: test(SimpleXMLElement $element, $value, $group = null, Registry $input = null, Form $form = null)

        Method to test the value.

        :type $element: SimpleXMLElement
        :param $element:
        :param $value:
        :param $group:
        :type $input: Registry
        :param $input:
        :type $form: Form
        :param $form:
        :returns: boolean True if the value is valid, false otherwise.

    .. php:method:: getValueActions($value)

        Method to get the list of permission action names from the form field
        value.

        :param $value:
        :returns: array A list of permission action names from the form field value.

    .. php:method:: getFieldActions(SimpleXMLElement $element)

        Method to get the list of possible permission action names for the form
        field.

        :type $element: SimpleXMLElement
        :param $element:
        :returns: array A list of permission action names from the form field element definition.
