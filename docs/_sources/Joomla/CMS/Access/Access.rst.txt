---------------------------
Joomla\\CMS\\Access\\Access
---------------------------

.. php:namespace: Joomla\\CMS\\Access

.. php:class:: Access

    Class that handles all access authorisation routines.

    .. php:attr:: viewLevels

        :type: array

        :scope: protected

        Array of view levels

    .. php:attr:: assetRules

        :type: array

        :scope: protected

        Array of rules for the asset

    .. php:attr:: assetRulesIdentities

        :type: array

        :scope: protected

        Array of identities for asset rules

    .. php:attr:: assetPermissionsById

        :type: array

        :scope: protected

        Array of permissions for an asset type
        (Array Key = Asset ID)
        Also includes the rules string for the asset

    .. php:attr:: assetPermissionsByName

        :type: array

        :scope: protected

        Array of permissions for an asset type
        (Array Key = Asset Name)

    .. php:attr:: assetPermissionsParentIdMapping

        :type: array

        :scope: protected

        Array of the permission parent ID mappings

    .. php:attr:: preloadedAssetTypes

        :type: array

        :scope: protected

        Array of asset types that have been preloaded

    .. php:attr:: identities

        :type: array

        :scope: protected

        Array of loaded user identities

    .. php:attr:: userGroups

        :type: array

        :scope: protected

        Array of user groups.

    .. php:attr:: userGroupPaths

        :type: array

        :scope: protected

        Array of user group paths.

    .. php:attr:: groupsByUser

        :type: array

        :scope: protected

        Array of cached groups by user.

    .. php:attr:: preloadedAssets

        :type: array

        :scope: protected

        Array of preloaded asset names and ids (key is the asset id).

    .. php:attr:: rootAssetId

        :type: integer

        :scope: protected

        The root asset id.

    .. php:method:: clearStatics()

        Method for clearing static caches.

        :returns: void

    .. php:method:: check($userId, $action, $assetKey = null, $preload = true)

        Method to check if a user is authorised to perform an action, optionally
        on an asset.

        :param $userId:
        :param $action:
        :param $assetKey:
        :param $preload:
        :returns: boolean|null True if allowed, false for an explicit deny, null for an implicit deny.

    .. php:method:: preload($assetTypes = 'components', $reload = false)

        Method to preload the Rules object for the given asset type.

        :param $assetTypes:
        :param $reload:
        :returns: boolean True on success.

    .. php:method:: getAssetAncestors($assetType, $assetId)

        Method to recursively retrieve the list of parent Asset IDs
        for a particular Asset.

        :param $assetType:
        :param $assetId:
        :returns: array List of ancestor ids (includes original $assetId).

    .. php:method:: preloadPermissionsParentIdMapping($assetType)

        Method to retrieve the list of Asset IDs and their Parent Asset IDs
        and store them for later usage in getAssetRules().

        :param $assetType:
        :returns: array List of asset ids (includes parent asset id information).

    .. php:method:: preloadPermissions($assetType, $reload = false)

        Method to retrieve the Asset Rule strings for this particular
        Asset Type and stores them for later usage in getAssetRules().
        Stores 2 arrays: one where the list has the Asset ID as the key
        and a second one where the Asset Name is the key.

        :param $assetType:
        :param $reload:
        :returns: boolean True

    .. php:method:: preloadComponents()

        Method to preload the Rules objects for all components.

        Note: This will only get the base permissions for the component.
        e.g. it will get 'com_content', but not 'com_content.article.1' or any
        more specific asset type rules.

        :returns: array Array of component names that were preloaded.

    .. php:method:: checkGroup($groupId, $action, $assetKey = null, $preload = true)

        Method to check if a group is authorised to perform an action, optionally
        on an asset.

        :param $groupId:
        :param $action:
        :param $assetKey:
        :param $preload:
        :returns: boolean True if authorised.

    .. php:method:: getGroupPath($groupId)

        Gets the parent groups that a leaf group belongs to in its branch back to
        the root of the tree
        (including the leaf group id).

        :param $groupId:
        :returns: mixed True if allowed, false for an explicit deny, null for an implicit deny.

    .. php:method:: getAssetRules($assetKey, $recursive = false, $recursiveParentAsset = true, $preload = true)

        Method to return the Rules object for an asset. The returned object can
        optionally hold
        only the rules explicitly set for the asset or the summation of all
        inherited rules from
        parent assets and explicit rules.

        :param $assetKey:
        :param $recursive:
        :param $recursiveParentAsset:
        :param $preload:
        :returns: Rules Rules object for the asset.

    .. php:method:: cleanAssetKey($assetKey = null)

        Method to clean the asset key to make sure we always have something.

        :param $assetKey:
        :returns: integer|string Asset id or asset name.

    .. php:method:: getAssetId($assetKey)

        Method to get the asset id from the asset key.

        :param $assetKey:
        :returns: integer The asset id.

    .. php:method:: getAssetName($assetKey)

        Method to get the asset name from the asset key.

        :param $assetKey:
        :returns: string The asset name (ex: com_content.article.8).

    .. php:method:: getExtensionNameFromAsset($assetKey)

        Method to get the extension name from the asset name.

        :param $assetKey:
        :returns: string The extension name (ex: com_content).

    .. php:method:: getAssetType($assetKey)

        Method to get the asset type from the asset name.

        For top level components this returns "components":
        'com_content' returns 'components'

        For other types:
        'com_content.article.1' returns 'com_content.article'
        'com_content.category.1' returns 'com_content.category'

        :param $assetKey:
        :returns: string The asset type (ex: com_content.article).

    .. php:method:: getGroupTitle($groupId)

        Method to return the title of a user group

        :param $groupId:
        :returns: string Tthe title of the group

    .. php:method:: getGroupsByUser($userId, $recursive = true)

        Method to return a list of user groups mapped to a user. The returned list
        can optionally hold
        only the groups explicitly mapped to the user or all groups both
        explicitly mapped and inherited
        by the user.

        :param $userId:
        :param $recursive:
        :returns: array List of user group ids to which the user is mapped.

    .. php:method:: getUsersByGroup($groupId, $recursive = false)

        Method to return a list of user Ids contained in a Group

        :param $groupId:
        :param $recursive:
        :returns: array

    .. php:method:: getAuthorisedViewLevels($userId)

        Method to return a list of view levels for which the user is authorised.

        :param $userId:
        :returns: array List of view levels for which the user is authorised.

    .. php:method:: getActions($component, $section = 'component')

        Method to return a list of actions for which permissions can be set given
        a component and section.

        :param $component:
        :param $section:
        :returns: array List of actions available for the given component and section.

    .. php:method:: getActionsFromFile($file, $xpath = "/access/section[@name='component']/")

        Method to return a list of actions from a file for which permissions can
        be set.

        :param $file:
        :param $xpath:
        :returns: boolean|array False if case of error or the list of actions available.

    .. php:method:: getActionsFromData($data, $xpath = "/access/section[@name='component']/")

        Method to return a list of actions from a string or from an xml for which
        permissions can be set.

        :param $data:
        :param $xpath:
        :returns: boolean|array False if case of error or the list of actions available.
