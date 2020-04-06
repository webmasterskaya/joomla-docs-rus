-------------------------------------------------
Joomla\\CMS\\Filter\\Wrapper\\OutputFilterWrapper
-------------------------------------------------

.. php:namespace: Joomla\\CMS\\Filter\\Wrapper

.. php:class:: OutputFilterWrapper

    Wrapper class for OutputFilter

    .. php:method:: objectHTMLSafe($mixed, $quote_style = 3, $exclude_keys = '')

        Helper wrapper method for objectHTMLSafe

        :param $mixed:
        :param $quote_style:
        :param $exclude_keys:
        :returns: void

    .. php:method:: linkXHTMLSafe($input)

        Helper wrapper method for linkXHTMLSafe

        :param $input:
        :returns: string Processed string.

    .. php:method:: stringURLSafe($string)

        Helper wrapper method for stringURLSafe

        :param $string:
        :returns: string Processed string.

    .. php:method:: stringURLUnicodeSlug($string)

        Helper wrapper method for stringURLUnicodeSlug

        :param $string:
        :returns: string Processed string.

    .. php:method:: ampReplace($text)

        Helper wrapper method for ampReplace

        :param $text:
        :returns: string Processed string.

    .. php:method:: _ampReplaceCallback($m)

        Helper wrapper method for _ampReplaceCallback

        :param $m:
        :returns: string Replaced string.

    .. php:method:: cleanText($text)

        Helper wrapper method for cleanText

        :param $text:
        :returns: string Cleaned text.

    .. php:method:: stripImages($string)

        Helper wrapper method for stripImages

        :param $string:
        :returns: string Cleaned string.

    .. php:method:: stripIframes($string)

        Helper wrapper method for stripIframes

        :param $string:
        :returns: string Cleaned string.
