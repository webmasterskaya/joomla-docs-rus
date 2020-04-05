-----------------------------------
Joomla\\CMS\\String\\PunycodeHelper
-----------------------------------

.. php:namespace: Joomla\\CMS\\String

.. php:class:: PunycodeHelper

    Joomla Platform String Punycode Class

    Class for handling UTF-8 URLs Wraps the Punycode library All functions assume the validity of utf-8 URLs.

    .. php:method:: toPunycode($utfString)

        Transforms a UTF-8 string to a Punycode string

        :param $utfString:
        :returns: string The punycode string

    .. php:method:: fromPunycode($punycodeString)

        Transforms a Punycode string to a UTF-8 string

        :param $punycodeString:
        :returns: string The UF-8 URL

    .. php:method:: urlToPunycode($uri)

        Transforms a UTF-8 URL to a Punycode URL

        :param $uri:
        :returns: string The punycode URL

    .. php:method:: urlToUTF8($uri)

        Transforms a Punycode URL to a UTF-8 URL

        :param $uri:
        :returns: string The UTF-8 URL

    .. php:method:: emailToPunycode($email)

        Transforms a UTF-8 email to a Punycode email
        This assumes a valid email address

        :param $email:
        :returns: string The punycode email

    .. php:method:: emailToUTF8($email)

        Transforms a Punycode email to a UTF-8 email
        This assumes a valid email address

        :param $email:
        :returns: string The punycode email
