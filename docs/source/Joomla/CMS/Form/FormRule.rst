---------------------------
Joomla\\CMS\\Form\\FormRule
---------------------------

.. php:namespace: Joomla\\CMS\\Form

.. php:class:: FormRule

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
