------------------------------------
Joomla\\CMS\\Feed\\Parser\\RssParser
------------------------------------

.. php:namespace: Joomla\\CMS\\Feed\\Parser

.. php:class:: RssParser

    RSS Feed Parser class.

    .. php:attr:: entryElementName

        :type: string

        :scope: protected

    .. php:attr:: version

        :type: string

        :scope: protected

    .. php:attr:: namespaces

        :type: array

        :scope: protected

        Array of NamespaceParserInterface objects

    .. php:attr:: stream

        :type: \XMLReader

        :scope: protected

        The XMLReader stream object for the feed.

    .. php:method:: handleCategory(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<category>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleCloud(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<cloud>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleCopyright(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<copyright>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleDescription(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<description>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleGenerator(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<generator>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleImage(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<image>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleLanguage(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<language>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleLastBuildDate(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<lastBuildDate>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleLink(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<link>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleManagingEditor(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<managingEditor>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleSkipDays(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<skipDays>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleSkipHours(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<skipHours>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handlePubDate(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<pubDate>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleTitle(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<title>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleTtl(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<ttl>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleWebmaster(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<webmaster>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: initialise()

        Method to initialise the feed for parsing.  Here we detect the version and
        advance the stream
        reader so that it is ready to parse feed elements.

        :returns: void

    .. php:method:: processFeedEntry(FeedEntry $entry, SimpleXMLElement $el)

        Method to handle a `<item>` element for the feed.

        :type $entry: FeedEntry
        :param $entry:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: processPerson($data)

        Method to parse a string with person data and return a FeedPerson object.

        :param $data:
        :returns: FeedPerson

    .. php:method:: __construct(XMLReader $stream)

        Constructor.

        :type $stream: XMLReader
        :param $stream:

    .. php:method:: parse()

        Method to parse the feed into a JFeed object.

        :returns: Feed

    .. php:method:: registerNamespace($prefix, NamespaceParserInterface $namespace)

        Method to register a namespace handler object.

        :param $prefix:
        :type $namespace: NamespaceParserInterface
        :param $namespace:
        :returns: JFeed

    .. php:method:: processElement(Feed $feed, SimpleXMLElement $el, $namespaces)

        Method to parse a specific feed element.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :param $namespaces:
        :returns: void

    .. php:method:: fetchNamespace($prefix)

        Method to get a namespace object for a given namespace prefix.

        :param $prefix:
        :returns: mixed NamespaceParserInterface or false if none exists.

    .. php:method:: moveToNextElement($name = null)

        Method to move the stream parser to the next XML element node.

        :param $name:
        :returns: boolean True if the stream parser is on an XML element node.

    .. php:method:: moveToClosingElement()

        Method to move the stream parser to the closing XML node of the current
        element.

        :returns: void
