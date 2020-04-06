------------------------------
Joomla\\CMS\\Helper\\CMSHelper
------------------------------

.. php:namespace: Joomla\\CMS\\Helper

.. php:class:: CMSHelper

    Base Helper class.

    .. php:method:: getCurrentLanguage($detectBrowser = true)

        Gets the current language

        :param $detectBrowser:
        :returns: string The language string

    .. php:method:: getLanguageId($langCode)

        Gets the associated language ID

        :param $langCode:
        :returns: integer The language ID

    .. php:method:: getRowData(TableInterface $table)

        Gets a row of data from a table

        :type $table: TableInterface
        :param $table:
        :returns: array Associative array of all columns and values for a row in a table.

    .. php:method:: getDataObject(TableInterface $table)

        Method to get an object containing all of the table columns and values.

        :type $table: TableInterface
        :param $table:
        :returns: \stdClass Contains all of the columns and values.
