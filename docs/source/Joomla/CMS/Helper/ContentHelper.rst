----------------------------------
Joomla\\CMS\\Helper\\ContentHelper
----------------------------------

.. php:namespace: Joomla\\CMS\\Helper

.. php:class:: ContentHelper

    Helper for standard content style extensions.
    This class mainly simplifies static helper methods often repeated in individual components

    .. php:method:: addSubmenu($vName)

        Configure the Linkbar. Must be implemented by each extension.

        :param $vName:
        :returns: void

    .. php:method:: countRelations($items, $config)

        Adds Count relations for Category and Tag Managers

        :param $items:
        :param $config:
        :returns: stdClass[]

    .. php:method:: _getActions($categoryId = 0, $id = 0, $assetName = '')

        Gets a list of the actions that can be performed.

        :param $categoryId:
        :param $id:
        :param $assetName:
        :returns: \JObject

    .. php:method:: getActions($component = '', $section = '', $id = 0)

        Gets a list of the actions that can be performed.

        :param $component:
        :param $section:
        :param $id:
        :returns: \JObject

    .. php:method:: getCurrentLanguage($detectBrowser = true)

        Gets the current language

        :param $detectBrowser:
        :returns: string The language string

    .. php:method:: getLanguageId($langCode)

        Gets the associated language ID

        :param $langCode:
        :returns: integer The language ID

    .. php:method:: getRowData(Table $table)

        Gets a row of data from a table

        :type $table: Table
        :param $table:
        :returns: array Associative array of all columns and values for a row in a table.
