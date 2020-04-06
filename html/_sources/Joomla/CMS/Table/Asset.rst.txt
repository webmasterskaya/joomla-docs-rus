-------------------------
Joomla\\CMS\\Table\\Asset
-------------------------

.. php:namespace: Joomla\\CMS\\Table

.. php:class:: Asset

    Table class supporting modified pre-order tree traversal behavior.

    .. php:attr:: id

        :type: integer

        The primary key of the asset.

    .. php:attr:: name

        :type: string

        The unique name of the asset.

    .. php:attr:: title

        :type: string

        The human readable title of the asset.

    .. php:attr:: rules

        :type: string

        The rules for the asset stored in a JSON string

    .. php:attr:: parent_id

        :type: integer

        Object property holding the primary key of the parent node.  Provides
        adjacency list data for nodes.

    .. php:attr:: level

        :type: integer

        Object property holding the depth level of the node in the tree.

    .. php:attr:: lft

        :type: integer

        Object property holding the left value of the node for managing its
        placement in the nested sets tree.

    .. php:attr:: rgt

        :type: integer

        Object property holding the right value of the node for managing its
        placement in the nested sets tree.

    .. php:attr:: alias

        :type: string

        Object property holding the alias of this node used to constuct the full
        text path, forward-slash delimited.

    .. php:attr:: _location

        :type: string

        :scope: protected

        Object property to hold the location type to use when storing the row.

    .. php:attr:: _location_id

        :type: integer

        :scope: protected

        Object property to hold the primary key of the location reference node to
        use when storing the row.

        A combination of location type and reference node describes where to store
        the current node in the tree.

    .. php:attr:: _cache

        :type: array

        :scope: protected

        An array to cache values in recursive processes.

    .. php:attr:: _debug

        :type: integer

        :scope: protected

        Debug level

    .. php:attr:: root_id

        :type: integer

        :scope: protected

        Cache for the root ID

    .. php:attr:: _tbl

        :type: string

        :scope: protected

        Name of the database table to model.

    .. php:attr:: _tbl_key

        :type: string

        :scope: protected

        Name of the primary key field in the table.

    .. php:attr:: _tbl_keys

        :type: array

        :scope: protected

        Name of the primary key fields in the table.

    .. php:attr:: _db

        :type: \JDatabaseDriver

        :scope: protected

        \JDatabaseDriver object.

    .. php:attr:: _trackAssets

        :type: boolean

        :scope: protected

        Should rows be tracked as ACL assets?

    .. php:attr:: _rules

        :type: \JAccessRules

        :scope: protected

        The rules associated with this record.

    .. php:attr:: _locked

        :type: boolean

        :scope: protected

        Indicator that the tables have been locked.

    .. php:attr:: _autoincrement

        :type: boolean

        :scope: protected

        Indicates that the primary keys autoincrement.

    .. php:attr:: _observers

        :type: \JObserverUpdater

        :scope: protected

        Generic observers for this Table (Used e.g. for tags Processing)

    .. php:attr:: _columnAlias

        :type: array

        :scope: protected

        Array with alias for "special" columns such as ordering, hits etc etc

    .. php:attr:: _jsonEncode

        :type: array

        :scope: protected

        An array of key names to be json encoded in the bind function

    .. php:method:: __construct($db)

        Constructor

        :param $db:

    .. php:method:: loadByName($name)

        Method to load an asset by its name.

        :param $name:
        :returns: integer

    .. php:method:: check()

        Assert that the nested set data is valid.

        :returns: boolean True if the instance is sane and able to be stored in the database.

    .. php:method:: rebuild($parentId = null, $leftId = 0, $level = 0, $path = null)

        Method to recursively rebuild the whole nested set tree.

        :param $parentId:
        :param $leftId:
        :param $level:
        :param $path:
        :returns: integer 1 + value of root rgt on success, false on failure

    .. php:method:: debug($level)

        Sets the debug level on or off

        :param $level:
        :returns: void

    .. php:method:: getPath($pk = null, $diagnostic = false)

        Method to get an array of nodes from a given node to its root.

        :param $pk:
        :param $diagnostic:
        :returns: mixed An array of node objects including the start node.

    .. php:method:: getTree($pk = null, $diagnostic = false)

        Method to get a node and all its child nodes.

        :param $pk:
        :param $diagnostic:
        :returns: mixed Boolean false on failure or array of node objects on success.

    .. php:method:: isLeaf($pk = null)

        Method to determine if a node is a leaf node in the tree (has no
        children).

        :param $pk:
        :returns: boolean True if a leaf node, false if not or null if the node does not exist.

    .. php:method:: setLocation($referenceId, $position = 'after')

        Method to set the location of a node in the tree object.  This method does
        not
        save the new location to the database, but will set it in the object so
        that when the node is stored it will be stored in the new location.

        :param $referenceId:
        :param $position:
        :returns: void

    .. php:method:: move($delta, $where = '')

        Method to move a row in the ordering sequence of a group of rows defined
        by an SQL WHERE clause.
        Negative numbers move the row up in the sequence and positive numbers move
        it down.

        :param $delta:
        :param $where:
        :returns: mixed Boolean true on success.

    .. php:method:: moveByReference($referenceId, $position = 'after', $pk = null, $recursiveUpdate = true)

        Method to move a node and its children to a new location in the tree.

        :param $referenceId:
        :param $position:
        :param $pk:
        :param $recursiveUpdate:
        :returns: boolean True on success.

    .. php:method:: delete($pk = null, $children = true)

        Method to delete a node and, optionally, its child nodes from the table.

        :param $pk:
        :param $children:
        :returns: boolean True on success.

    .. php:method:: store($updateNulls = false)

        Method to store a node in the database table.

        :param $updateNulls:
        :returns: boolean True on success.

    .. php:method:: publish($pks = null, $state = 1, $userId = 0)

        Method to set the publishing state for a node or list of nodes in the
        database
        table.  The method respects rows checked out by other users and will
        attempt
        to checkin rows that it can after adjustments are made. The method will
        not
        allow you to set a publishing state higher than any ancestor node and will
        not allow you to set a publishing state on a node with a checked out
        child.

        :param $pks:
        :param $state:
        :param $userId:
        :returns: boolean True on success.

    .. php:method:: orderUp($pk)

        Method to move a node one position to the left in the same level.

        :param $pk:
        :returns: boolean True on success.

    .. php:method:: orderDown($pk)

        Method to move a node one position to the right in the same level.

        :param $pk:
        :returns: boolean True on success.

    .. php:method:: getRootId()

        Gets the ID of the root item in the tree

        :returns: mixed The primary id of the root row, or false if not found and the internal error is set.

    .. php:method:: rebuildPath($pk = null)

        Method to rebuild the node's path field from the alias values of the nodes
        from the current node to the root node of the tree.

        :param $pk:
        :returns: boolean True on success.

    .. php:method:: reset()

        Method to reset class properties to the defaults set in the class
        definition. It will ignore the primary key as well as any private class
        properties (except $_errors).

        :returns: void

    .. php:method:: saveorder($idArray = null, $lft_array = null)

        Method to update order of table rows

        :param $idArray:
        :param $lft_array:
        :returns: integer 1 + value of root rgt on success, false on failure.

    .. php:method:: recursiveUpdatePublishedColumn($pk, $newState = null)

        Method to recursive update published column for children rows.

        :param $pk:
        :param $newState:
        :returns: boolean True on success.

    .. php:method:: _getNode($id, $key = null)

        Method to get nested set properties for a node in the tree.

        :param $id:
        :param $key:
        :returns: mixed Boolean false on failure or node object on success.

    .. php:method:: _getTreeRepositionData($referenceNode, $nodeWidth, $position = 'before')

        Method to get various data necessary to make room in the tree at a
        location
        for a node and its children.  The returned data object includes conditions
        for SQL WHERE clauses for updating left and right id values to make room
        for
        the node as well as the new left and right ids for the node.

        :param $referenceNode:
        :param $nodeWidth:
        :param $position:
        :returns: mixed Boolean false on failure or data object on success.

    .. php:method:: _logtable($showData = true, $showQuery = true)

        Method to create a log table in the buffer optionally showing the query
        and/or data.

        :param $showData:
        :param $showQuery:
        :returns: void

    .. php:method:: _runQuery($query, $errorMessage)

        Runs a query and unlocks the database on an error.

        :param $query:
        :param $errorMessage:
        :returns: boolean void

    .. php:method:: attachObserver(JObserverInterface $observer)

        Implement \JObservableInterface:
        Adds an observer to this instance.
        This method will be called fron the constructor of classes implementing
        \JObserverInterface
        which is instanciated by the constructor of $this with
        \JObserverMapper::attachAllObservers($this)

        :type $observer: JObserverInterface
        :param $observer:
        :returns: void

    .. php:method:: getObserverOfClass($observerClass)

        Gets the instance of the observer of class $observerClass

        :param $observerClass:
        :returns: \JTableObserver|null

    .. php:method:: getFields($reload = false)

        Get the columns from database table.

        :param $reload:
        :returns: mixed An array of the field names, or false if an error occurs.

    .. php:method:: getInstance($type, $prefix = 'JTable', $config = array())

        Static method to get an instance of a Table class if it can be found in
        the table include paths.

        To add include paths for searching for Table classes see
        Table::addIncludePath().

        :param $type:
        :param $prefix:
        :param $config:
        :returns: Table|boolean A Table object if found or boolean false on failure.

    .. php:method:: addIncludePath($path = null)

        Add a filesystem path where Table should search for table class files.

        :param $path:
        :returns: array An array of filesystem paths to find Table classes in.

    .. php:method:: _getAssetName()

        Method to compute the default name of the asset.
        The default name is in the form table_name.id
        where id is the value of the primary key of the table.

        :returns: string

    .. php:method:: _getAssetTitle()

        Method to return the title to use for the asset table.

        In tracking the assets a title is kept for each asset so that there is
        some context available in a unified access manager.
        Usually this would just return $this->title or $this->name or whatever is
        being used for the primary name of the row.
        If this method is not overridden, the asset name is used.

        :returns: string The string to use as the title in the asset table.

    .. php:method:: _getAssetParentId(Table $table = null, $id = null)

        Method to get the parent asset under which to register this one.

        By default, all assets are registered to the ROOT node with ID, which will
        default to 1 if none exists.
        An extended class can define a table and ID to lookup.  If the asset does
        not exist it will be created.

        :type $table: Table
        :param $table:
        :param $id:
        :returns: integer

    .. php:method:: appendPrimaryKeys($query, $pk = null)

        Method to append the primary keys for this table to a query.

        :param $query:
        :param $pk:
        :returns: void

    .. php:method:: getTableName()

        Method to get the database table name for the class.

        :returns: string The name of the database table being modeled.

    .. php:method:: getKeyName($multiple = false)

        Method to get the primary key field name for the table.

        :param $multiple:
        :returns: mixed Array of primary key field names or string containing the first primary key field.

    .. php:method:: getDbo()

        Method to get the \JDatabaseDriver object.

        :returns: \JDatabaseDriver The internal database driver object.

    .. php:method:: setDbo($db)

        Method to set the \JDatabaseDriver object.

        :param $db:
        :returns: boolean True on success.

    .. php:method:: setRules($input)

        Method to set rules for the record.

        :param $input:
        :returns: void

    .. php:method:: getRules()

        Method to get the rules for the record.

        :returns: \JAccessRules object

    .. php:method:: bind($src, $ignore = array())

        Method to bind an associative array or object to the Table instance.This
        method only binds properties that are publicly accessible and optionally
        takes an array of properties to ignore when binding.

        :param $src:
        :param $ignore:
        :returns: boolean True on success.

    .. php:method:: load($keys = null, $reset = true)

        Method to load a row from the database by primary key and bind the fields
        to the Table instance properties.

        :param $keys:
        :param $reset:
        :returns: boolean True if successful. False if row not found.

    .. php:method:: save($src, $orderingFilter = '', $ignore = '')

        Method to provide a shortcut to binding, checking and storing a Table
        instance to the database table.

        The method will check a row in once the data has been stored and if an
        ordering filter is present will attempt to reorder the table rows based on
        the filter.  The ordering filter is an instance property name.  The rows
        that will be reordered are those whose value matches the Table instance
        for the property specified.

        :param $src:
        :param $orderingFilter:
        :param $ignore:
        :returns: boolean True on success.

    .. php:method:: checkOut($userId, $pk = null)

        Method to check a row out if the necessary properties/fields exist.

        To prevent race conditions while editing rows in a database, a row can be
        checked out if the fields 'checked_out' and 'checked_out_time'
        are available. While a row is checked out, any attempt to store the row by
        a user other than the one who checked the row out should be held until the
        row is checked in again.

        :param $userId:
        :param $pk:
        :returns: boolean True on success.

    .. php:method:: checkIn($pk = null)

        Method to check a row in if the necessary properties/fields exist.

        Checking a row in will allow other users the ability to edit the row.

        :param $pk:
        :returns: boolean True on success.

    .. php:method:: hasPrimaryKey()

        Validate that the primary key has been set.

        :returns: boolean True if the primary key(s) have been set.

    .. php:method:: hit($pk = null)

        Method to increment the hits for a row if the necessary property/field
        exists.

        :param $pk:
        :returns: boolean True on success.

    .. php:method:: isCheckedOut($with = 0, $against = null)

        Method to determine if a row is checked out and therefore uneditable by a
        user.

        If the row is checked out by the same user, then it is considered not
        checked out -- as the user can still edit it.

        :param $with:
        :param $against:
        :returns: boolean True if checked out.

    .. php:method:: getNextOrder($where = '')

        Method to get the next ordering value for a group of rows defined by an
        SQL WHERE clause.

        This is useful for placing a new item last in a group of items in the
        table.

        :param $where:
        :returns: integer The next ordering value.

    .. php:method:: getPrimaryKey($keys = array())

        Get the primary key values for this table using passed in values as a
        default.

        :param $keys:
        :returns: array An array of primary key names and values.

    .. php:method:: reorder($where = '')

        Method to compact the ordering values of rows in a group of rows defined
        by an SQL WHERE clause.

        :param $where:
        :returns: mixed Boolean True on success.

    .. php:method:: _lock()

        Method to lock the database table for writing.

        :returns: boolean True on success.

    .. php:method:: getColumnAlias($column)

        Method to return the real name of a "special" column such as ordering,
        hits, published
        etc etc. In this way you are free to follow your db naming convention and
        use the
        built in \Joomla functions.

        :param $column:
        :returns: string The string that identify the special

    .. php:method:: setColumnAlias($column, $columnAlias)

        Method to register a column alias for a "special" column.

        :param $column:
        :param $columnAlias:
        :returns: void

    .. php:method:: _unlock()

        Method to unlock the database table for writing.

        :returns: boolean True on success.

    .. php:method:: hasField($key)

        Check if the record has a property (applying a column alias if it exists)

        :param $key:
        :returns: boolean
