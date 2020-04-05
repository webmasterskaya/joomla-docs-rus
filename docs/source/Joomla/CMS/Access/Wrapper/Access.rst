------------------------------------
Joomla\\CMS\\Access\\Wrapper\\Access
------------------------------------

.. php:namespace: Joomla\\CMS\\Access\\Wrapper

.. php:class:: Access

    Wrapper class for Access

    .. php:method:: clearStatics()

        Helper wrapper method for addUserToGroup

        :returns: void

    .. php:method:: check($userId, $action, $asset = null)

        Helper wrapper method for check

        :param $userId:
        :param $action:
        :param $asset:
        :returns: boolean True if authorised.

    .. php:method:: checkGroup($groupId, $action, $asset = null)

        Helper wrapper method for checkGroup

        :param $groupId:
        :param $action:
        :param $asset:
        :returns: boolean True if authorised.

    .. php:method:: getAssetRules($asset, $recursive = false)

        Helper wrapper method for getAssetRules

        :param $asset:
        :param $recursive:
        :returns: AccessRules AccessRules object for the asset.

    .. php:method:: getGroupsByUser($userId, $recursive = true)

        Helper wrapper method for getGroupsByUser

        :param $userId:
        :param $recursive:
        :returns: array List of user group ids to which the user is mapped.

    .. php:method:: getUsersByGroup($groupId, $recursive = false)

        Helper wrapper method for getUsersByGroup

        :param $groupId:
        :param $recursive:
        :returns: array

    .. php:method:: getAuthorisedViewLevels($userId)

        Helper wrapper method for getAuthorisedViewLevels

        :param $userId:
        :returns: array List of view levels for which the user is authorised.

    .. php:method:: getActions($component, $section = 'component')

        Helper wrapper method for getActions

        :param $component:
        :param $section:
        :returns: array List of actions available for the given component and section.

    .. php:method:: getActionsFromFile($file, $xpath = '/access/section[@name=\'component\']/')

        Helper wrapper method for getActionsFromFile

        :param $file:
        :param $xpath:
        :returns: boolean|array False if case of error or the list of actions available.

    .. php:method:: getActionsFromData($data, $xpath = '/access/section[@name=\'component\']/')

        Helper wrapper method for getActionsFromData

        :param $data:
        :param $xpath:
        :returns: boolean|array False if case of error or the list of actions available.
