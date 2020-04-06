---------------------------------
Joomla\\CMS\\Filter\\OutputFilter
---------------------------------

.. php:namespace: Joomla\\CMS\\Filter

.. php:class:: OutputFilter

    OutputFilter

    .. php:method:: linkXHTMLSafe($input)

        This method processes a string and replaces all instances of & with &amp;
        in links only.

        :param $input:
        :returns: string Processed string

    .. php:method:: stringJSSafe($string)

        This method processes a string and escapes it for use in JavaScript

        :param $string:
        :returns: string Processed text

    .. php:method:: stringURLSafe($string, $language = '')

        This method processes a string and replaces all accented UTF-8 characters
        by unaccented
        ASCII-7 "equivalents", whitespaces are replaced by hyphens and the string
        is lowercase.

        :param $string:
        :param $language:
        :returns: string Processed string

    .. php:method:: ampReplaceCallback($m)

        Callback method for replacing & with &amp; in a string

        :param $m:
        :returns: string Replaced string

    .. php:method:: _ampReplaceCallback($m)

        Callback method for replacing & with &amp; in a string

        :param $m:
        :returns: string Replaced string
