----------------------------------------
Joomla\\CMS\\Language\\Stemmer\\Porteren
----------------------------------------

.. php:namespace: Joomla\\CMS\\Language\\Stemmer

.. php:class:: Porteren

    Porter English stemmer class.

    This class was adapted from one written by Richard Heyes.
    See copyright and link information above.

    .. php:attr:: cache

        :type: array

        :scope: protected

        An internal cache of stemmed tokens.

    .. php:attr:: instances

        :type: array

        :scope: protected

    .. php:method:: stem($token, $lang)

        Method to stem a token and return the root.

        :param $token:
        :param $lang:
        :returns: string The root token.

    .. php:method:: _step1ab($word)

        Step 1

        :param $word:
        :returns: string

    .. php:method:: _step1c($word)

        Step 1c

        :param $word:
        :returns: string

    .. php:method:: _step2($word)

        Step 2

        :param $word:
        :returns: string

    .. php:method:: _step3($word)

        Step 3

        :param $word:
        :returns: string

    .. php:method:: _step4($word)

        Step 4

        :param $word:
        :returns: string

    .. php:method:: _step5($word)

        Step 5

        :param $word:
        :returns: string

    .. php:method:: _replace($str, $check, $repl, $m = null)

        Replaces the first string with the second, at the end of the string. If
        third
        arg is given, then the preceding string must match that m count at least.

        :param $str:
        :param $check:
        :param $repl:
        :param $m:
        :returns: boolean Whether the $check string was at the end of the $str string. True does not necessarily mean that it was replaced.

    .. php:method:: _m($str)

        m() measures the number of consonant sequences in $str. if c is
        a consonant sequence and v a vowel sequence, and <..> indicates arbitrary
        presence,

        <c><v>       gives 0
        <c>vc<v>     gives 1
        <c>vcvc<v>   gives 2
        <c>vcvcvc<v> gives 3

        :param $str:
        :returns: integer The m count

    .. php:method:: _doubleConsonant($str)

        Returns true/false as to whether the given string contains two
        of the same consonant next to each other at the end of the string.

        :param $str:
        :returns: boolean Result

    .. php:method:: _cvc($str)

        Checks for ending CVC sequence where second C is not W, X or Y

        :param $str:
        :returns: boolean Result

    .. php:method:: getInstance($adapter)

        Method to get a stemmer, creating it if necessary.

        :param $adapter:
        :returns: LanguageStemmer A LanguageStemmer instance.
