------------------------------
Joomla\\CMS\\Schema\\ChangeSet
------------------------------

.. php:namespace: Joomla\\CMS\\Schema

.. php:class:: ChangeSet

    Contains a set of JSchemaChange objects for a particular instance of Joomla.
    Each of these objects contains a DDL query that should have been run against
    the database when this database was created or updated. This enables the
    Installation Manager to check that the current database schema is up to date.

    .. php:attr:: changeItems

        :type: ChangeItem[]

        :scope: protected

        Array of ChangeItem objects

    .. php:attr:: db

        :type: \JDatabaseDriver

        :scope: protected

        \JDatabaseDriver object

    .. php:attr:: folder

        :type: string

        :scope: protected

        Folder where SQL update files will be found

    .. php:attr:: instance

        :type: ChangeSet

        :scope: protected

        The singleton instance of this object

    .. php:method:: __construct($db, $folder = null)

        Constructor: builds array of $changeItems by processing the .sql files in
        a folder.
        The folder for the Joomla core updates is
        `administrator/components/com_admin/sql/updates/<database>`.

        :param $db:
        :param $folder:

    .. php:method:: getInstance($db, $folder = null)

        Returns a reference to the ChangeSet object, only creating it if it
        doesn't already exist.

        :param $db:
        :param $folder:
        :returns: ChangeSet

    .. php:method:: check()

        Checks the database and returns an array of any errors found.
        Note these are not database errors but rather situations where
        the current schema is not up to date.

        :returns: array Array of errors if any.

    .. php:method:: fix()

        Runs the update query to apply the change to the database

        :returns: void

    .. php:method:: getStatus()

        Returns an array of results for this set

        :returns: array associative array of changeitems grouped by unchecked, ok, error, and skipped

    .. php:method:: getSchema()

        Gets the current database schema, based on the highest version number.
        Note that the .sql files are named based on the version and date, so
        the file name of the last file should match the database schema version
        in the #__schemas table.

        :returns: string the schema version for the database

    .. php:method:: getUpdateFiles()

        Get list of SQL update files for this database

        :returns: array list of sql update full-path names

    .. php:method:: getUpdateQueries($sqlfiles)

        Get array of SQL queries

        :param $sqlfiles:
        :returns: array Array of \stdClass objects where: file=filename, update_query = text of SQL update query
