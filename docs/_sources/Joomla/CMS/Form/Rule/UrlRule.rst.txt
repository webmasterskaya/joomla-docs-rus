--------------------------------
Joomla\\CMS\\Form\\Rule\\UrlRule
--------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Rule

.. php:class:: UrlRule

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

        Method to test an external or internal url for all valid parts.

        :type $element: SimpleXMLElement
        :param $element:
        :param $value:
        :param $group:
        :type $input: Registry
        :param $input:
        :type $form: Form
        :param $form:
        :returns: boolean True if the value is valid, false otherwise.
