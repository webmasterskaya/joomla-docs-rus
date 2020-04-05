-----------------------------------------------------
Joomla\\CMS\\Schema\\ChangeItem\\PostgresqlChangeItem
-----------------------------------------------------

.. php:namespace: Joomla\\CMS\\Schema\\ChangeItem

.. php:class:: PostgresqlChangeItem

    Checks the database schema against one PostgreSQL DDL query to see if it has been run.

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

    .. php:method:: fixInteger($type1, $type2)

        Fix up integer. Fixes problem with PostgreSQL integer descriptions.
        If you change a column to "integer unsigned" it shows
        as "int(10) unsigned" in the check query.

        :param $type1:
        :param $type2:
        :returns: string The original or changed column type.

    .. php:method:: fixQuote($string)

        Fixes up a string for inclusion in a query.
        Replaces name quote character with normal quote for literal.
        Drops trailing semicolon. Injects the database prefix.

        :param $string:
        :returns: string The modified string.

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

    .. php:method:: check()

        Runs the check query and checks that 1 row is returned
        If yes, return true, otherwise return false

        :returns: boolean true on success, false otherwise

    .. php:method:: fix()

        Runs the update query to apply the change to the database

        :returns: void
