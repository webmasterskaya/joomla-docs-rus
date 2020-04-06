----------------------------------
Joomla\\CMS\\Table\\Observer\\Tags
----------------------------------

.. php:namespace: Joomla\\CMS\\Table\\Observer

.. php:class:: Tags

    Abstract class defining methods that can be
    implemented by an Observer class of a Table class (which is an Observable).
    Attaches $this Observer to the $table in the constructor.
    The classes extending this class should not be instanciated directly, as they
    are automatically instanciated by the \JObserverMapper

    .. php:attr:: tagsHelper

        :type: \JHelperTags

        :scope: protected

        Helper object for managing tags

    .. php:attr:: typeAliasPattern

        :type: string

        :scope: protected

        The pattern for this table's TypeAlias

    .. php:attr:: newTags

        :type: array

        :scope: protected

        Override for postStoreProcess param newTags, Set by setNewTags, used by
        onAfterStore and onBeforeStore

    .. php:attr:: replaceTags

        :type: boolean

        :scope: protected

        Override for postStoreProcess param replaceTags. Set by setNewTags, used
        by onAfterStore

    .. php:attr:: table

        :type: Table

        :scope: protected

        The observed table

    .. php:method:: createObserver(JObservableInterface $observableObject, $params = array())

        Creates the associated observer instance and attaches it to the
        $observableObject
        Creates the associated tags helper class instance
        $typeAlias can be of the form "{variableName}.type", automatically
        replacing {variableName} with table-instance variables variableName

        :type $observableObject: JObservableInterface
        :param $observableObject:
        :param $params:
        :returns: Tags

    .. php:method:: onBeforeStore($updateNulls, $tableKey)

        Pre-processor for $table->store($updateNulls)

        :param $updateNulls:
        :param $tableKey:
        :returns: void

    .. php:method:: onAfterStore($result)

        Post-processor for $table->store($updateNulls)
        You can change optional params newTags and replaceTags of tagsHelper with
        method setNewTagsToAdd

        :param $result:
        :returns: void

    .. php:method:: onBeforeDelete($pk)

        Pre-processor for $table->delete($pk)

        :param $pk:
        :returns: void

    .. php:method:: setNewTags($newTags, $replaceTags)

        Sets the new tags to be added or to replace existing tags

        :param $newTags:
        :param $replaceTags:
        :returns: boolean

    .. php:method:: parseTypeAlias()

        Internal method
        Parses a TypeAlias of the form "{variableName}.type", replacing
        {variableName} with table-instance variables variableName
        Storing result into $this->tagsHelper->typeAlias

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

    .. php:method:: onAfterDelete($pk)

        Post-processor for $table->delete($pk)

        :param $pk:
        :returns: void
