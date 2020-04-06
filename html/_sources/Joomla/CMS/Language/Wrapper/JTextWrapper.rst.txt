--------------------------------------------
Joomla\\CMS\\Language\\Wrapper\\JTextWrapper
--------------------------------------------

.. php:namespace: Joomla\\CMS\\Language\\Wrapper

.. php:class:: JTextWrapper

    Wrapper class for JText

    .. php:method:: _($string, $jsSafe = false, $interpretBackSlashes = true, $script = false)

        Helper wrapper method for _

        :param $string:
        :param $jsSafe:
        :param $interpretBackSlashes:
        :param $script:
        :returns: string The translated string or the key if $script is true.

    .. php:method:: alt($string, $alt, $jsSafe = false, $interpretBackSlashes = true, $script = false)

        Helper wrapper method for alt

        :param $string:
        :param $alt:
        :param $jsSafe:
        :param $interpretBackSlashes:
        :param $script:
        :returns: string The translated string or the key if $script is true.

    .. php:method:: plural($string, $n)

        Helper wrapper method for plural

        :param $string:
        :param $n:
        :returns: string The translated strings or the key if 'script' is true in the array of options.

    .. php:method:: sprintf($string)

        Helper wrapper method for sprintf

        :param $string:
        :returns: string The translated strings or the key if 'script' is true in the array of options.

    .. php:method:: printf($string)

        Helper wrapper method for printf

        :param $string:
        :returns: mixed

    .. php:method:: script($string = null, $jsSafe = false, $interpretBackSlashes = true)

        Helper wrapper method for script

        :param $string:
        :param $jsSafe:
        :param $interpretBackSlashes:
        :returns: string
