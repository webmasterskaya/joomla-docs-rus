-----------------------------
Joomla\\CMS\\Mail\\MailHelper
-----------------------------

.. php:namespace: Joomla\\CMS\\Mail

.. php:class:: MailHelper

    Email helper class, provides static methods to perform various tasks relevant
    to the Joomla email routines.

    TODO: Test these methods as the regex work is first run and not tested thoroughly

    .. php:method:: cleanLine($value)

        Cleans single line inputs.

        :param $value:
        :returns: string Cleaned string.

    .. php:method:: cleanText($value)

        Cleans multi-line inputs.

        :param $value:
        :returns: string Cleaned multi-line string.

    .. php:method:: cleanBody($body)

        Cleans any injected headers from the email body.

        :param $body:
        :returns: string Cleaned email body string.

    .. php:method:: cleanSubject($subject)

        Cleans any injected headers from the subject string.

        :param $subject:
        :returns: string Cleaned email subject string.

    .. php:method:: cleanAddress($address)

        Verifies that an email address does not have any extra headers injected
        into it.

        :param $address:
        :returns: mixed email address string or boolean false if injected headers are present.

    .. php:method:: isEmailAddress($email)

        Verifies that the string is in a proper email address format.

        :param $email:
        :returns: boolean True if string has the correct format; false otherwise.
