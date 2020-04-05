-----------------------------------------------
Joomla\\CMS\\Feed\\Parser\\Rss\\ItunesRssParser
-----------------------------------------------

.. php:namespace: Joomla\\CMS\\Feed\\Parser\\Rss

.. php:class:: ItunesRssParser

    RSS Feed Parser Namespace handler for iTunes.

    .. php:method:: processElementForFeed(Feed $feed, SimpleXMLElement $el)

        Method to handle an element for the feed given that the itunes namespace
        is present.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: processElementForFeedEntry(FeedEntry $entry, SimpleXMLElement $el)

        Method to handle the feed entry element for the feed given that the itunes
        namespace is present.

        :type $entry: FeedEntry
        :param $entry:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void
