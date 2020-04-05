------------------------------
Joomla\\CMS\\Feed\\FeedFactory
------------------------------

.. php:namespace: Joomla\\CMS\\Feed

.. php:class:: FeedFactory

    Feed factory class.

    .. php:attr:: parsers

        :type: array

        :scope: protected

    .. php:method:: getFeed($uri)

        Method to load a URI into the feed reader for parsing.

        :param $uri:
        :returns: Feed

    .. php:method:: registerParser($tagName, $className, $overwrite = false)

        Method to register a FeedParser class for a given root tag name.

        :param $tagName:
        :param $className:
        :param $overwrite:
        :returns: FeedFactory

    .. php:method:: _fetchFeedParser($type, XMLReader $reader)

        Method to return a new JFeedParser object based on the registered parsers
        and a given type.

        :param $type:
        :type $reader: XMLReader
        :param $reader:
        :returns: FeedParser
