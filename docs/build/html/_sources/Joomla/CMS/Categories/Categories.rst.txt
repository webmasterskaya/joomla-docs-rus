-----------------------------------
Joomla\\CMS\\Categories\\Categories
-----------------------------------

.. php:namespace: Joomla\\CMS\\Categories

.. php:class:: Categories

    Categories Class.

    .. php:attr:: instances

        :type: Categories[]

        Array to hold the object instances

    .. php:attr:: _nodes

        :type: CategoryNode[]

        :scope: protected

        Array of category nodes

    .. php:attr:: _checkedCategories

        :type: boolean[]

        :scope: protected

        Array of checked categories -- used to save values when _nodes are null

    .. php:attr:: _extension

        :type: string

        :scope: protected

        Name of the extension the categories belong to

    .. php:attr:: _table

        :type: string

        :scope: protected

        Name of the linked content table to get category content count

    .. php:attr:: _field

        :type: string

        :scope: protected

        Name of the category field

    .. php:attr:: _key

        :type: string

        :scope: protected

        Name of the key field

    .. php:attr:: _statefield

        :type: string

        :scope: protected

        Name of the items state field

    .. php:attr:: _options

        :type: array

        :scope: protected

        Array of options

    .. php:method:: __construct($options)

        Class constructor

        :param $options:

    .. php:method:: getInstance($extension, $options = array())

        Returns a reference to a Categories object

        :param $extension:
        :param $options:
        :returns: Categories|boolean Categories object on success, boolean false if an object does not exist

    .. php:method:: get($id = 'root', $forceload = false)

        Loads a specific category and all its children in a CategoryNode object

        :param $id:
        :param $forceload:
        :returns: CategoryNode|null|boolean CategoryNode object or null if $id is not valid

    .. php:method:: getExtension()

        Returns the extension of the category.

        :returns: string The extension

    .. php:method:: _load($id)

        Load method

        :param $id:
        :returns: void
