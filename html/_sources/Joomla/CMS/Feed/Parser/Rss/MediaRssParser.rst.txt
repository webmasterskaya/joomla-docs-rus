----------------------------------------------
Joomla\\CMS\\Feed\\Parser\\Rss\\MediaRssParser
----------------------------------------------

.. php:namespace: Joomla\\CMS\\Feed\\Parser\\Rss

.. php:class:: MediaRssParser

    RSS Feed Parser Namespace handler for MediaRSS.

    .. php:method:: processElementForFeed(Feed $feed, SimpleXMLElement $el)

        Method to handle an element for the feed given that the media namespace is
        present.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: processElementForFeedEntry(FeedEntry $entry, SimpleXMLElement $el)

        Method to handle the feed entry element for the feed given that the media
        namespace is present.

        :type $entry: FeedEntry
        :param $entry:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void
