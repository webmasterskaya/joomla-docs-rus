-----------------------------
Joomla\\CMS\\Updater\\Updater
-----------------------------

.. php:namespace: Joomla\\CMS\\Updater

.. php:class:: Updater

    Updater Class

    .. php:const:: STABILITY_DEV

        Development snapshots, nightly builds, pre-release versions and so on

    .. php:const:: STABILITY_ALPHA

        Alpha versions (work in progress, things are likely to be broken)

    .. php:const:: STABILITY_BETA

        Beta versions (major functionality in place, show-stopper bugs are likely to be present)

    .. php:const:: STABILITY_RC

        Release Candidate versions (almost stable, minor bugs might be present)

    .. php:const:: STABILITY_STABLE

        Stable versions (production quality code)

    .. php:attr:: instance

        :type: Updater

        :scope: protected

        Updater instance container.

    .. php:method:: __construct($basepath = __DIR__, $classprefix = '\\Joomla\\CMS\\Updater\\Adapter', $adapterfolder = 'Adapter')

        Constructor

        :param $basepath:
        :param $classprefix:
        :param $adapterfolder:

    .. php:method:: getInstance()

        Returns a reference to the global Installer object, only creating it
        if it doesn't already exist.

        :returns: Updater An installer object

    .. php:method:: findUpdates($eid = 0, $cacheTimeout = 0, $minimum_stability = self::STABILITY_STABLE, $includeCurrent = false)

        Finds the update for an extension. Any discovered updates are stored in
        the #__updates table.

        :param $eid:
        :param $cacheTimeout:
        :param $minimum_stability:
        :param $includeCurrent:
        :returns: boolean True if there are updates

    .. php:method:: update($id)

        Finds an update for an extension

        :param $id:
        :returns: mixed

    .. php:method:: getUpdateSites($eid = 0)

        Returns the update site records for an extension with ID $eid. If $eid is
        zero all enabled update sites records
        will be returned.

        :param $eid:
        :returns: array

    .. php:method:: getUpdateObjectsForSite($updateSite, $minimum_stability = self::STABILITY_STABLE, $includeCurrent = false)

        Loads the contents of an update site record $updateSite and returns the
        update objects

        :param $updateSite:
        :param $minimum_stability:
        :param $includeCurrent:
        :returns: array The update records. Empty array if no updates are found.

    .. php:method:: getSitesWithUpdates($timestamp = 0)

        Returns the IDs of the update sites with cached updates

        :param $timestamp:
        :returns: array The IDs of the update sites with cached updates

    .. php:method:: updateLastCheckTimestamp($updateSiteId)

        Update the last check timestamp of an update site

        :param $updateSiteId:
        :returns: void
