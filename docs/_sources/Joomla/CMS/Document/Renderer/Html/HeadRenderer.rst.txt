---------------------------------------------------
Joomla\\CMS\\Document\\Renderer\\Html\\HeadRenderer
---------------------------------------------------

.. php:namespace: Joomla\\CMS\\Document\\Renderer\\Html

.. php:class:: HeadRenderer

    HTML document renderer for the document `<head>` element

    .. php:attr:: _doc

        :type: Document

        :scope: protected

        Reference to the Document object that instantiated the renderer

    .. php:attr:: _mime

        :type: string

        :scope: protected

        Renderer mime type

    .. php:method:: render($head, $params = array(), $content = null)

        Renders the document head and returns the results as a string

        :param $head:
        :param $params:
        :param $content:
        :returns: string The output of the script

    .. php:method:: fetchHead($document)

        Generates the head HTML and return the results as a string

        :param $document:
        :returns: string The head hTML

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
