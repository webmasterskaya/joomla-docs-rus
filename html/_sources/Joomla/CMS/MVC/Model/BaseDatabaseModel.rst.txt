------------------------------------------
Joomla\\CMS\\MVC\\Model\\BaseDatabaseModel
------------------------------------------

.. php:namespace: Joomla\\CMS\\MVC\\Model

.. php:class:: BaseDatabaseModel

    Base class for a database aware Joomla Model

    Acts as a Factory class for application specific objects and provides many supporting API functions.

    .. php:attr:: __state_set

        :type: boolean

        :scope: protected

        Indicates if the internal state has been set

    .. php:attr:: _db

        :type: \JDatabaseDriver

        :scope: protected

        Database Connector

    .. php:attr:: name

        :type: string

        :scope: protected

        The model (base) name

    .. php:attr:: option

        :type: string

        :scope: protected

        The URL option for the component.

    .. php:attr:: state

        :type: \JObject

        :scope: protected

        A state object

    .. php:attr:: event_clean_cache

        :type: string

        :scope: protected

        The event to trigger when cleaning cache.

    .. php:method:: addIncludePath($path = '', $prefix = '')

        Add a directory where \JModelLegacy should search for models. You may
        either pass a string or an array of directories.

        :param $path:
        :param $prefix:
        :returns: array An array with directory elements. If prefix is equal to '', all directories are returned.

    .. php:method:: addTablePath($path)

        Adds to the stack of model table paths in LIFO order.

        :param $path:
        :returns: void

    .. php:method:: _createFileName($type, $parts = array())

        Create the filename for a resource

        :param $type:
        :param $parts:
        :returns: string The filename

    .. php:method:: getInstance($type, $prefix = '', $config = array())

        Returns a Model object, always creating it

        :param $type:
        :param $prefix:
        :param $config:
        :returns: \JModelLegacy|boolean A \JModelLegacy instance or false on failure

    .. php:method:: __construct($config = array())

        Constructor

        :param $config:

    .. php:method:: _getList($query, $limitstart = 0, $limit = 0)

        Gets an array of objects from the results of database query.

        :param $query:
        :param $limitstart:
        :param $limit:
        :returns: object[] An array of results.

    .. php:method:: _getListCount($query)

        Returns a record count for the query.

        Note: Current implementation of this method assumes that getListQuery()
        returns a set of unique rows,
        thus it uses SELECT COUNT(*) to count the rows. In cases that
        getListQuery() uses DISTINCT then either this method must be overriden by
        a custom implementation at the derived Model Class or a GROUP BY clause
        should be used to make the set unique.

        :param $query:
        :returns: integer Number of rows for query.

    .. php:method:: _createTable($name, $prefix = 'Table', $config = array())

        Method to load and return a model object.

        :param $name:
        :param $prefix:
        :param $config:
        :returns: \JTable|boolean Table object or boolean false if failed

    .. php:method:: getDbo()

        Method to get the database driver object

        :returns: \JDatabaseDriver

    .. php:method:: getName()

        Method to get the model name

        The model name. By default parsed using the classname or it can be set by
        passing a $config['name'] in the class constructor

        :returns: string The name of the model

    .. php:method:: getState($property = null, $default = null)

        Method to get model state variables

        :param $property:
        :param $default:
        :returns: mixed The property where specified, the state object where omitted

    .. php:method:: getTable($name = '', $prefix = 'Table', $options = array())

        Method to get a table object, load it if necessary.

        :param $name:
        :param $prefix:
        :param $options:
        :returns: \JTable A \JTable object

    .. php:method:: loadHistory($version_id, JTable $table)

        Method to load a row for editing from the version history table.

        :param $version_id:
        :type $table: JTable
        :param $table:
        :returns: boolean False on failure or error, true otherwise.

    .. php:method:: populateState()

        Method to auto-populate the model state.

        This method should only be called once per instantiation and is designed
        to be called on the first call to the getState() method unless the model
        configuration flag to ignore the request is set.

        :returns: void

    .. php:method:: setDbo($db)

        Method to set the database driver object

        :param $db:
        :returns: void

    .. php:method:: setState($property, $value = null)

        Method to set model state variables

        :param $property:
        :param $value:
        :returns: mixed The previous value of the property or null if not set.

    .. php:method:: cleanCache($group = null, $client_id = 0)

        Clean the cache

        :param $group:
        :param $client_id:
        :returns: void
