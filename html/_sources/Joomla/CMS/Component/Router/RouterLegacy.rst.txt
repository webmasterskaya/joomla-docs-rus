--------------------------------------------
Joomla\\CMS\\Component\\Router\\RouterLegacy
--------------------------------------------

.. php:namespace: Joomla\\CMS\\Component\\Router

.. php:class:: RouterLegacy

    Default routing class for missing or legacy component routers

    .. php:attr:: component

        :type: string

        :scope: protected

        Name of the component

    .. php:method:: __construct($component)

        Constructor

        :param $component:

    .. php:method:: preprocess($query)

        Generic preprocess function for missing or legacy component router

        :param $query:
        :returns: array The URL arguments to use to assemble the subsequent URL.

    .. php:method:: build($query)

        Generic build function for missing or legacy component router

        :param $query:
        :returns: array The URL arguments to use to assemble the subsequent URL.

    .. php:method:: parse($segments)

        Generic parse function for missing or legacy component router

        :param $segments:
        :returns: array The URL attributes to be used by the application.
