-------------------------------
Joomla\\CMS\\Schema\\ChangeItem
-------------------------------

.. php:namespace: Joomla\\CMS\\Schema

.. php:class:: ChangeItem

    Each object represents one query, which is one line from a DDL SQL query.
    This class is used to check the site's database to see if the DDL query has been run.
    If not, it provides the ability to fix the database by re-running the DDL query.
    The queries are parsed from the update files in the folder
    `administrator/components/com_admin/sql/updates/<database>`.
    These updates are run automatically if the site was updated using com_installer.
    However, it is possible that the program files could be updated without udpating
    the database (for example, if a user just copies the new files over the top of an
    existing installation).

    This is an abstract class. We need to extend it for each database and add a buildCheckQuery() method that creates the query to check that a DDL query has been run.

    .. php:attr:: file

        :type: string

        Update file: full path file name where query was found

    .. php:attr:: updateQuery

        :type: string

        Update query: query used to change the db schema (one line from the file)

    .. php:attr:: checkQuery

        :type: string

        Check query: query used to check the db schema

    .. php:attr:: checkQueryExpected

        :type: string

        Check query result: expected result of check query if database is up to
        date

    .. php:attr:: db

        :type: \JDatabaseDriver

        \JDatabaseDriver object

    .. php:attr:: queryType

        :type: string

        Query type: To be used in building a language key for a
        message to tell user what was checked / changed
        Possible values: ADD_TABLE, ADD_COLUMN, CHANGE_COLUMN_TYPE, ADD_INDEX

    .. php:attr:: msgElements

        :type: array

        Array with values for use in a \JText::sprintf statment indicating what
        was checked

        Tells you what the message should be, based on which elements are defined,
        as follows:
        For ADD_TABLE: table For ADD_COLUMN: table, column For CHANGE_COLUMN_TYPE:
        table, column, type For ADD_INDEX: table, index

    .. php:attr:: checkStatus

        :type: integer

        Checked status

    .. php:attr:: rerunStatus

        :type: int

        Rerun status

    .. php:method:: __construct($db, $file, $query)

        Constructor: builds check query and message from $updateQuery

        :param $db:
        :param $file:
        :param $query:

    .. php:method:: getInstance($db, $file, $query)

        Returns a reference to the ChangeItem object.

        :param $db:
        :param $file:
        :param $query:
        :returns: ChangeItem instance based on the database driver

    .. php:method:: buildCheckQuery()

        Checks a DDL query to see if it is a known type
        If yes, build a check query to see if the DDL has been run on the
        database.
        If successful, the $msgElements, $queryType, $checkStatus and $checkQuery
        fields are populated.
        The $msgElements contains the text to create the user message.
        The $checkQuery contains the SQL query to check whether the schema change
        has
        been run against the current database. The $queryType contains the type of
        DDL query that was run (for example, CREATE_TABLE, ADD_COLUMN,
        CHANGE_COLUMN_TYPE, ADD_INDEX).
        The $checkStatus field is set to zero if the query is created

        If not successful, $checkQuery is empty and , and $checkStatus is -1.
        For example, this will happen if the current line is a non-DDL statement.

        :returns: void

    .. php:method:: check()

        Runs the check query and checks that 1 row is returned
        If yes, return true, otherwise return false

        :returns: boolean true on success, false otherwise

    .. php:method:: fix()

        Runs the update query to apply the change to the database

        :returns: void
