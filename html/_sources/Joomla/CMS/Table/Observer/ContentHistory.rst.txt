--------------------------------------------
Joomla\\CMS\\Table\\Observer\\ContentHistory
--------------------------------------------

.. php:namespace: Joomla\\CMS\\Table\\Observer

.. php:class:: ContentHistory

    Table class supporting modified pre-order tree traversal behavior.

    .. php:attr:: contenthistoryHelper

        :type: \JHelperContenthistory

        :scope: protected

        Helper object for storing and deleting version history information
        associated with this table observer

    .. php:attr:: typeAliasPattern

        :type: string

        :scope: protected

        The pattern for this table's TypeAlias

    .. php:attr:: table

        :type: Table

        :scope: protected

        The observed table

    .. php:method:: createObserver(JObservableInterface $observableObject, $params = array())

        Creates the associated observer instance and attaches it to the
        $observableObject
        Creates the associated content history helper class instance
        $typeAlias can be of the form "{variableName}.type", automatically
        replacing {variableName} with table-instance variables variableName

        :type $observableObject: JObservableInterface
        :param $observableObject:
        :param $params:
        :returns: ContentHistory

    .. php:method:: onAfterStore($result)

        Post-processor for $table->store($updateNulls)

        :param $result:
        :returns: void

    .. php:method:: onBeforeDelete($pk)

        Pre-processor for $table->delete($pk)

        :param $pk:
        :returns: void

    .. php:method:: parseTypeAlias()

        Internal method
        Parses a TypeAlias of the form "{variableName}.type", replacing
        {variableName} with table-instance variables variableName
        Storing result into $this->contenthistoryHelper->typeAlias

        :returns: void

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

    .. php:method:: onAfterDelete($pk)

        Post-processor for $table->delete($pk)

        :param $pk:
        :returns: void
