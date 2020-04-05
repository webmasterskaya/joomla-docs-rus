-----------------------------
Joomla\\CMS\\Feed\\FeedParser
-----------------------------

.. php:namespace: Joomla\\CMS\\Feed

.. php:class:: FeedParser

    Feed Parser class.

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

    .. php:method:: initialise()

        Method to initialise the feed for parsing.  If child parsers need to
        detect versions or other
        such things this is where you'll want to implement that logic.

        :returns: void

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
