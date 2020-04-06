-----------------------------------
Joomla\\CMS\\Toolbar\\ToolbarHelper
-----------------------------------

.. php:namespace: Joomla\\CMS\\Toolbar

.. php:class:: ToolbarHelper

    Utility class for the button bar.

    .. php:method:: title($title, $icon = 'generic.png')

        Title cell.
        For the title and toolbar to be rendered correctly,
        this title function must be called before the starttable function and the
        toolbars icons
        this is due to the nature of how the css has been used to position the
        title in respect to the toolbar.

        :param $title:
        :param $icon:
        :returns: void

    .. php:method:: spacer($width = '')

        Writes a spacer cell.

        :param $width:
        :returns: void

    .. php:method:: divider()

        Writes a divider between menu buttons

        :returns: void

    .. php:method:: custom($task = '', $icon = '', $iconOver = '', $alt = '', $listSelect = true)

        Writes a custom option and task button for the button bar.

        :param $task:
        :param $icon:
        :param $iconOver:
        :param $alt:
        :param $listSelect:
        :returns: void

    .. php:method:: preview($url = '', $updateEditors = false)

        Writes a preview button for a given option (opens a popup window).

        :param $url:
        :param $updateEditors:
        :returns: void

    .. php:method:: help($ref, $com = false, $override = null, $component = null)

        Writes a preview button for a given option (opens a popup window).

        :param $ref:
        :param $com:
        :param $override:
        :param $component:
        :returns: void

    .. php:method:: back($alt = 'JTOOLBAR_BACK', $href = 'javascript:history.back();')

        Writes a cancel button that will go back to the previous page without
        doing
        any other operation.

        :param $alt:
        :param $href:
        :returns: void

    .. php:method:: link($url, $text, $name = 'link')

        Creates a button to redirect to a link

        :param $url:
        :param $text:
        :param $name:
        :returns: void

    .. php:method:: media_manager($directory = '', $alt = 'JTOOLBAR_UPLOAD')

        Writes a media_manager button.

        :param $directory:
        :param $alt:
        :returns: void

    .. php:method:: makeDefault($task = 'default', $alt = 'JTOOLBAR_DEFAULT')

        Writes a common 'default' button for a record.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: assign($task = 'assign', $alt = 'JTOOLBAR_ASSIGN')

        Writes a common 'assign' button for a record.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: addNew($task = 'add', $alt = 'JTOOLBAR_NEW', $check = false)

        Writes the common 'new' icon for the button bar.

        :param $task:
        :param $alt:
        :param $check:
        :returns: void

    .. php:method:: publish($task = 'publish', $alt = 'JTOOLBAR_PUBLISH', $check = false)

        Writes a common 'publish' button.

        :param $task:
        :param $alt:
        :param $check:
        :returns: void

    .. php:method:: publishList($task = 'publish', $alt = 'JTOOLBAR_PUBLISH')

        Writes a common 'publish' button for a list of records.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: unpublish($task = 'unpublish', $alt = 'JTOOLBAR_UNPUBLISH', $check = false)

        Writes a common 'unpublish' button.

        :param $task:
        :param $alt:
        :param $check:
        :returns: void

    .. php:method:: unpublishList($task = 'unpublish', $alt = 'JTOOLBAR_UNPUBLISH')

        Writes a common 'unpublish' button for a list of records.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: archiveList($task = 'archive', $alt = 'JTOOLBAR_ARCHIVE')

        Writes a common 'archive' button for a list of records.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: unarchiveList($task = 'unarchive', $alt = 'JTOOLBAR_UNARCHIVE')

        Writes an unarchive button for a list of records.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: editList($task = 'edit', $alt = 'JTOOLBAR_EDIT')

        Writes a common 'edit' button for a list of records.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: editHtml($task = 'edit_source', $alt = 'JTOOLBAR_EDIT_HTML')

        Writes a common 'edit' button for a template html.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: editCss($task = 'edit_css', $alt = 'JTOOLBAR_EDIT_CSS')

        Writes a common 'edit' button for a template css.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: deleteList($msg = '', $task = 'remove', $alt = 'JTOOLBAR_DELETE')

        Writes a common 'delete' button for a list of records.

        :param $msg:
        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: trash($task = 'remove', $alt = 'JTOOLBAR_TRASH', $check = true)

        Writes a common 'trash' button for a list of records.

        :param $task:
        :param $alt:
        :param $check:
        :returns: void

    .. php:method:: apply($task = 'apply', $alt = 'JTOOLBAR_APPLY')

        Writes a save button for a given option.
        Apply operation leads to a save action only (does not leave edit mode).

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: save($task = 'save', $alt = 'JTOOLBAR_SAVE')

        Writes a save button for a given option.
        Save operation leads to a save and then close action.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: save2new($task = 'save2new', $alt = 'JTOOLBAR_SAVE_AND_NEW')

        Writes a save and create new button for a given option.
        Save and create operation leads to a save and then add action.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: save2copy($task = 'save2copy', $alt = 'JTOOLBAR_SAVE_AS_COPY')

        Writes a save as copy button for a given option.
        Save as copy operation leads to a save after clearing the key,
        then returns user to edit mode with new key.

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: checkin($task = 'checkin', $alt = 'JTOOLBAR_CHECKIN', $check = true)

        Writes a checkin button for a given option.

        :param $task:
        :param $alt:
        :param $check:
        :returns: void

    .. php:method:: cancel($task = 'cancel', $alt = 'JTOOLBAR_CANCEL')

        Writes a cancel button and invokes a cancel operation (eg a checkin).

        :param $task:
        :param $alt:
        :returns: void

    .. php:method:: preferences($component, $height = '550', $width = '875', $alt = 'JToolbar_Options', $path = '')

        Writes a configuration button and invokes a cancel operation (eg a
        checkin).

        :param $component:
        :param $height:
        :param $width:
        :param $alt:
        :param $path:
        :returns: void

    .. php:method:: versions($typeAlias, $itemId, $height = 800, $width = 500, $alt = 'JTOOLBAR_VERSIONS')

        Writes a version history

        :param $typeAlias:
        :param $itemId:
        :param $height:
        :param $width:
        :param $alt:
        :returns: void

    .. php:method:: modal($targetModalId, $icon, $alt)

        Displays a modal button

        :param $targetModalId:
        :param $icon:
        :param $alt:
        :returns: void
