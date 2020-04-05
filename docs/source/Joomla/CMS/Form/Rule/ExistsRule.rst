-----------------------------------
Joomla\\CMS\\Form\\Rule\\ExistsRule
-----------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Rule

.. php:class:: ExistsRule

    Form rule class to determine if a value exists in a database table.

    .. php:attr:: regex

        :type: string

        :scope: protected

        The regular expression to use in testing a form field value.

    .. php:attr:: modifiers

        :type: string

        :scope: protected

        The regular expression modifiers to use when testing a form field value.

    .. php:method:: test(SimpleXMLElement $element, $value, $group = null, Registry $input = null, Form $form = null)

        Method to test the username for uniqueness.

        :type $element: SimpleXMLElement
        :param $element:
        :param $value:
        :param $group:
        :type $input: Registry
        :param $input:
        :type $form: Form
        :param $form:
        :returns: boolean True if the value is valid, false otherwise.
