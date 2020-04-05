----------------------------
Joomla\\CMS\\Feed\\FeedEntry
----------------------------

.. php:namespace: Joomla\\CMS\\Feed

.. php:class:: FeedEntry

    Class to encapsulate a feed entry for the Joomla Platform.

    .. php:attr:: properties

        :type: array

        :scope: protected

    .. php:method:: __get($name)

        Magic method to return values for feed entry properties.

        :param $name:
        :returns: mixed

    .. php:method:: __set($name, $value)

        Magic method to set values for feed properties.

        :param $name:
        :param $value:
        :returns: void

    .. php:method:: addCategory($name, $uri = '')

        Method to add a category to the feed entry object.

        :param $name:
        :param $uri:
        :returns: FeedEntry

    .. php:method:: addContributor($name, $email, $uri = null, $type = null)

        Method to add a contributor to the feed entry object.

        :param $name:
        :param $email:
        :param $uri:
        :param $type:
        :returns: FeedEntry

    .. php:method:: addLink(FeedLink $link)

        Method to add a link to the feed entry object.

        :type $link: FeedLink
        :param $link:
        :returns: FeedEntry

    .. php:method:: removeCategory($name)

        Method to remove a category from the feed entry object.

        :param $name:
        :returns: FeedEntry

    .. php:method:: removeContributor(FeedPerson $contributor)

        Method to remove a contributor from the feed entry object.

        :type $contributor: FeedPerson
        :param $contributor:
        :returns: FeedEntry

    .. php:method:: removeLink(FeedLink $link)

        Method to remove a link from the feed entry object.

        :type $link: FeedLink
        :param $link:
        :returns: FeedEntry

    .. php:method:: setAuthor($name, $email, $uri = null, $type = null)

        Shortcut method to set the author for the feed entry object.

        :param $name:
        :param $email:
        :param $uri:
        :param $type:
        :returns: FeedEntry
