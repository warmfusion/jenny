Feature: Create Vagrant environments
  In order to maintain consistent vagrant environments
  As a CLI tool
  I want to be able to create new Vagrant projects easily

  Scenario: Create project
    When I run `jenny vagrant myProject`
    Then the following files should exist:
      | myProject/Vagrantfile                                         |
      | myProject/puppet/modules/.gitignore                           |
      | myProject/puppet/Puppetfile                                   |
      | myProject/puppet/manifests/configuration/myproject.local.yaml |

    Then the file "myProject/Vagrantfile" should contain:
      """
      # Hostname: myproject.local
      """
  Scenario: Create project with FQDN
    When I run `jenny vagrant myProject --fqdn example.com`
    Then the following files should exist:
      | myProject/Vagrantfile                                               |
      | myProject/puppet/manifests/configuration/myproject.example.com.yaml |

    Then the file "myProject/Vagrantfile" should contain:
      """
      # Hostname: myproject.example.com
      """

  @aruba_interactive
  Scenario: Overwriting existing project with different content asks for user input
    When I run `jenny vagrant myProject --fqdn example.com`
    Then I append to "myProject/Vagrantfile" with:
      """
      # this is some appended text
      """
    When I run `jenny vagrant myProject --fqdn example.com` interactively
    When I wait for output to contain "conflict"
    And I type "Y"
    Then the file "myProject/Vagrantfile" should not contain "some appended text"



