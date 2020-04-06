-------------------------
Joomla\\CMS\\UCM\\UCMBase
-------------------------

.. php:namespace: Joomla\\CMS\\UCM

.. php:class:: UCMBase

    Base class for implementing UCM

    .. php:attr:: type

        :type: UCMType

        :scope: protected

        The UCM type object

    .. php:attr:: alias

        :type: string

        :scope: protected

        The alias for the content table

    .. php:method:: __construct($alias = null, UCMType $type = null)

        Instantiate the UCMBase.

        :param $alias:
        :type $type: UCMType
        :param $type:

    .. php:method:: store($data, TableInterface $table = null, $primaryKey = null)

        Store data to the appropriate table

        :param $data:
        :type $table: TableInterface
        :param $table:
        :param $primaryKey:
        :returns: boolean True on success

    .. php:method:: getType()

        Get the UCM Content type.

        :returns: UCMType The UCM content type

    .. php:method:: mapBase($original, UCMType $type = null)

        Method to map the base ucm fields

        :param $original:
        :type $type: UCMType
        :param $type:
        :returns: array Data array of UCM mappings
