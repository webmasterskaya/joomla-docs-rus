-------------------------------------
Joomla\\CMS\\Helper\\UserGroupsHelper
-------------------------------------

.. php:namespace: Joomla\\CMS\\Helper

.. php:class:: UserGroupsHelper

    Helper to deal with user groups.

    .. php:const:: MODE_SINGLETON

        Indicates the current helper instance is the singleton instance.

    .. php:const:: MODE_INSTANCE

        Indicates the current helper instance is a standalone class instance.

    .. php:method:: __construct($groups = array(), $mode = self::MODE_INSTANCE)

        Constructor

        :param $groups:
        :param $mode:

    .. php:method:: count()

        Count loaded user groups.

        :returns: integer

    .. php:method:: getInstance()

        Get the helper instance.

        :returns: self

    .. php:method:: get($id)

        Get a user group by its id.

        :param $id:
        :returns: mixed stdClass on success. False otherwise

    .. php:method:: getAll()

        Get the list of existing user groups.

        :returns: array

    .. php:method:: has($id)

        Check if a group is in the list.

        :param $id:
        :returns: boolean

    .. php:method:: isSingleton()

        Check if this instance is a singleton.

        :returns: boolean

    .. php:method:: total()

        Get total available user groups in database.

        :returns: integer

    .. php:method:: load($id)

        Load a group from database.

        :param $id:
        :returns: mixed

    .. php:method:: loadAll()

        Load all user groups from the database.

        :returns: self

    .. php:method:: populateGroupsData()

        Populates extra information for groups.

        :returns: array

    .. php:method:: populateGroupData($group)

        Populate data for a specific user group.

        :param $group:
        :returns: \stdClass

    .. php:method:: setGroups($groups)

        Set the groups to be used as source.

        :param $groups:
        :returns: self
