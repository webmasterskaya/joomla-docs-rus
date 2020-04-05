-----------------------------------------------------
Joomla\\CMS\\Document\\Renderer\\Html\\ModuleRenderer
-----------------------------------------------------

.. php:namespace: Joomla\\CMS\\Document\\Renderer\\Html

.. php:class:: ModuleRenderer

    HTML document renderer for a single module

    .. php:attr:: _doc

        :type: Document

        :scope: protected

        Reference to the Document object that instantiated the renderer

    .. php:attr:: _mime

        :type: string

        :scope: protected

        Renderer mime type

    .. php:method:: render($module, $attribs = array(), $content = null)

        Renders a module script and returns the results as a string

        :param $module:
        :param $attribs:
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
