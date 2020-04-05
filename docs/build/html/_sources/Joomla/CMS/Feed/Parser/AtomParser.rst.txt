-------------------------------------
Joomla\\CMS\\Feed\\Parser\\AtomParser
-------------------------------------

.. php:namespace: Joomla\\CMS\\Feed\\Parser

.. php:class:: AtomParser

    ATOM Feed Parser class.

    .. php:attr:: version

        :type: string

        :scope: protected

    .. php:attr:: entryElementName

        :type: string

        :scope: protected

        The feed element name for the entry elements.

    .. php:attr:: namespaces

        :type: array

        :scope: protected

        Array of NamespaceParserInterface objects

    .. php:attr:: stream

        :type: \XMLReader

        :scope: protected

        The XMLReader stream object for the feed.

    .. php:method:: handleAuthor(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<author>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleContributor(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<contributor>` element for the feed.

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

    .. php:method:: handleId(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<id>` element for the feed.

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

    .. php:method:: handleRights(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<rights>` element for the feed.

        :type $feed: Feed
        :param $feed:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: handleSubtitle(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<subtitle>` element for the feed.

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

    .. php:method:: handleUpdated(Feed $feed, SimpleXMLElement $el)

        Method to handle the `<updated>` element for the feed.

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

        Method to handle a `<entry>` element for the feed.

        :type $entry: FeedEntry
        :param $entry:
        :type $el: SimpleXMLElement
        :param $el:
        :returns: void

    .. php:method:: bestLinkForUri($links)

        If there is more than one <link> in the feed entry, find the most
        appropriate one and return it.

        :param $links:
        :returns: \SimpleXMLElement

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
