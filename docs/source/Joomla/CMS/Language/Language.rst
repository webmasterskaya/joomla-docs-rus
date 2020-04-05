-------------------------------
Joomla\\CMS\\Language\\Language
-------------------------------

.. php:namespace: Joomla\\CMS\\Language

.. php:class:: Language

    Languages/translation handler class

    .. php:attr:: languages

        :type: Language[]

        :scope: protected

        Array of Language objects

    .. php:attr:: debug

        :type: boolean

        :scope: protected

        Debug language, If true, highlights if string isn't found.

    .. php:attr:: default

        :type: string

        :scope: protected

        The default language, used when a language file in the requested language
        does not exist.

    .. php:attr:: orphans

        :type: array

        :scope: protected

        An array of orphaned text.

    .. php:attr:: metadata

        :type: array

        :scope: protected

        Array holding the language metadata.

    .. php:attr:: locale

        :type: array|boolean

        :scope: protected

        Array holding the language locale or boolean null if none.

    .. php:attr:: lang

        :type: string

        :scope: protected

        The language to load.

    .. php:attr:: paths

        :type: array

        :scope: protected

        A nested array of language files that have been loaded

    .. php:attr:: errorfiles

        :type: array

        :scope: protected

        List of language files that are in error state

    .. php:attr:: strings

        :type: array

        :scope: protected

        Translations

    .. php:attr:: used

        :type: array

        :scope: protected

        An array of used text, used during debugging.

    .. php:attr:: counter

        :type: integer

        :scope: protected

        Counter for number of loads.

    .. php:attr:: override

        :type: array

        :scope: protected

        An array used to store overrides.

    .. php:attr:: transliterator

        :type: string

        :scope: protected

        Name of the transliterator function for this language.

    .. php:attr:: pluralSuffixesCallback

        :type: callable

        :scope: protected

        Name of the pluralSuffixesCallback function for this language.

    .. php:attr:: ignoredSearchWordsCallback

        :type: callable

        :scope: protected

        Name of the ignoredSearchWordsCallback function for this language.

    .. php:attr:: lowerLimitSearchWordCallback

        :type: callable

        :scope: protected

        Name of the lowerLimitSearchWordCallback function for this language.

    .. php:attr:: upperLimitSearchWordCallback

        :type: callable

        :scope: protected

        Name of the upperLimitSearchWordCallback function for this language.

    .. php:attr:: searchDisplayedCharactersNumberCallback

        :type: callable

        :scope: protected

        Name of the searchDisplayedCharactersNumberCallback function for this
        language.

    .. php:method:: __construct($lang = null, $debug = false)

        Constructor activating the default information of the language.

        :param $lang:
        :param $debug:

    .. php:method:: getInstance($lang, $debug = false)

        Returns a language object.

        :param $lang:
        :param $debug:
        :returns: Language The Language object.

    .. php:method:: _($string, $jsSafe = false, $interpretBackSlashes = true)

        Translate function, mimics the php gettext (alias _) function.

        The function checks if $jsSafe is true, then if $interpretBackslashes is
        true.

        :param $string:
        :param $jsSafe:
        :param $interpretBackSlashes:
        :returns: string The translation of the string

    .. php:method:: transliterate($string)

        Transliterate function

        This method processes a string and replaces all accented UTF-8 characters
        by unaccented ASCII-7 "equivalents".

        :param $string:
        :returns: string The transliteration of the string.

    .. php:method:: getTransliterator()

        Getter for transliteration function

        :returns: callable The transliterator function

    .. php:method:: setTransliterator($function)

        Set the transliteration function.

        :param $function:
        :returns: callable The previous function.

    .. php:method:: getPluralSuffixes($count)

        Returns an array of suffixes for plural rules.

        :param $count:
        :returns: array The array of suffixes.

    .. php:method:: getPluralSuffixesCallback()

        Getter for pluralSuffixesCallback function.

        :returns: callable Function name or the actual function.

    .. php:method:: setPluralSuffixesCallback($function)

        Set the pluralSuffixes function.

        :param $function:
        :returns: callable The previous function.

    .. php:method:: getIgnoredSearchWords()

        Returns an array of ignored search words

        :returns: array The array of ignored search words.

    .. php:method:: getIgnoredSearchWordsCallback()

        Getter for ignoredSearchWordsCallback function.

        :returns: callable Function name or the actual function.

    .. php:method:: setIgnoredSearchWordsCallback($function)

        Setter for the ignoredSearchWordsCallback function

        :param $function:
        :returns: callable The previous function.

    .. php:method:: getLowerLimitSearchWord()

        Returns a lower limit integer for length of search words

        :returns: integer The lower limit integer for length of search words (3 if no value was set for a specific language).

    .. php:method:: getLowerLimitSearchWordCallback()

        Getter for lowerLimitSearchWordCallback function

        :returns: callable Function name or the actual function.

    .. php:method:: setLowerLimitSearchWordCallback($function)

        Setter for the lowerLimitSearchWordCallback function.

        :param $function:
        :returns: callable The previous function.

    .. php:method:: getUpperLimitSearchWord()

        Returns an upper limit integer for length of search words

        :returns: integer The upper limit integer for length of search words (200 if no value was set or if default value is < 200).

    .. php:method:: getUpperLimitSearchWordCallback()

        Getter for upperLimitSearchWordCallback function

        :returns: callable Function name or the actual function.

    .. php:method:: setUpperLimitSearchWordCallback($function)

        Setter for the upperLimitSearchWordCallback function

        :param $function:
        :returns: callable The previous function.

    .. php:method:: getSearchDisplayedCharactersNumber()

        Returns the number of characters displayed in search results.

        :returns: integer The number of characters displayed (200 if no value was set for a specific language).

    .. php:method:: getSearchDisplayedCharactersNumberCallback()

        Getter for searchDisplayedCharactersNumberCallback function

        :returns: callable Function name or the actual function.

    .. php:method:: setSearchDisplayedCharactersNumberCallback($function)

        Setter for the searchDisplayedCharactersNumberCallback function.

        :param $function:
        :returns: callable The previous function.

    .. php:method:: exists($lang, $basePath = JPATH_BASE)

        Checks if a language exists.

        This is a simple, quick check for the directory that should contain
        language files for the given user.

        :param $lang:
        :param $basePath:
        :returns: boolean True if the language exists.

    .. php:method:: load($extension = 'joomla', $basePath = JPATH_BASE, $lang = null, $reload = false, $default = true)

        Loads a single language file and appends the results to the existing
        strings

        :param $extension:
        :param $basePath:
        :param $lang:
        :param $reload:
        :param $default:
        :returns: boolean True if the file has successfully loaded.

    .. php:method:: loadLanguage($fileName, $extension = 'unknown')

        Loads a language file.

        This method will not note the successful loading of a file - use load()
        instead.

        :param $fileName:
        :param $extension:
        :returns: boolean True if new strings have been added to the language

    .. php:method:: parse($fileName)

        Parses a language file.

        :param $fileName:
        :returns: array The array of parsed strings.

    .. php:method:: debugFile($filename)

        Debugs a language file

        :param $filename:
        :returns: integer A count of the number of parsing errors

    .. php:method:: get($property, $default = null)

        Get a metadata language property.

        :param $property:
        :param $default:
        :returns: mixed The value of the property.

    .. php:method:: getCallerInfo()

        Determine who called Language or JText.

        :returns: array Caller information.

    .. php:method:: getName()

        Getter for Name.

        :returns: string Official name element of the language.

    .. php:method:: getPaths($extension = null)

        Get a list of language files that have been loaded.

        :param $extension:
        :returns: array

    .. php:method:: getErrorFiles()

        Get a list of language files that are in error state.

        :returns: array

    .. php:method:: getTag()

        Getter for the language tag (as defined in RFC 3066)

        :returns: string The language tag.

    .. php:method:: getCalendar()

        Getter for the calendar type

        :returns: string The calendar type.

    .. php:method:: isRtl()

        Get the RTL property.

        :returns: boolean True is it an RTL language.

    .. php:method:: setDebug($debug)

        Set the Debug property.

        :param $debug:
        :returns: boolean Previous value.

    .. php:method:: getDebug()

        Get the Debug property.

        :returns: boolean True is in debug mode.

    .. php:method:: getDefault()

        Get the default language code.

        :returns: string Language code.

    .. php:method:: setDefault($lang)

        Set the default language code.

        :param $lang:
        :returns: string Previous value.

    .. php:method:: getOrphans()

        Get the list of orphaned strings if being tracked.

        :returns: array Orphaned text.

    .. php:method:: getUsed()

        Get the list of used strings.

        Used strings are those strings requested and found either as a string or a
        constant.

        :returns: array Used strings.

    .. php:method:: hasKey($string)

        Determines is a key exists.

        :param $string:
        :returns: boolean True, if the key exists.

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

    .. php:method:: setLanguage($lang)

        Set the language attributes to the given language.

        Once called, the language still needs to be loaded using Language::load().

        :param $lang:
        :returns: string Previous value.

    .. php:method:: getLocale()

        Get the language locale based on current language.

        :returns: array The locale according to the language.

    .. php:method:: getFirstDay()

        Get the first day of the week for this language.

        :returns: integer The first day of the week according to the language

    .. php:method:: getWeekEnd()

        Get the weekends days for this language.

        :returns: string The weekend days of the week separated by a comma according to the language

    .. php:method:: parseLanguageFiles($dir = null)

        Searches for language directories within a certain base dir.

        :param $dir:
        :returns: array Array holding the found languages as filename => real name pairs.

    .. php:method:: parseXMLLanguageFile($path)

        Parse XML file for language information.

        :param $path:
        :returns: array Array holding the found metadata as a key => value pair.
