-----------------------------------------
Joomla\\CMS\\Helper\\ContentHistoryHelper
-----------------------------------------

.. php:namespace: Joomla\\CMS\\Helper

.. php:class:: ContentHistoryHelper

    Versions helper class, provides methods to perform various tasks relevant
    versioning of content.

    .. php:attr:: typeAlias

        :type: string

        Alias for storing type in versions table

    .. php:method:: __construct($typeAlias = null)

        Constructor

        :param $typeAlias:

    .. php:method:: deleteHistory($table)

        Method to delete the history for an item.

        :param $table:
        :returns: boolean true on success, otherwise false.

    .. php:method:: getHistory($typeId, $id)

        Method to get a list of available versions of this item.

        :param $typeId:
        :param $id:
        :returns: mixed The return value or null if the query failed.

    .. php:method:: store($table)

        Method to save a version snapshot to the content history table.

        :param $table:
        :returns: boolean True on success, otherwise false.

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
