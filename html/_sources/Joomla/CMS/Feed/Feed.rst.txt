-----------------------
Joomla\\CMS\\Feed\\Feed
-----------------------

.. php:namespace: Joomla\\CMS\\Feed

.. php:class:: Feed

    Class to encapsulate a feed for the Joomla Platform.

    .. php:attr:: properties

        :type: array

        :scope: protected

    .. php:attr:: entries

        :type: array

        :scope: protected

    .. php:method:: __get($name)

        Magic method to return values for feed properties.

        :param $name:
        :returns: mixed

    .. php:method:: __set($name, $value)

        Magic method to set values for feed properties.

        :param $name:
        :param $value:
        :returns: void

    .. php:method:: addCategory($name, $uri = '')

        Method to add a category to the feed object.

        :param $name:
        :param $uri:
        :returns: Feed

    .. php:method:: addContributor($name, $email, $uri = null, $type = null)

        Method to add a contributor to the feed object.

        :param $name:
        :param $email:
        :param $uri:
        :param $type:
        :returns: Feed

    .. php:method:: addEntry(FeedEntry $entry)

        Method to add an entry to the feed object.

        :type $entry: FeedEntry
        :param $entry:
        :returns: Feed

    .. php:method:: count()

        Returns a count of the number of entries in the feed.

        This method is here to implement the Countable interface.
        You can call it by doing count($feed) rather than $feed->count();

        :returns: integer number of entries in the feed.

    .. php:method:: offsetExists($offset)

        Whether or not an offset exists.  This method is executed when using
        isset() or empty() on
        objects implementing ArrayAccess.

        :param $offset:
        :returns: boolean

    .. php:method:: offsetGet($offset)

        Returns the value at specified offset.

        :param $offset:
        :returns: mixed The value at the offset.

    .. php:method:: offsetSet($offset, $value)

        Assigns a value to the specified offset.

        :param $offset:
        :param $value:
        :returns: boolean

    .. php:method:: offsetUnset($offset)

        Unsets an offset.

        :param $offset:
        :returns: void

    .. php:method:: removeCategory($name)

        Method to remove a category from the feed object.

        :param $name:
        :returns: Feed

    .. php:method:: removeContributor(FeedPerson $contributor)

        Method to remove a contributor from the feed object.

        :type $contributor: FeedPerson
        :param $contributor:
        :returns: Feed

    .. php:method:: removeEntry(FeedEntry $entry)

        Method to remove an entry from the feed object.

        :type $entry: FeedEntry
        :param $entry:
        :returns: Feed

    .. php:method:: setAuthor($name, $email, $uri = null, $type = null)

        Shortcut method to set the author for the feed object.

        :param $name:
        :param $email:
        :param $uri:
        :param $type:
        :returns: Feed

    .. php:method:: reverseItems()

        Method to reverse the items if display is set to 'oldest first'

        :returns: Feed
