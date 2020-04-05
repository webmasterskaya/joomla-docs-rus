------------------------------
Joomla\\CMS\\Mail\\MailWrapper
------------------------------

.. php:namespace: Joomla\\CMS\\Mail

.. php:class:: MailWrapper

    Wrapper class for MailHelper

    .. php:method:: cleanLine($value)

        Helper wrapper method for cleanLine

        :param $value:
        :returns: string Cleaned string.

    .. php:method:: cleanText($value)

        Helper wrapper method for cleanText

        :param $value:
        :returns: string Cleaned multi-line string.

    .. php:method:: cleanBody($body)

        Helper wrapper method for cleanBody

        :param $body:
        :returns: string Cleaned email body string.

    .. php:method:: cleanSubject($subject)

        Helper wrapper method for cleanSubject

        :param $subject:
        :returns: string Cleaned email subject string.

    .. php:method:: cleanAddress($address)

        Helper wrapper method for cleanAddress

        :param $address:
        :returns: mixed email address string or boolean false if injected headers are present

    .. php:method:: isEmailAddress($email)

        Helper wrapper method for isEmailAddress

        :param $email:
        :returns: boolean True if string has the correct format; false otherwise.
