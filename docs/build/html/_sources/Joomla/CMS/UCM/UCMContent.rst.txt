----------------------------
Joomla\\CMS\\UCM\\UCMContent
----------------------------

.. php:namespace: Joomla\\CMS\\UCM

.. php:class:: UCMContent

    Base class for implementing UCM

    .. php:attr:: table

        :type: Table

        :scope: protected

        The related table object

    .. php:attr:: ucmData

        :type: array

        The UCM data array

    .. php:attr:: type

        :type: UCMType

        :scope: protected

        The UCM type object

    .. php:attr:: alias

        :type: string

        :scope: protected

        The alias for the content table

    .. php:method:: __construct(TableInterface $table = null, $alias = null, UCMType $type = null)

        Instantiate UCMContent.

        :type $table: TableInterface
        :param $table:
        :param $alias:
        :type $type: UCMType
        :param $type:

    .. php:method:: save($original = null, UCMType $type = null)

        Method to save the data

        :param $original:
        :type $type: UCMType
        :param $type:
        :returns: boolean true

    .. php:method:: delete($pk, UCMType $type = null)

        Delete content from the Core Content table

        :param $pk:
        :type $type: UCMType
        :param $type:
        :returns: boolean True if success

    .. php:method:: mapData($original, UCMType $type = null)

        Map the original content to the Core Content fields

        :param $original:
        :type $type: UCMType
        :param $type:
        :returns: array $ucmData The mapped UCM data

    .. php:method:: store($data, TableInterface $table = null, $primaryKey = null)

        Store data to the appropriate table

        :param $data:
        :type $table: TableInterface
        :param $table:
        :param $primaryKey:
        :returns: boolean true on success

    .. php:method:: getPrimaryKey($typeId, $contentItemId)

        Get the value of the primary key from #__ucm_base

        :param $typeId:
        :param $contentItemId:
        :returns: integer The integer of the primary key

    .. php:method:: getType()

        Get the UCM Content type.

        :returns: UCMType The UCM content type

    .. php:method:: mapBase($original, UCMType $type = null)

        Method to map the base ucm fields

        :param $original:
        :type $type: UCMType
        :param $type:
        :returns: array Data array of UCM mappings
