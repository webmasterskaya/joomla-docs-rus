------------------------------------------------
Joomla\\CMS\\Updater\\Adapter\\CollectionAdapter
------------------------------------------------

.. php:namespace: Joomla\\CMS\\Updater\\Adapter

.. php:class:: CollectionAdapter

    Collection Update Adapter Class

    .. php:attr:: base

        :type: object

        :scope: protected

        Root of the tree

    .. php:attr:: parent

        :type: array

        :scope: protected

        Tree of objects

    .. php:attr:: pop_parent

        :type: boolean

        :scope: protected

        Used to control if an item has a child or not

    .. php:attr:: update_sites

        :type: array

        :scope: protected

        A list of discovered update sites

    .. php:attr:: updates

        :type: array

        :scope: protected

        A list of discovered updates

    .. php:attr:: xmlParser

        :type: resource

        :scope: protected

        Resource handle for the XML Parser

    .. php:attr:: stack

        :type: array

        :scope: protected

        Element call stack

    .. php:attr:: updateSiteId

        :type: string

        :scope: protected

        ID of update site

    .. php:attr:: updatecols

        :type: array

        :scope: protected

        Columns in the extensions table to be updated

    .. php:attr:: appendExtension

        :type: bool

        :scope: protected

        Should we try appending a .xml extension to the update site's URL?

    .. php:attr:: updateSiteName

        :type: string

        :scope: protected

        The name of the update site (used in logging)

    .. php:attr:: _url

        :type: string

        :scope: protected

        The update site URL from which we will get the update information

    .. php:attr:: minimum_stability

        :type: int

        :scope: protected

        The minimum stability required for updates to be taken into account. The
        possible values are:
        0    dev            Development snapshots, nightly builds, pre-release
        versions and so on
        1    alpha        Alpha versions (work in progress, things are likely to
        be broken)
        2    beta        Beta versions (major functionality in place, show-stopper
        bugs are likely to be present)
        3    rc            Release Candidate versions (almost stable, minor bugs
        might be present)
        4    stable        Stable versions (production quality code)

    .. php:method:: _getStackLocation()

        Gets the reference to the current direct parent

        :returns: object

    .. php:method:: _getParent()

        Get the parent tag

        :returns: string parent

    .. php:method:: _startElement($parser, $name, $attrs = array())

        Opening an XML element

        :param $parser:
        :param $name:
        :param $attrs:
        :returns: void

    .. php:method:: _endElement($parser, $name)

        Closing an XML element
        Note: This is a protected function though has to be exposed externally as
        a callback

        :param $parser:
        :param $name:
        :returns: void

    .. php:method:: findUpdate($options)

        Finds an update

        :param $options:
        :returns: array Update_sites and updates discovered

    .. php:method:: _getLastTag()

        Gets the reference to the last tag

        :returns: object

    .. php:method:: toggleUpdateSite($update_site_id, $enabled = true)

        Toggles the enabled status of an update site. Update sites are disabled
        before getting the update information
        from their URL and enabled afterwards. If the URL fetch fails with a PHP
        fatal error (e.g. timeout) the faulty
        update site will remain disabled the next time we attempt to load the
        update information.

        :param $update_site_id:
        :param $enabled:
        :returns: void

    .. php:method:: getUpdateSiteName($updateSiteId)

        Get the name of an update site. This is used in logging.

        :param $updateSiteId:
        :returns: string The name of the update site or an empty string if it's not found

    .. php:method:: getUpdateSiteResponse($options = array())

        Try to get the raw HTTP response from the update site, hopefully
        containing the update XML.

        :param $options:
        :returns: boolean|\JHttpResponse False if we can't connect to the site, JHttpResponse otherwise
