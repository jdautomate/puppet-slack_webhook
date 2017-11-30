# puppet-slack_webhook

Puppet module for sending monit notifications to Slack

# Usage
Works with monit

You can call the class like this:

    class { '::slack_webhook':
        key => 'your-slack-key',
    }

where 'your-slack-key' is the string of jibberish in the Slack Webhook URL.

Add the module to puppet master, json formatted alerts will be generated from monit

alter the monit fragment (slack.monit.erb) as needed
