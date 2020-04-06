----------------------------------
Joomla\\CMS\\Table\\TableInterface
----------------------------------

.. php:namespace: Joomla\\CMS\\Table

.. php:interface:: TableInterface

    Table class interface.

    .. php:method:: bind($src, $ignore = array())

        Method to bind an associative array or object to the TableInterface
        instance.

        This method only binds properties that are publicly accessible and
        optionally takes an array of properties to ignore when binding.

        :param $src:
        :param $ignore:
        :returns: boolean True on success.

    .. php:method:: check()

        Method to perform sanity checks on the TableInterface instance properties
        to ensure they are safe to store in the database.

        Implementations of this interface should use this method to make sure the
        data they are storing in the database is safe and as expected before
        storage.

        :returns: boolean True if the instance is sane and able to be stored in the database.

    .. php:method:: delete($pk = null)

        Method to delete a record.

        :param $pk:
        :returns: boolean True on success.

    .. php:method:: getDbo()

        Method to get the \JDatabaseDriver object.

        :returns: \JDatabaseDriver The internal database driver object.

    .. php:method:: getKeyName()

        Method to get the primary key field name for the table.

        :returns: string The name of the primary key for the table.

    .. php:method:: load($keys = null, $reset = true)

        Method to load a row from the database by primary key and bind the fields
        to the TableInterface instance properties.

        :param $keys:
        :param $reset:
        :returns: boolean True if successful. False if row not found.

    .. php:method:: reset()

        Method to reset class properties to the defaults set in the class
        definition.

        It will ignore the primary key as well as any private class properties.

        :returns: void

    .. php:method:: store($updateNulls = false)

        Method to store a row in the database from the TableInterface instance
        properties.

        If a primary key value is set the row with that primary key value will be
        updated with the instance property values.
        If no primary key value is set a new row will be inserted into the
        database with the properties from the TableInterface instance.

        :param $updateNulls:
        :returns: boolean True on success.
