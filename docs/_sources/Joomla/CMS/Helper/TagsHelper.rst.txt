-------------------------------
Joomla\\CMS\\Helper\\TagsHelper
-------------------------------

.. php:namespace: Joomla\\CMS\\Helper

.. php:class:: TagsHelper

    Tags helper class, provides methods to perform various tasks relevant
    tagging of content.

    .. php:attr:: tagsChanged

        :type: boolean

        :scope: protected

        Helper object for storing and deleting tag information.

    .. php:attr:: replaceTags

        :type: boolean

        :scope: protected

        Whether up replace all tags or just add tags

    .. php:attr:: typeAlias

        :type: string

        Alias for querying mapping and content type table.

    .. php:method:: addTagMapping($ucmId, TableInterface $table, $tags = array())

        Method to add tag rows to mapping table.

        :param $ucmId:
        :type $table: TableInterface
        :param $table:
        :param $tags:
        :returns: boolean true on success, otherwise false.

    .. php:method:: convertPathsToNames($tags)

        Function that converts tags paths into paths of names

        :param $tags:
        :returns: array

    .. php:method:: createTagsFromField($tags)

        Create any new tags by looking for #new# in the strings

        :param $tags:
        :returns: mixed If successful, metadata with new tag titles replaced by tag ids. Otherwise false.

    .. php:method:: createTagsFromMetadata($metadata)

        Create any new tags by looking for #new# in the metadata

        :param $metadata:
        :returns: mixed If successful, metadata with new tag titles replaced by tag ids. Otherwise false.

    .. php:method:: deleteTagData(TableInterface $table, $contentItemId)

        Method to delete the tag mappings and #__ucm_content record for for an
        item

        :type $table: TableInterface
        :param $table:
        :param $contentItemId:
        :returns: boolean true on success, false on failure

    .. php:method:: getItemTags($contentType, $id, $getTagData = true)

        Method to get a list of tags for an item, optionally with the tag data.

        :param $contentType:
        :param $id:
        :param $getTagData:
        :returns: array Array of of tag objects

    .. php:method:: getTagIds($ids, $prefix)

        Method to get a list of tags for a given item.
        Normally used for displaying a list of tags within a layout

        :param $ids:
        :param $prefix:
        :returns: string Comma separated list of tag Ids.

    .. php:method:: getTagItemsQuery($tagId, $typesr = null, $includeChildren = false, $orderByOption = 'c.core_title', $orderDir = 'ASC', $anyOrAll = true, $languageFilter = 'all', $stateFilter = '0,1')

        Method to get a query to retrieve a detailed list of items for a tag.

        :param $tagId:
        :param $typesr:
        :param $includeChildren:
        :param $orderByOption:
        :param $orderDir:
        :param $anyOrAll:
        :param $languageFilter:
        :param $stateFilter:
        :returns: \JDatabaseQuery Query to retrieve a list of tags

    .. php:method:: getTagNames($tagIds)

        Function that converts tag ids to their tag names

        :param $tagIds:
        :returns: array An array of tag names.

    .. php:method:: getTagTreeArray($id, $tagTreeArray = array())

        Method to get an array of tag ids for the current tag and its children

        :param $id:
        :param $tagTreeArray:
        :returns: mixed

    .. php:method:: getTypeId($typeAlias)

        Method to get the type id for a type alias.

        :param $typeAlias:
        :returns: string Name of the table for a type

    .. php:method:: getTypes($arrayType = 'objectList', $selectTypes = null, $useAlias = true)

        Method to get a list of types with associated data.

        :param $arrayType:
        :param $selectTypes:
        :param $useAlias:
        :returns: array Array of of types

    .. php:method:: postStoreProcess(TableInterface $table, $newTags = array(), $replace = true)

        Function that handles saving tags used in a table class after a store()

        :type $table: TableInterface
        :param $table:
        :param $newTags:
        :param $replace:
        :returns: boolean

    .. php:method:: preStoreProcess(TableInterface $table, $newTags = array())

        Function that preProcesses data from a table prior to a store() to ensure
        proper tag handling

        :type $table: TableInterface
        :param $table:
        :param $newTags:
        :returns: null

    .. php:method:: searchTags($filters = array())

        Function to search tags

        :param $filters:
        :returns: array

    .. php:method:: tagDeleteInstances($tag_id)

        Method to delete all instances of a tag from the mapping table. Generally
        used when a tag is deleted.

        :param $tag_id:
        :returns: void

    .. php:method:: tagItem($ucmId, TableInterface $table, $tags = array(), $replace = true)

        Method to add or update tags associated with an item.

        :param $ucmId:
        :type $table: TableInterface
        :param $table:
        :param $tags:
        :param $replace:
        :returns: boolean true on success, otherwise false.

    .. php:method:: unTagItem($contentId, TableInterface $table, $tags = array())

        Method to untag an item

        :param $contentId:
        :type $table: TableInterface
        :param $table:
        :param $tags:
        :returns: boolean true on success, otherwise false.

    .. php:method:: getCurrentLanguage($detectBrowser = true)

        Gets the current language

        :param $detectBrowser:
        :returns: string The language string

    .. php:method:: getLanguageId($langCode)

        Gets the associated language ID

        :param $langCode:
        :returns: integer The language ID

    .. php:method:: getRowData(TableInterface $table)

        Gets a row of data from a table

        :type $table: TableInterface
        :param $table:
        :returns: array Associative array of all columns and values for a row in a table.

    .. php:method:: getDataObject(TableInterface $table)

        Method to get an object containing all of the table columns and values.

        :type $table: TableInterface
        :param $table:
        :returns: \stdClass Contains all of the columns and values.
