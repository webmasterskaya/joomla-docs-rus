-----------------------------
Joomla\\CMS\\Captcha\\Captcha
-----------------------------

.. php:namespace: Joomla\\CMS\\Captcha

.. php:class:: Captcha

    Joomla! Captcha base object

    .. php:attr:: _observers

        :type: array

        :scope: protected

        An array of Observer objects to notify

    .. php:attr:: _state

        :type: mixed

        :scope: protected

        The state of the observable object

    .. php:attr:: _methods

        :type: array

        :scope: protected

        A multi dimensional array of [function][] = key for observers

    .. php:method:: __construct($captcha, $options)

        Class constructor.

        :param $captcha:
        :param $options:

    .. php:method:: getInstance($captcha, $options = array())

        Returns the global Captcha object, only creating it
        if it doesn't already exist.

        :param $captcha:
        :param $options:
        :returns: Captcha|null Instance of this class.

    .. php:method:: initialise($id)

        Fire the onInit event to initialise the captcha plugin.

        :param $id:
        :returns: boolean True on success

    .. php:method:: display($name, $id, $class = '')

        Get the HTML for the captcha.

        :param $name:
        :param $id:
        :param $class:
        :returns: mixed The return value of the function "onDisplay" of the selected Plugin.

    .. php:method:: checkAnswer($code)

        Checks if the answer is correct.

        :param $code:
        :returns: bool Whether the provided answer was correct

    .. php:method:: setupField(Joomla\CMS\Form\Field\CaptchaField $field, SimpleXMLElement $element)

        Method to react on the setup of a captcha field. Gives the possibility
        to change the field and/or the XML element for the field.

        :type $field: Joomla\CMS\Form\Field\CaptchaField
        :param $field:
        :type $element: SimpleXMLElement
        :param $element:
        :returns: void

    .. php:method:: _load($options = array())

        Load the Captcha plugin.

        :param $options:
        :returns: void

    .. php:method:: getState()

        Get the state of the Captcha object

        :returns: mixed The state of the object.

    .. php:method:: attach($observer)

        Attach an observer object

        :param $observer:
        :returns: void

    .. php:method:: detach($observer)

        Detach an observer object

        :param $observer:
        :returns: boolean True if the observer object was detached.
