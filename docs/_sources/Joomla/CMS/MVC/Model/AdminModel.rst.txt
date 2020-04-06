-----------------------------------
Joomla\\CMS\\MVC\\Model\\AdminModel
-----------------------------------

.. php:namespace: Joomla\\CMS\\MVC\\Model

.. php:class:: AdminModel

    Prototype admin model.

    .. php:attr:: typeAlias

        :type: string

        The type alias for this content type (for example, 'com_content.article').

    .. php:attr:: text_prefix

        :type: string

        :scope: protected

        The prefix to use with controller messages.

    .. php:attr:: event_after_delete

        :type: string

        :scope: protected

        The event to trigger after deleting the data.

    .. php:attr:: event_after_save

        :type: string

        :scope: protected

        The event to trigger after saving the data.

    .. php:attr:: event_before_delete

        :type: string

        :scope: protected

        The event to trigger before deleting the data.

    .. php:attr:: event_before_save

        :type: string

        :scope: protected

        The event to trigger before saving the data.

    .. php:attr:: event_change_state

        :type: string

        :scope: protected

        The event to trigger after changing the published state of the data.

    .. php:attr:: batch_copymove

        :type: string

        :scope: protected

        Batch copy/move command. If set to false,
        the batch copy/move command is not supported

    .. php:attr:: batch_commands

        :type: array

        :scope: protected

        Allowed batch commands

    .. php:attr:: associationsContext

        :type: string

        :scope: protected

        The context used for the associations table

    .. php:attr:: batchSet

        :type: object

        :scope: protected

        A flag to indicate if member variables for batch actions (and saveorder)
        have been initialized

    .. php:attr:: user

        :type: object

        :scope: protected

        The user performing the actions (re-usable in batch methods & saveorder(),
        initialized via initBatch())

    .. php:attr:: table

        :type: object

        :scope: protected

        A JTable instance (of appropropriate type) to manage the DB records
        (re-usable in batch methods & saveorder(), initialized via initBatch())

    .. php:attr:: tableClassName

        :type: string

        :scope: protected

        The class name of the JTable instance managing the DB records (re-usable
        in batch methods & saveorder(), initialized via initBatch())

    .. php:attr:: contentType

        :type: object

        :scope: protected

        UCM Type corresponding to the current model class (re-usable in batch
        action methods, initialized via initBatch())

    .. php:attr:: type

        :type: object

        :scope: protected

        DB data of UCM Type corresponding to the current model class (re-usable in
        batch action methods, initialized via initBatch())

    .. php:attr:: tagsObserver

        :type: object

        :scope: protected

        A tags Observer instance to handle assigned tags (re-usable in batch
        action methods, initialized via initBatch())

    .. php:attr:: _forms

        :type: \JForm[]

        :scope: protected

        Array of form objects.

    .. php:attr:: events_map

        :type: array

        :scope: protected

        Maps events to plugin groups.

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

    .. php:method:: batch($commands, $pks, $contexts)

        Method to perform batch operations on an item or a set of items.

        :param $commands:
        :param $pks:
        :param $contexts:
        :returns: boolean Returns true on success, false on failure.

    .. php:method:: batchAccess($value, $pks, $contexts)

        Batch access level changes for a group of rows.

        :param $value:
        :param $pks:
        :param $contexts:
        :returns: boolean True if successful, false otherwise and internal error is set.

    .. php:method:: batchCopy($value, $pks, $contexts)

        Batch copy items to a new category or current.

        :param $value:
        :param $pks:
        :param $contexts:
        :returns: array|boolean An array of new IDs on success, boolean false on failure.

    .. php:method:: cleanupPostBatchCopy(JTableInterface $table, $newId, $oldId)

        Function that can be overriden to do any data cleanup after batch copying
        data

        :type $table: JTableInterface
        :param $table:
        :param $newId:
        :param $oldId:
        :returns: void

    .. php:method:: batchLanguage($value, $pks, $contexts)

        Batch language changes for a group of rows.

        :param $value:
        :param $pks:
        :param $contexts:
        :returns: boolean True if successful, false otherwise and internal error is set.

    .. php:method:: batchMove($value, $pks, $contexts)

        Batch move items to a new category

        :param $value:
        :param $pks:
        :param $contexts:
        :returns: boolean True if successful, false otherwise and internal error is set.

    .. php:method:: batchTag($value, $pks, $contexts)

        Batch tag a list of item.

        :param $value:
        :param $pks:
        :param $contexts:
        :returns: boolean True if successful, false otherwise and internal error is set.

    .. php:method:: canDelete($record)

        Method to test whether a record can be deleted.

        :param $record:
        :returns: boolean True if allowed to delete the record. Defaults to the permission for the component.

    .. php:method:: canEditState($record)

        Method to test whether a record can have its state changed.

        :param $record:
        :returns: boolean True if allowed to change the state of the record. Defaults to the permission for the component.

    .. php:method:: checkin($pks = array())

        Method override to check-in a record or an array of record

        :param $pks:
        :returns: integer|boolean Boolean false if there is an error, otherwise the count of records checked in.

    .. php:method:: checkout($pk = null)

        Method override to check-out a record.

        :param $pk:
        :returns: boolean True if successful, false if an error occurs.

    .. php:method:: delete($pks)

        Method to delete one or more records.

        :param $pks:
        :returns: boolean True if successful, false if an error occurs.

    .. php:method:: generateNewTitle($category_id, $alias, $title)

        Method to change the title & alias.

        :param $category_id:
        :param $alias:
        :param $title:
        :returns: array Contains the modified title and alias.

    .. php:method:: getItem($pk = null)

        Method to get a single record.

        :param $pk:
        :returns: \JObject|boolean Object on success, false on failure.

    .. php:method:: getReorderConditions($table)

        A protected method to get a set of ordering conditions.

        :param $table:
        :returns: array An array of conditions to add to ordering queries.

    .. php:method:: populateState()

        Stock method to auto-populate the model state.

        :returns: void

    .. php:method:: prepareTable($table)

        Prepare and sanitise the table data prior to saving.

        :param $table:
        :returns: void

    .. php:method:: publish($pks, $value = 1)

        Method to change the published state of one or more records.

        :param $pks:
        :param $value:
        :returns: boolean True on success.

    .. php:method:: reorder($pks, $delta = 0)

        Method to adjust the ordering of a row.

        Returns NULL if the user did not have edit privileges for any of the
        selected primary keys.

        :param $pks:
        :param $delta:
        :returns: boolean|null False on failure or error, true on success, null if the $pk is empty (no items selected).

    .. php:method:: save($data)

        Method to save the form data.

        :param $data:
        :returns: boolean True on success, False on error.

    .. php:method:: saveorder($pks = array(), $order = null)

        Saves the manually set order of records.

        :param $pks:
        :param $order:
        :returns: boolean|\JException Boolean true on success, false on failure, or \JException if no items are selected

    .. php:method:: createTagsHelper($tagsObserver, $type, $pk, $typeAlias, $table)

        Method to create a tags helper to ensure proper management of tags

        :param $tagsObserver:
        :param $type:
        :param $pk:
        :param $typeAlias:
        :param $table:
        :returns: void

    .. php:method:: checkCategoryId($categoryId)

        Method to check the validity of the category ID for batch copy and move

        :param $categoryId:
        :returns: boolean

    .. php:method:: generateTitle($categoryId, $table)

        A method to preprocess generating a new title in order to allow tables
        with alternative names
        for alias and title to use the batch move and copy methods

        :param $categoryId:
        :param $table:
        :returns: void

    .. php:method:: initBatch()

        Method to initialize member variables used by batch methods and other
        methods like saveorder()

        :returns: void

    .. php:method:: editAssociations($data)

        Method to load an item in com_associations.

        :param $data:
        :returns: boolean True if successful, false otherwise.

    .. php:method:: getForm($data = array(), $loadData = true)

        Abstract method for getting the form from the model.

        :param $data:
        :param $loadData:
        :returns: \JForm|boolean A \JForm object on success, false on failure

    .. php:method:: loadForm($name, $source = null, $options = array(), $clear = false, $xpath = false)

        Method to get a form object.

        :param $name:
        :param $source:
        :param $options:
        :param $clear:
        :param $xpath:
        :returns: \JForm|boolean \JForm object on success, false on error.

    .. php:method:: loadFormData()

        Method to get the data that should be injected in the form.

        :returns: array The default data is an empty array.

    .. php:method:: preprocessData($context, $data, $group = 'content')

        Method to allow derived classes to preprocess the data.

        :param $context:
        :param $data:
        :param $group:
        :returns: void

    .. php:method:: preprocessForm(JForm $form, $data, $group = 'content')

        Method to allow derived classes to preprocess the form.

        :type $form: JForm
        :param $form:
        :param $data:
        :param $group:
        :returns: void

    .. php:method:: validate($form, $data, $group = null)

        Method to validate the form data.

        :param $form:
        :param $data:
        :param $group:
        :returns: array|boolean Array of filtered data if valid, false otherwise.

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
