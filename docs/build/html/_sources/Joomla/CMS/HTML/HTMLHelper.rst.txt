-----------------------------
Joomla\\CMS\\HTML\\HTMLHelper
-----------------------------

.. php:namespace: Joomla\\CMS\\HTML

.. php:class:: HTMLHelper

    Utility class for all HTML drawing classes

    .. php:attr:: formatOptions

        :type: array

        Option values related to the generation of HTML output. Recognized
        options are:
        fmtDepth, integer. The current indent depth.
        fmtEol, string. The end of line string, default is linefeed.
        fmtIndent, string. The string to use for indentation, default is
        tab.

    .. php:attr:: includePaths

        :type: string[]

        :scope: protected

        An array to hold included paths

    .. php:attr:: registry

        :type: callable[]

        :scope: protected

        An array to hold method references

    .. php:method:: extract($key)

        Method to extract a key

        :param $key:
        :returns: array Contains lowercase key, prefix, file, function.

    .. php:method:: _($key)

        Class loader method

        Additional arguments may be supplied and are passed to the sub-class.
        Additional include paths are also able to be specified for third-party use

        :param $key:
        :returns: mixed Result of HTMLHelper::call($function, $args)

    .. php:method:: register($key, $function)

        Registers a function to be called with a specific key

        :param $key:
        :param $function:
        :returns: boolean True if the function is callable

    .. php:method:: unregister($key)

        Removes a key for a method from registry.

        :param $key:
        :returns: boolean True if a set key is unset

    .. php:method:: isRegistered($key)

        Test if the key is registered.

        :param $key:
        :returns: boolean True if the key is registered.

    .. php:method:: call($function, $args)

        Function caller method

        :param $function:
        :param $args:
        :returns: mixed Function result or false on error.

    .. php:method:: link($url, $text, $attribs = null)

        Write a `<a>` element

        :param $url:
        :param $text:
        :param $attribs:
        :returns: string

    .. php:method:: iframe($url, $name, $attribs = null, $noFrames = '')

        Write a `<iframe>` element

        :param $url:
        :param $name:
        :param $attribs:
        :param $noFrames:
        :returns: string

    .. php:method:: getMd5Version($path)

        Include version with MD5SUM file in path.

        :param $path:
        :returns: string Query string to add.

    .. php:method:: includeRelativeFiles($folder, $file, $relative, $detect_browser, $detect_debug)

        Compute the files to be included

        :param $folder:
        :param $file:
        :param $relative:
        :param $detect_browser:
        :param $detect_debug:
        :returns: array files to be included.

    .. php:method:: image($file, $alt, $attribs = null, $relative = false, $returnPath = 0)

        Write a `<img>` element

        :param $file:
        :param $alt:
        :param $attribs:
        :param $relative:
        :param $returnPath:
        :returns: string

    .. php:method:: stylesheet($file, $options = array(), $attribs = array())

        Write a `<link>` element to load a CSS file

        :param $file:
        :param $options:
        :param $attribs:
        :returns: array|string|null nothing if $returnPath is false, null, path or array of path if specific CSS browser files were detected

    .. php:method:: script($file, $options = array(), $attribs = array())

        Write a `<script>` element to load a JavaScript file

        :param $file:
        :param $options:
        :param $attribs:
        :returns: array|string|null Nothing if $returnPath is false, null, path or array of path if specific JavaScript browser files were detected

    .. php:method:: setFormatOptions($options)

        Set format related options.

        Updates the formatOptions array with all valid values in the passed array.

        :param $options:
        :returns: void

    .. php:method:: date($input = 'now', $format = null, $tz = true, $gregorian = false)

        Returns formated date according to a given format and time zone.

        :param $input:
        :param $format:
        :param $tz:
        :param $gregorian:
        :returns: string A date translated by the given format and time zone.

    .. php:method:: tooltip($tooltip, $title = '', $image = 'tooltip.png', $text = '', $href = '', $alt = 'Tooltip', $class = 'hasTooltip')

        Creates a tooltip with an image as button

        :param $tooltip:
        :param $title:
        :param $image:
        :param $text:
        :param $href:
        :param $alt:
        :param $class:
        :returns: string

    .. php:method:: tooltipText($title = '', $content = '', $translate = true, $escape = true)

        Converts a double colon separated string or 2 separate strings to a string
        ready for bootstrap tooltips

        :param $title:
        :param $content:
        :param $translate:
        :param $escape:
        :returns: string The tooltip string

    .. php:method:: calendar($value, $name, $id, $format = '%Y-%m-%d', $attribs = array())

        Displays a calendar control field

        :param $value:
        :param $name:
        :param $id:
        :param $format:
        :param $attribs:
        :returns: string HTML markup for a calendar field

    .. php:method:: addIncludePath($path = '')

        Add a directory where HTMLHelper should search for helpers. You may
        either pass a string or an array of directories.

        :param $path:
        :returns: array An array with directory elements

    .. php:method:: getJSObject($array = array())

        Internal method to get a JavaScript object notation string from an array

        :param $array:
        :returns: string JavaScript object notation representation of the array
