-----------------------
Joomla\\CMS\\Mail\\Mail
-----------------------

.. php:namespace: Joomla\\CMS\\Mail

.. php:class:: Mail

    Email Class.  Provides a common interface to send email from the Joomla! Platform

    .. php:attr:: instances

        :type: Mail[]

        :scope: protected

        Mail instances container.

    .. php:attr:: CharSet

        :type: string

        Charset of the message.

    .. php:method:: __construct($exceptions = true)

        Constructor

        :param $exceptions:

    .. php:method:: getInstance($id = 'Joomla', $exceptions = true)

        Returns the global email object, only creating it if it doesn't already
        exist.

        NOTE: If you need an instance to use that does not have the global
        configuration values, use an id string that is not 'Joomla'.

        :param $id:
        :param $exceptions:
        :returns: Mail The global Mail object

    .. php:method:: Send()

        Send the mail

        :returns: boolean|\JException Boolean true if successful, boolean false if the `mailonline` configuration is set to 0, or a JException object if the mail function does not exist or sending the message fails.

    .. php:method:: setFrom($address, $name = '', $auto = true)

        Set the From and FromName properties.

        :param $address:
        :param $name:
        :param $auto:
        :returns: boolean

    .. php:method:: setSender($from)

        Set the email sender

        :param $from:
        :returns: Mail|boolean Returns this object for chaining on success or boolean false on failure.

    .. php:method:: setSubject($subject)

        Set the email subject

        :param $subject:
        :returns: Mail Returns this object for chaining.

    .. php:method:: setBody($content)

        Set the email body

        :param $content:
        :returns: Mail Returns this object for chaining.

    .. php:method:: add($recipient, $name = '', $method = 'addAddress')

        Add recipients to the email.

        :param $recipient:
        :param $name:
        :param $method:
        :returns: Mail|boolean Returns this object for chaining on success or boolean false on failure.

    .. php:method:: addRecipient($recipient, $name = '')

        Add recipients to the email

        :param $recipient:
        :param $name:
        :returns: Mail|boolean Returns this object for chaining.

    .. php:method:: addCc($cc, $name = '')

        Add carbon copy recipients to the email

        :param $cc:
        :param $name:
        :returns: Mail|boolean Returns this object for chaining on success or boolean false on failure.

    .. php:method:: addBcc($bcc, $name = '')

        Add blind carbon copy recipients to the email

        :param $bcc:
        :param $name:
        :returns: Mail|boolean Returns this object for chaining on success or boolean false on failure.

    .. php:method:: addAttachment($path, $name = '', $encoding = 'base64', $type = 'application/octet-stream', $disposition = 'attachment')

        Add file attachment to the email

        :param $path:
        :param $name:
        :param $encoding:
        :param $type:
        :param $disposition:
        :returns: Mail|boolean Returns this object for chaining on success or boolean false on failure.

    .. php:method:: clearAttachments()

        Unset all file attachments from the email

        :returns: Mail Returns this object for chaining.

    .. php:method:: removeAttachment($index = 0)

        Unset file attachments specified by array index.

        :param $index:
        :returns: Mail Returns this object for chaining.

    .. php:method:: addReplyTo($replyto, $name = '')

        Add Reply to email address(es) to the email

        :param $replyto:
        :param $name:
        :returns: Mail|boolean Returns this object for chaining on success or boolean false on failure.

    .. php:method:: isHtml($ishtml = true)

        Sets message type to HTML

        :param $ishtml:
        :returns: Mail Returns this object for chaining.

    .. php:method:: isSendmail()

        Send messages using $Sendmail.

        This overrides the parent class to remove the restriction on the
        executable's name containing the word "sendmail"

        :returns: void

    .. php:method:: useSendmail($sendmail = null)

        Use sendmail for sending the email

        :param $sendmail:
        :returns: boolean True on success

    .. php:method:: useSmtp($auth = null, $host = null, $user = null, $pass = null, $secure = null, $port = 25)

        Use SMTP for sending the email

        :param $auth:
        :param $host:
        :param $user:
        :param $pass:
        :param $secure:
        :param $port:
        :returns: boolean True on success

    .. php:method:: sendMail($from, $fromName, $recipient, $subject, $body, $mode = false, $cc = null, $bcc = null, $attachment = null, $replyTo = null, $replyToName = null)

        Function to send an email

        :param $from:
        :param $fromName:
        :param $recipient:
        :param $subject:
        :param $body:
        :param $mode:
        :param $cc:
        :param $bcc:
        :param $attachment:
        :param $replyTo:
        :param $replyToName:
        :returns: boolean True on success

    .. php:method:: sendAdminMail($adminName, $adminEmail, $email, $type, $title, $author, $url = null)

        Sends mail to administrator for approval of a user submission

        :param $adminName:
        :param $adminEmail:
        :param $email:
        :param $type:
        :param $title:
        :param $author:
        :param $url:
        :returns: boolean True on success
