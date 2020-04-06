------------------------------------------
Joomla\\CMS\\Component\\Router\\RouterBase
------------------------------------------

.. php:namespace: Joomla\\CMS\\Component\\Router

.. php:class:: RouterBase

    Base component routing class

    .. php:attr:: app

        :type: \JApplicationCms

        Application object to use in the router

    .. php:attr:: menu

        :type: \JMenu

        Menu object to use in the router

    .. php:method:: __construct($app = null, $menu = null)

        Class constructor.

        :param $app:
        :param $menu:

    .. php:method:: preprocess($query)

        Generic method to preprocess a URL

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
