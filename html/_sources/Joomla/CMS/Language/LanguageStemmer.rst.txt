--------------------------------------
Joomla\\CMS\\Language\\LanguageStemmer
--------------------------------------

.. php:namespace: Joomla\\CMS\\Language

.. php:class:: LanguageStemmer

    Stemmer base class.

    .. php:attr:: cache

        :type: array

        :scope: protected

        An internal cache of stemmed tokens.

    .. php:attr:: instances

        :type: array

        :scope: protected

    .. php:method:: getInstance($adapter)

        Method to get a stemmer, creating it if necessary.

        :param $adapter:
        :returns: LanguageStemmer A LanguageStemmer instance.

    .. php:method:: stem($token, $lang)

        Method to stem a token and return the root.

        :param $token:
        :param $lang:
        :returns: string The root token.
