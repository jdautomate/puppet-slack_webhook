#
# == Class: slack_webhook
#
# Bash script to trigger json webhook in Slack
#
# == Parameters
#
# [*key*]
#   Slack key to use
#
#################################################

class slack_webhook
(
    String $key
)
{
    include ::monit::params
    $bad   = '/etc/monit/slack_bad.sh'
    $good  = '/etc/monit/slack_good.sh'

    File {
        ensure => 'file',
        owner  => 'root',
    }

    file { $bad: 
        content => template('slack_webhook/slack_bad.sh.erb'),
        mode    => '0755',
    }

    file { $good:
        content => template('slack_webhook/slack_good.sh.erb'),
        mode    => '0755',
    }

    file { '/etc/monit/slack_url':
        content => template('slack_webhook/slack_url.erb'), 
        mode    => '0600',
    }
    
    file { "${::monit::params::fragment_dir}/slack.monit": 
        content => template('slack_webhook/slack.monit.erb'),
        mode    => '0600',
    }
}
