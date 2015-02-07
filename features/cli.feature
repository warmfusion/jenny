Feature: CLI
  In order to setup new environents for future systems
  As a CLI
  I want to be as functional as possible

  Scenario: Create new Vagrant using short aliases
    When I run `jenny vagrant -n NewEnvironment`
    Then the output should contain "NewEnvironment"

  Scenario: Create new Vagrant
    When I run `jenny vagrant NewEnvironment`
    Then the output should contain "NewEnvironment"

  Scenario: Get Current Version
    When I run `jenny --version`
    Then the output should match /\d+\.\d+\.\d+/
