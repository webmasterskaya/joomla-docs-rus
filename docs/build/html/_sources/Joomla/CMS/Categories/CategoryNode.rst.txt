-------------------------------------
Joomla\\CMS\\Categories\\CategoryNode
-------------------------------------

.. php:namespace: Joomla\\CMS\\Categories

.. php:class:: CategoryNode

    Helper class to load Categorytree

    .. php:attr:: id

        :type: integer

        Primary key

    .. php:attr:: asset_id

        :type: integer

        The id of the category in the asset table

    .. php:attr:: parent_id

        :type: integer

        The id of the parent of category in the asset table, 0 for category root

    .. php:attr:: lft

        :type: integer

        The lft value for this category in the category tree

    .. php:attr:: rgt

        :type: integer

        The rgt value for this category in the category tree

    .. php:attr:: level

        :type: integer

        The depth of this category's position in the category tree

    .. php:attr:: extension

        :type: integer

        The extension this category is associated with

    .. php:attr:: title

        :type: string

        The menu title for the category (a short name)

    .. php:attr:: alias

        :type: string

        The the alias for the category

    .. php:attr:: description

        :type: string

        Description of the category.

    .. php:attr:: published

        :type: boolean

        The publication status of the category

    .. php:attr:: checked_out

        :type: boolean

        Whether the category is or is not checked out

    .. php:attr:: checked_out_time

        :type: string

        The time at which the category was checked out

    .. php:attr:: access

        :type: integer

        Access level for the category

    .. php:attr:: params

        :type: string

        JSON string of parameters

    .. php:attr:: metadesc

        :type: string

        Metadata description

    .. php:attr:: metakey

        :type: string

        Key words for metadata

    .. php:attr:: metadata

        :type: string

        JSON string of other metadata

    .. php:attr:: created_user_id

        :type: integer

        The ID of the user who created the category

    .. php:attr:: created_time

        :type: string

        The time at which the category was created

    .. php:attr:: modified_user_id

        :type: integer

        The ID of the user who last modified the category

    .. php:attr:: modified_time

        :type: string

        The time at which the category was modified

    .. php:attr:: hits

        :type: integer

        Nmber of times the category has been viewed

    .. php:attr:: language

        :type: string

        The language for the category in xx-XX format

    .. php:attr:: numitems

        :type: integer

        Number of items in this category or descendants of this category

    .. php:attr:: childrennumitems

        :type: integer

        Number of children items

    .. php:attr:: slug

        :type: string

        Slug fo the category (used in URL)

    .. php:attr:: assets

        :type: array

        Array of  assets

    .. php:attr:: _parent

        :type: CategoryNode

        :scope: protected

        Parent Category object

    .. php:attr:: _children

        :type: CategoryNode[]

        :scope: protected

        Array of Children

    .. php:attr:: _path

        :type: array

        :scope: protected

        Path from root to this category

    .. php:attr:: _leftSibling

        :type: CategoryNode

        :scope: protected

        Category left of this one

    .. php:attr:: _rightSibling

        :type: CategoryNode

        :scope: protected

        Category right of this one

    .. php:attr:: _allChildrenloaded

        :type: boolean

        :scope: protected

        Flag if all children have been loaded

    .. php:attr:: _constructor

        :type: CategoryNode

        :scope: protected

        Constructor of this tree

    .. php:method:: __construct($category = null, $constructor = null)

        Class constructor

        :param $category:
        :param $constructor:

    .. php:method:: setParent($parent)

        Set the parent of this category

        If the category already has a parent, the link is unset

        :param $parent:
        :returns: void

    .. php:method:: addChild($child)

        Add child to this node

        If the child already has a parent, the link is unset

        :param $child:
        :returns: void

    .. php:method:: removeChild($id)

        Remove a specific child

        :param $id:
        :returns: void

    .. php:method:: getChildren($recursive = false)

        Get the children of this node

        :param $recursive:
        :returns: CategoryNode[] The children

    .. php:method:: getParent()

        Get the parent of this node

        :returns: CategoryNode

    .. php:method:: hasChildren()

        Test if this node has children

        :returns: boolean True if there is a child

    .. php:method:: hasParent()

        Test if this node has a parent

        :returns: boolean True if there is a parent

    .. php:method:: setSibling($sibling, $right = true)

        Function to set the left or right sibling of a category

        :param $sibling:
        :param $right:
        :returns: void

    .. php:method:: getSibling($right = true)

        Returns the right or left sibling of a category

        :param $right:
        :returns: CategoryNode|null CategoryNode object with the sibling information or null if there is no sibling on that side.

    .. php:method:: getParams()

        Returns the category parameters

        :returns: Registry

    .. php:method:: getMetadata()

        Returns the category metadata

        :returns: Registry A Registry object containing the metadata

    .. php:method:: getPath()

        Returns the category path to the root category

        :returns: array

    .. php:method:: getAuthor($modified_user = false)

        Returns the user that created the category

        :param $modified_user:
        :returns: \JUser A \JUser object containing a userid

    .. php:method:: setAllLoaded()

        Set to load all children

        :returns: void

    .. php:method:: getNumItems($recursive = false)

        Returns the number of items.

        :param $recursive:
        :returns: integer Number of children or descendants
