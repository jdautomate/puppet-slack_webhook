# puppet-slack_webhook

Puppet module for sending monit notifications to Slack

# Usage

You can call the class like this:

    class { '::slack_webhook':
        key => 'your-slack-key',
    }

where 'your-slack-key' is the string of jibberish in the Slack Webhook URL.
