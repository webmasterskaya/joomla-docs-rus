---------------------------
Joomla\\CMS\\Language\\Text
---------------------------

.. php:namespace: Joomla\\CMS\\Language

.. php:class:: Text

    Text handling class.

    .. php:attr:: strings

        :type: array

        :scope: protected

        JavaScript strings

    .. php:method:: _($string, $jsSafe = false, $interpretBackSlashes = true, $script = false)

        Translates a string into the current language.

        Examples:
        `<script>alert(Joomla.JText._('<?php echo Text::_("JDEFAULT",
        array("script"=>true)); ?>'));</script>`
        will generate an alert message containing 'Default'
        `<?php echo Text::_("JDEFAULT"); ?>` will generate a 'Default' string

        :param $string:
        :param $jsSafe:
        :param $interpretBackSlashes:
        :param $script:
        :returns: string The translated string or the key if $script is true

    .. php:method:: passSprintf($string, $jsSafe = false, $interpretBackSlashes = true, $script = false)

        Checks the string if it should be interpreted as sprintf and runs sprintf
        over it.

        :param $string:
        :param $jsSafe:
        :param $interpretBackSlashes:
        :param $script:
        :returns: boolean Whether the string be interpreted as sprintf

    .. php:method:: alt($string, $alt, $jsSafe = false, $interpretBackSlashes = true, $script = false)

        Translates a string into the current language.

        Examples:
        `<?php echo Text::alt('JALL', 'language'); ?>` will generate a 'All'
        string in English but a "Toutes" string in French
        `<?php echo Text::alt('JALL', 'module'); ?>` will generate a 'All' string
        in English but a "Tous" string in French

        :param $string:
        :param $alt:
        :param $jsSafe:
        :param $interpretBackSlashes:
        :param $script:
        :returns: string The translated string or the key if $script is true

    .. php:method:: plural($string, $n)

        Like Text::sprintf but tries to pluralise the string.

        Note that this method can take a mixed number of arguments as for the
        sprintf function.

        The last argument can take an array of options:

        array('jsSafe'=>boolean, 'interpretBackSlashes'=>boolean,
        'script'=>boolean)

        where:

        jsSafe is a boolean to generate a javascript safe strings.
        interpretBackSlashes is a boolean to interpret backslashes \\->\, \n->new
        line, \t->tabulation.
        script is a boolean to indicate that the string will be push in the
        javascript language store.

        Examples:
        `<script>alert(Joomla.JText._('<?php echo
        Text::plural("COM_PLUGINS_N_ITEMS_UNPUBLISHED", 1, array("script"=>true));
        ?>'));</script>`
        will generate an alert message containing '1 plugin successfully disabled'
        `<?php echo Text::plural('COM_PLUGINS_N_ITEMS_UNPUBLISHED', 1); ?>` will
        generate a '1 plugin successfully disabled' string

        :param $string:
        :param $n:
        :returns: string The translated strings or the key if 'script' is true in the array of options

    .. php:method:: sprintf($string)

        Passes a string thru a sprintf.

        Note that this method can take a mixed number of arguments as for the
        sprintf function.

        The last argument can take an array of options:

        array('jsSafe'=>boolean, 'interpretBackSlashes'=>boolean,
        'script'=>boolean)

        where:

        jsSafe is a boolean to generate a javascript safe strings.
        interpretBackSlashes is a boolean to interpret backslashes \\->\, \n->new
        line, \t->tabulation.
        script is a boolean to indicate that the string will be push in the
        javascript language store.

        :param $string:
        :returns: string The translated strings or the key if 'script' is true in the array of options.

    .. php:method:: printf($string)

        Passes a string thru an printf.

        Note that this method can take a mixed number of arguments as for the
        sprintf function.

        :param $string:
        :returns: mixed

    .. php:method:: script($string = null, $jsSafe = false, $interpretBackSlashes = true)

        Translate a string into the current language and stores it in the
        JavaScript language store.

        :param $string:
        :param $jsSafe:
        :param $interpretBackSlashes:
        :returns: string

    .. php:method:: getScriptStrings()

        Get the strings that have been loaded to the JavaScript language store.

        :returns: array
