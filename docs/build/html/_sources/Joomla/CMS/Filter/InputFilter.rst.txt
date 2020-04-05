--------------------------------
Joomla\\CMS\\Filter\\InputFilter
--------------------------------

.. php:namespace: Joomla\\CMS\\Filter

.. php:class:: InputFilter

    InputFilter is a class for filtering input from any data source

    Forked from the php input filter library by: Daniel Morris <dan@rootcube.com>
    Original Contributors: Gianpaolo Racca, Ghislain Picard, Marco Wandschneider, Chris Tobin and Andrew Eddie.

    .. php:attr:: stripUSC

        :type: integer

        A flag for Unicode Supplementary Characters (4-byte Unicode character)
        stripping.

    .. php:method:: __construct($tagsArray = array(), $attrArray = array(), $tagsMethod = 0, $attrMethod = 0, $xssAuto = 1, $stripUSC = -1)

        Constructor for inputFilter class. Only first parameter is required.

        :param $tagsArray:
        :param $attrArray:
        :param $tagsMethod:
        :param $attrMethod:
        :param $xssAuto:
        :param $stripUSC:

    .. php:method:: getInstance($tagsArray = array(), $attrArray = array(), $tagsMethod = 0, $attrMethod = 0, $xssAuto = 1, $stripUSC = -1)

        Returns an input filter object, only creating it if it doesn't already
        exist.

        :param $tagsArray:
        :param $attrArray:
        :param $tagsMethod:
        :param $attrMethod:
        :param $xssAuto:
        :param $stripUSC:
        :returns: InputFilter The InputFilter object.

    .. php:method:: clean($source, $type = 'string')

        Method to be called by another php script. Processes for XSS and
        specified bad code.

        :param $source:
        :param $type:
        :returns: mixed 'Cleaned' version of input parameter

    .. php:method:: emailToPunycode($text)

        Function to punyencode utf8 mail when saving content

        :param $text:
        :returns: string The punyencoded mail

    .. php:method:: isSafeFile($file, $options = array())

        Checks an uploaded for suspicious naming and potential PHP contents which
        could indicate a hacking attempt.

        The options you can define are:
        null_byte                   Prevent files with a null byte in their name
        (buffer overflow attack)
        forbidden_extensions        Do not allow these strings anywhere in the
        file's extension php_tag_in_content          Do not allow `<?php` tag in
        content phar_stub_in_content        Do not allow the `__HALT_COMPILER()`
        phar stub in content shorttag_in_content         Do not allow short tag
        `<?` in content shorttag_extensions         Which file extensions to scan
        for short tags in content fobidden_ext_in_content     Do not allow
        forbidden_extensions anywhere in content php_ext_content_extensions  Which
        file extensions to scan for .php in content

        This code is an adaptation and improvement of Admin Tools' UploadShield
        feature,
        relicensed and contributed by its author.

        :param $file:
        :param $options:
        :returns: boolean True of the file is safe

    .. php:method:: decodeFileData($data)

        Method to decode a file data array.

        :param $data:
        :returns: array

    .. php:method:: _remove($source)

        Internal method to iteratively remove all unwanted tags and attributes

        :param $source:
        :returns: string 'Cleaned' version of input parameter

    .. php:method:: remove($source)

        Internal method to iteratively remove all unwanted tags and attributes

        :param $source:
        :returns: string 'Cleaned' version of input parameter

    .. php:method:: _cleanTags($source)

        Internal method to strip a string of certain tags

        :param $source:
        :returns: string 'Cleaned' version of input parameter

    .. php:method:: cleanTags($source)

        Internal method to strip a string of certain tags

        :param $source:
        :returns: string 'Cleaned' version of input parameter

    .. php:method:: _cleanAttributes($attrSet)

        Internal method to strip a tag of certain attributes

        :param $attrSet:
        :returns: array Filtered array of attribute pairs

    .. php:method:: escapeAttributeValues($source)

        Escape < > and " inside attribute values

        :param $source:
        :returns: string Filtered string

    .. php:method:: _decode($source)

        Try to convert to plaintext

        :param $source:
        :returns: string Plaintext string

    .. php:method:: decode($source)

        Try to convert to plaintext

        :param $source:
        :returns: string Plaintext string

    .. php:method:: _escapeAttributeValues($source)

        Escape < > and " inside attribute values

        :param $source:
        :returns: string Filtered string

    .. php:method:: _stripCSSExpressions($source)

        Remove CSS Expressions in the form of `<property>:expression(...)`

        :param $source:
        :returns: string Filtered string

    .. php:method:: stripUSC($source)

        Recursively strip Unicode Supplementary Characters from the source. Not:
        objects cannot be filtered.

        :param $source:
        :returns: mixed The filtered result
