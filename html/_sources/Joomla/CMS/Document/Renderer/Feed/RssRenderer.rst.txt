--------------------------------------------------
Joomla\\CMS\\Document\\Renderer\\Feed\\RssRenderer
--------------------------------------------------

.. php:namespace: Joomla\\CMS\\Document\\Renderer\\Feed

.. php:class:: RssRenderer

    RssRenderer is a feed that implements RSS 2.0 Specification

    .. php:attr:: _mime

        :type: string

        :scope: protected

        Renderer mime type

    .. php:attr:: _doc

        :type: Document

        :scope: protected

        Reference to the Document object that instantiated the renderer

    .. php:method:: render($name = '', $params = null, $content = null)

        Render the feed.

        :param $name:
        :param $params:
        :param $content:
        :returns: string The output of the script

    .. php:method:: __construct(Document $doc)

        Class constructor

        :type $doc: Document
        :param $doc:

    .. php:method:: getContentType()

        Return the content type of the renderer

        :returns: string The contentType

    .. php:method:: _relToAbs($text)

        Convert links in a text from relative to absolute

        :param $text:
        :returns: string Text with converted links
