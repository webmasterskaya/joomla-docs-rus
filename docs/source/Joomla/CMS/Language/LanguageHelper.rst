-------------------------------------
Joomla\\CMS\\Language\\LanguageHelper
-------------------------------------

.. php:namespace: Joomla\\CMS\\Language

.. php:class:: LanguageHelper

    Language helper class

    .. php:method:: createLanguageList($actualLanguage, $basePath = JPATH_BASE, $caching = false, $installed = false)

        Builds a list of the system languages which can be used in a select option

        :param $actualLanguage:
        :param $basePath:
        :param $caching:
        :param $installed:
        :returns: array List of system languages

    .. php:method:: detectLanguage()

        Tries to detect the language.

        :returns: string locale or null if not found

    .. php:method:: getLanguages($key = 'default')

        Get available languages

        :param $key:
        :returns: array An array of published languages

    .. php:method:: getInstalledLanguages($clientId = null, $processMetaData = false, $processManifest = false, $pivot = 'element', $orderField = null, $orderDirection = null)

        Get a list of installed languages.

        :param $clientId:
        :param $processMetaData:
        :param $processManifest:
        :param $pivot:
        :param $orderField:
        :param $orderDirection:
        :returns: array Array with the installed languages.

    .. php:method:: getContentLanguages($publishedStates = array(1), $checkInstalled = true, $pivot = 'lang_code', $orderField = null, $orderDirection = null)

        Get a list of content languages.

        :param $publishedStates:
        :param $checkInstalled:
        :param $pivot:
        :param $orderField:
        :param $orderDirection:
        :returns: array Array of the content languages.

    .. php:method:: parseIniFile($fileName, $debug = false)

        Parse strings from a language file.

        :param $fileName:
        :param $debug:
        :returns: boolean True if saved, false otherwise.

    .. php:method:: saveToIniFile($fileName, $strings)

        Save strings to a language file.

        :param $fileName:
        :param $strings:
        :returns: boolean True if saved, false otherwise.

    .. php:method:: exists($lang, $basePath = JPATH_BASE)

        Checks if a language exists.

        This is a simple, quick check for the directory that should contain
        language files for the given user.

        :param $lang:
        :param $basePath:
        :returns: boolean True if the language exists.

    .. php:method:: getMetadata($lang)

        Returns an associative array holding the metadata.

        :param $lang:
        :returns: mixed If $lang exists return key/value pair with the language metadata, otherwise return NULL.

    .. php:method:: getKnownLanguages($basePath = JPATH_BASE)

        Returns a list of known languages for an area

        :param $basePath:
        :returns: array key/value pair with the language file and real name.

    .. php:method:: getLanguagePath($basePath = JPATH_BASE, $language = null)

        Get the path to a language

        :param $basePath:
        :param $language:
        :returns: string language related path or null.

    .. php:method:: parseLanguageFiles($dir = null)

        Searches for language directories within a certain base dir.

        :param $dir:
        :returns: array Array holding the found languages as filename => real name pairs.

    .. php:method:: parseXMLLanguageFile($path)

        Parse XML file for language information.

        :param $path:
        :returns: array Array holding the found metadata as a key => value pair.
