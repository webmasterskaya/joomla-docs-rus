-----------------------
Joomla\\CMS\\Help\\Help
-----------------------

.. php:namespace: Joomla\\CMS\\Help

.. php:class:: Help

    Help system class

    .. php:method:: createUrl($ref, $useComponent = false, $override = null, $component = null)

        Create a URL for a given help key reference

        :param $ref:
        :param $useComponent:
        :param $override:
        :param $component:
        :returns: string

    .. php:method:: createSiteList($pathToXml)

        Builds a list of the help sites which can be used in a select option.

        :param $pathToXml:
        :returns: array An array of arrays (text, value, selected).
