class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCqwbSin6hpbN3YZHjkNcNl9VFkwE9qmtoJ1cFDGgOWyt/f0H6dPr8yyIzpi0E08GgWRlKAz1rRNY8Ik+nxF38rEuBmJjsksKorD/xp1bQ0QsBmhIzThfZzGR9XBsSIvG8bNzg1pwhZNYzslcGCKSbhGJNtE7fJztOKCqlVSMKLW9p94AsIWE7Ab2iDwls7fOXgLGGoyN8MvXuzStoWE2kJugTYaiCs8AHD6IQX3Odkv4fXgB+jvyAU6XZzB8P5R82222/3KRCqTCSnIR7m5/M01WVxCOov3NLb+D9FWCGZm15GVekOjii3UH8DLQUzIHX2OOGoSfkalFGJNB6qad65',
	}  
}
