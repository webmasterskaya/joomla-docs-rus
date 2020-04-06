-----------------------------
Joomla\\CMS\\Utility\\Utility
-----------------------------

.. php:namespace: Joomla\\CMS\\Utility

.. php:class:: Utility

    JUtility is a utility functions class

    .. php:method:: parseAttributes($string)

        Method to extract key/value pairs out of a string with XML style
        attributes

        :param $string:
        :returns: array Key/Value pairs for the attributes

    .. php:method:: getMaxUploadSize($custom = null)

        Method to get the maximum allowed file size for the HTTP uploads based on
        the active PHP configuration

        :param $custom:
        :returns: integer Size in number of bytes
