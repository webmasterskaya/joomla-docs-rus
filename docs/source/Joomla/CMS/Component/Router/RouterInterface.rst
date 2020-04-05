-----------------------------------------------
Joomla\\CMS\\Component\\Router\\RouterInterface
-----------------------------------------------

.. php:namespace: Joomla\\CMS\\Component\\Router

.. php:interface:: RouterInterface

    Component routing interface

    .. php:method:: preprocess($query)

        Prepare-method for URLs
        This method is meant to validate and complete the URL parameters.
        For example it can add the Itemid or set a language parameter.
        This method is executed on each URL, regardless of SEF mode switched
        on or not.

        :param $query:
        :returns: array The URL arguments to use to assemble the subsequent URL.

    .. php:method:: build($query)

        Build method for URLs
        This method is meant to transform the query parameters into a more human
        readable form. It is only executed when SEF mode is switched on.

        :param $query:
        :returns: array The URL arguments to use to assemble the subsequent URL.

    .. php:method:: parse($segments)

        Parse method for URLs
        This method is meant to transform the human readable URL back into
        query parameters. It is only executed when SEF mode is switched on.

        :param $segments:
        :returns: array The URL attributes to be used by the application.
