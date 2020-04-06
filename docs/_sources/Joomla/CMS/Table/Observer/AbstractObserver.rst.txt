----------------------------------------------
Joomla\\CMS\\Table\\Observer\\AbstractObserver
----------------------------------------------

.. php:namespace: Joomla\\CMS\\Table\\Observer

.. php:class:: AbstractObserver

    Table class supporting modified pre-order tree traversal behavior.

    .. php:attr:: table

        :type: Table

        :scope: protected

        The observed table

    .. php:method:: __construct(TableInterface $table)

        Constructor: Associates to $table $this observer

        :type $table: TableInterface
        :param $table:

    .. php:method:: onBeforeLoad($keys, $reset)

        Pre-processor for $table->load($keys, $reset)

        :param $keys:
        :param $reset:
        :returns: void

    .. php:method:: onAfterLoad($result, $row)

        Post-processor for $table->load($keys, $reset)

        :param $result:
        :param $row:
        :returns: void

    .. php:method:: onBeforeStore($updateNulls, $tableKey)

        Pre-processor for $table->store($updateNulls)

        :param $updateNulls:
        :param $tableKey:
        :returns: void

    .. php:method:: onAfterStore($result)

        Post-processor for $table->store($updateNulls)

        :param $result:
        :returns: void

    .. php:method:: onBeforeDelete($pk)

        Pre-processor for $table->delete($pk)

        :param $pk:
        :returns: void

    .. php:method:: onAfterDelete($pk)

        Post-processor for $table->delete($pk)

        :param $pk:
        :returns: void
