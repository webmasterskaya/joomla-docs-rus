-----------------------------------------------------
Joomla\\CMS\\Language\\Wrapper\\LanguageHelperWrapper
-----------------------------------------------------

.. php:namespace: Joomla\\CMS\\Language\\Wrapper

.. php:class:: LanguageHelperWrapper

    Wrapper class for LanguageHelper

    .. php:method:: createLanguageList($actualLanguage, $basePath = JPATH_BASE, $caching = false, $installed = false)

        Helper wrapper method for createLanguageList

        :param $actualLanguage:
        :param $basePath:
        :param $caching:
        :param $installed:
        :returns: array List of system languages.

    .. php:method:: detectLanguage()

        Helper wrapper method for detectLanguage

        :returns: string locale or null if not found.

    .. php:method:: getLanguages($key = 'default')

        Helper wrapper method for getLanguages

        :param $key:
        :returns: array An array of published languages.
