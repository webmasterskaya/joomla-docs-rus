----------------------------------
Joomla\\CMS\\MVC\\Model\\ListModel
----------------------------------

.. php:namespace: Joomla\\CMS\\MVC\\Model

.. php:class:: ListModel

    Model class for handling lists of items.

    .. php:attr:: cache

        :type: array

        :scope: protected

        Internal memory based cache array of data.

    .. php:attr:: context

        :type: string

        :scope: protected

        Context string for the model type.  This is used to handle uniqueness
        when dealing with the getStoreId() method and caching data structures.

    .. php:attr:: filter_fields

        :type: array

        :scope: protected

        Valid filter fields or ordering.

    .. php:attr:: query

        :type: \JDatabaseQuery[]

        :scope: protected

        An internal cache for the last query used.

    .. php:attr:: filterFormName

        :type: string

        :scope: protected

        Name of the filter form to load

    .. php:attr:: htmlFormName

        :type: string

        :scope: protected

        Associated HTML form

    .. php:attr:: filterBlacklist

        :type: array

        :scope: protected

        A blacklist of filter variables to not merge into the model's state

    .. php:attr:: listBlacklist

        :type: array

        :scope: protected

        A blacklist of list variables to not merge into the model's state

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

    .. php:method:: __construct($config = array())

        Constructor.

        :param $config:

    .. php:method:: _getListQuery()

        Method to cache the last query constructed.

        This method ensures that the query is constructed only once for a given
        state of the model.

        :returns: \JDatabaseQuery A \JDatabaseQuery object

    .. php:method:: getActiveFilters()

        Function to get the active filters

        :returns: array Associative array in the format: array('filter_published' => 0)

    .. php:method:: getItems()

        Method to get an array of data items.

        :returns: mixed An array of data items on success, false on failure.

    .. php:method:: getListQuery()

        Method to get a \JDatabaseQuery object for retrieving the data set from a
        database.

        :returns: \JDatabaseQuery A \JDatabaseQuery object to retrieve the data set.

    .. php:method:: getPagination()

        Method to get a \JPagination object for the data set.

        :returns: \JPagination A \JPagination object for the data set.

    .. php:method:: getStoreId($id = '')

        Method to get a store id based on the model configuration state.

        This is necessary because the model is used by the component and different
        modules that might need different sets of data or different ordering
        requirements.

        :param $id:
        :returns: string A store id.

    .. php:method:: getTotal()

        Method to get the total number of items for the data set.

        :returns: integer The total number of items available in the data set.

    .. php:method:: getStart()

        Method to get the starting number of items for the data set.

        :returns: integer The starting number of items available in the data set.

    .. php:method:: getFilterForm($data = array(), $loadData = true)

        Get the filter form

        :param $data:
        :param $loadData:
        :returns: \JForm|boolean The \JForm object or false on error

    .. php:method:: loadForm($name, $source = null, $options = array(), $clear = false, $xpath = false)

        Method to get a form object.

        :param $name:
        :param $source:
        :param $options:
        :param $clear:
        :param $xpath:
        :returns: \JForm|boolean \JForm object on success, False on error.

    .. php:method:: loadFormData()

        Method to get the data that should be injected in the form.

        :returns: mixed The data for the form.

    .. php:method:: populateState($ordering = null, $direction = null)

        Method to auto-populate the model state.

        This method should only be called once per instantiation and is designed
        to be called on the first call to the getState() method unless the model
        configuration flag to ignore the request is set.

        Note. Calling getState in this method will result in recursion.

        :param $ordering:
        :param $direction:
        :returns: void

    .. php:method:: preprocessForm(JForm $form, $data, $group = 'content')

        Method to allow derived classes to preprocess the form.

        :type $form: JForm
        :param $form:
        :param $data:
        :param $group:
        :returns: void

    .. php:method:: getUserStateFromRequest($key, $request, $default = null, $type = 'none', $resetPage = true)

        Gets the value of a user state variable and sets it in the session

        This is the same as the method in \JApplication except that this also can
        optionally force you back to the first page when a filter has changed

        :param $key:
        :param $request:
        :param $default:
        :param $type:
        :param $resetPage:
        :returns: mixed The request user state.

    .. php:method:: refineSearchStringToRegex($search, $regexDelimiter = '/')

        Parse and transform the search string into a string fit for regex-ing
        arbitrary strings against

        :param $search:
        :param $regexDelimiter:
        :returns: string Search string escaped for regex

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
