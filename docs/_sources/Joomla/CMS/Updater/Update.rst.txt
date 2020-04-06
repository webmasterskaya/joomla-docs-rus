----------------------------
Joomla\\CMS\\Updater\\Update
----------------------------

.. php:namespace: Joomla\\CMS\\Updater

.. php:class:: Update

    Update class. It is used by Updater::update() to install an update. Use Updater::findUpdates() to find updates for
    an extension.

    .. php:attr:: name

        :type: string

        :scope: protected

        Update manifest `<name>` element

    .. php:attr:: description

        :type: string

        :scope: protected

        Update manifest `<description>` element

    .. php:attr:: element

        :type: string

        :scope: protected

        Update manifest `<element>` element

    .. php:attr:: type

        :type: string

        :scope: protected

        Update manifest `<type>` element

    .. php:attr:: version

        :type: string

        :scope: protected

        Update manifest `<version>` element

    .. php:attr:: infourl

        :type: string

        :scope: protected

        Update manifest `<infourl>` element

    .. php:attr:: client

        :type: string

        :scope: protected

        Update manifest `<client>` element

    .. php:attr:: group

        :type: string

        :scope: protected

        Update manifest `<group>` element

    .. php:attr:: downloads

        :type: string

        :scope: protected

        Update manifest `<downloads>` element

    .. php:attr:: downloadSources

        :type: DownloadSource[]

        :scope: protected

        Update manifest `<downloadsource>` elements

    .. php:attr:: tags

        :type: string

        :scope: protected

        Update manifest `<tags>` element

    .. php:attr:: maintainer

        :type: string

        :scope: protected

        Update manifest `<maintainer>` element

    .. php:attr:: maintainerurl

        :type: string

        :scope: protected

        Update manifest `<maintainerurl>` element

    .. php:attr:: category

        :type: string

        :scope: protected

        Update manifest `<category>` element

    .. php:attr:: relationships

        :type: string

        :scope: protected

        Update manifest `<relationships>` element

    .. php:attr:: targetplatform

        :type: string

        :scope: protected

        Update manifest `<targetplatform>` element

    .. php:attr:: extra_query

        :type: string

        :scope: protected

        Extra query for download URLs

    .. php:attr:: xmlParser

        :type: resource

        :scope: protected

        Resource handle for the XML Parser

    .. php:attr:: stack

        :type: array

        :scope: protected

        Element call stack

    .. php:attr:: stateStore

        :type: array

        :scope: protected

        Unused state array

    .. php:attr:: currentUpdate

        :type: \stdClass

        :scope: protected

        Object containing the current update data

    .. php:attr:: latest

        :type: \stdClass

        :scope: protected

        Object containing the latest update data

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

    .. php:method:: _getLastTag()

        Get the last position in stack count

        :returns: string

    .. php:method:: _startElement($parser, $name, $attrs = array())

        XML Start Element callback

        :param $parser:
        :param $name:
        :param $attrs:
        :returns: void

    .. php:method:: _endElement($parser, $name)

        Callback for closing the element

        :param $parser:
        :param $name:
        :returns: void

    .. php:method:: _characterData($parser, $data)

        Character Parser Function

        :param $parser:
        :param $data:
        :returns: void

    .. php:method:: loadFromXml($url, $minimum_stability = Updater::STABILITY_STABLE)

        Loads an XML file from a URL.

        :param $url:
        :param $minimum_stability:
        :returns: boolean True on success

    .. php:method:: stabilityTagToInteger($tag)

        Converts a tag to numeric stability representation. If the tag doesn't
        represent a known stability level (one of
        dev, alpha, beta, rc, stable) it is ignored.

        :param $tag:
        :returns: integer
