---------------------------------
Joomla\\CMS\\Layout\\LayoutHelper
---------------------------------

.. php:namespace: Joomla\\CMS\\Layout

.. php:class:: LayoutHelper

    Helper to render a Layout object, storing a base path

    .. php:attr:: defaultBasePath

        :type: string

        A default base path that will be used if none is provided when calling the
        render method.
        Note that FileLayout itself will defaults to JPATH_ROOT . '/layouts' if no
        basePath is supplied at all

    .. php:method:: debug($layoutFile, $displayData = null, $basePath = '', $options = null)

        Method to render a layout with debug info

        :param $layoutFile:
        :param $displayData:
        :param $basePath:
        :param $options:
        :returns: string

    .. php:method:: render($layoutFile, $displayData = null, $basePath = '', $options = null)

        Method to render the layout.

        :param $layoutFile:
        :param $displayData:
        :param $basePath:
        :param $options:
        :returns: string
