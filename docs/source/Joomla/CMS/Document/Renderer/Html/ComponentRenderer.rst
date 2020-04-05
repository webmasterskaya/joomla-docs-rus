--------------------------------------------------------
Joomla\\CMS\\Document\\Renderer\\Html\\ComponentRenderer
--------------------------------------------------------

.. php:namespace: Joomla\\CMS\\Document\\Renderer\\Html

.. php:class:: ComponentRenderer

    HTML document renderer for the component output

    .. php:attr:: _doc

        :type: Document

        :scope: protected

        Reference to the Document object that instantiated the renderer

    .. php:attr:: _mime

        :type: string

        :scope: protected

        Renderer mime type

    .. php:method:: render($component = null, $params = array(), $content = null)

        Renders a component script and returns the results as a string

        :param $component:
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
