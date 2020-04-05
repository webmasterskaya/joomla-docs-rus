-------------------------
Joomla\\CMS\\UCM\\UCMType
-------------------------

.. php:namespace: Joomla\\CMS\\UCM

.. php:class:: UCMType

    UCM Class for handling content types

    .. php:attr:: type

        :type: UCMType

        The UCM Type

    .. php:attr:: db

        :type: \JDatabaseDriver

        :scope: protected

        The Database object

    .. php:attr:: alias

        :type: string

        :scope: protected

        The alias for the content type

    .. php:method:: __construct($alias = null, JDatabaseDriver $database = null, BaseApplication $application = null)

        Class constructor

        :param $alias:
        :type $database: JDatabaseDriver
        :param $database:
        :type $application: BaseApplication
        :param $application:

    .. php:method:: getType($pk = null)

        Get the Content Type

        :param $pk:
        :returns: object The UCM Type data

    .. php:method:: getTypeByAlias($typeAlias = null)

        Get the Content Type from the alias

        :param $typeAlias:
        :returns: object The UCM Type data

    .. php:method:: getTypeByTable($tableName)

        Get the Content Type from the table class name

        :param $tableName:
        :returns: mixed The UCM Type data if found, false if no match is found

    .. php:method:: getTypeId($alias = null)

        Retrieves the UCM type ID

        :param $alias:
        :returns: mixed The ID of the requested type or false if type is not found

    .. php:method:: fieldmapExpand($assoc = false)

        Method to expand the field mapping

        :param $assoc:
        :returns: mixed Array or object with field mappings. Defaults to object.

    .. php:method:: __get($ucmField)

        Magic method to get the name of the field mapped to a ucm field
        (core_something).

        :param $ucmField:
        :returns: string The name mapped to the $ucmField for a given content type
