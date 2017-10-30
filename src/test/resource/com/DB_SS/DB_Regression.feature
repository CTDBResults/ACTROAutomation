
Feature: DB RESULTS TEST

  @review
  Scenario Outline: Check that the DB Results Website can be accessed
    Given I want to login to portal "<PortalName>"
    Then I check I am on "Home | DB Results - Digital Business specialists" page
    Then I see text "DB Results is a digital business consulting and technology company. We provide strategy, consulting, digital, technology and operations services that help your business move from strategy to reality." displayed

    Examples: 
      | PortalName |
      | DBTEST     |

  @review
  Scenario Outline: Check that all buttons and links on the Homepage work as intended
    Given I want to login to portal "<PortalName>"
    Then I check I am on "Home | DB Results - Digital Business specialists" page
    Then I see text "DB Results is a digital business consulting and technology company. We provide strategy, consulting, digital, technology and operations services that help your business move from strategy to reality." displayed
    Then I scroll down by factor "<Factor>"
    Then I click on "<Link>"
    Then I check I am on "<PageTitle>" page

    Examples: 
      | PortalName | Factor | Link                 | PageTitle                                                                                     |
      | DBTEST     |   2500 | More on this project | Case Study - A strategy for Power of Choice keeps a Victorian electricity company competitive |
      | DBTEST     |    500 | ABOUT US             | About Us                                                                                      |
      | DBTEST     |   2000 | View our services    | Services                                                                                      |
      | DBTEST     |   3300 | all projects         | Projects                                                                                      |

  @review
  Scenario Outline: Check that all footer links are working as intended
    Given I want to login to portal "<PortalName>"
    Then I check I am on "Home | DB Results - Digital Business specialists" page
    Then I see text "DB Results is a digital business consulting and technology company. We provide strategy, consulting, digital, technology and operations services that help your business move from strategy to reality." displayed
    Then I scroll down by factor "5000"
    Then I click on "<Link>"
    Then I check I am on "<PageTitle>" page

    Examples: 
      | PortalName | Factor | Link         | PageTitle    |
      | DBTEST     |   2500 | Privacy      | Privacy      |
      | DBTEST     |    500 | Terms of Use | Terms of Use |

  @dolater
  Scenario Outline: Check that all footer icons are working as intended
    Given I want to login to portal "<PortalName>"
    Then I check I am on "Home | DB Results - Digital Business specialists" page
    Then I see text "DB Results is a digital business consulting and technology company. We provide strategy, consulting, digital, technology and operations services that help your business move from strategy to reality." displayed
    Then I scroll down by factor "5000"
    Then I click on object with xpath "//*[contains(@class, 'footer-container')]//div//div"
    Then I click on image with filename "<FileName>"
    Then I wait for "3000" millisecond
    Then a new page "<URL>" is launched

    Examples: 
      | PortalName | FileName         | URL                                          |
      | DBTEST     | twittericon.png  | https://twitter.com/_dbresults               |
      | DBTEST     | linkedinicon.png | https://www.linkedin.com/company/db-results/ |

  @review
  Scenario Outline: Check that the Get in Touch form is workign as intended
    Given I want to login to portal "<PortalName>"
    Then I check I am on "Home | DB Results - Digital Business specialists" page
    Then I see text "DB Results is a digital business consulting and technology company. We provide strategy, consulting, digital, technology and operations services that help your business move from strategy to reality." displayed
    Then I scroll down by factor "4500"
    Then I see text "Get in touch" displayed
    Then I see text "If you would like to know more about how DB Results can help your business please get in touch" displayed
    Then I click on "submit"
    Then I see text "* Please fill in the mandatory fields" displayed
    And I enter the details as
      | Fields              | Value |
      | ContactForm_Name    | TEST  |
      | ContactForm_Email   | TEST  |
      | ContactForm_Message | TEST  |
      | ContactForm_Company | TEST  |
      | ContactForm_Phone   |     1 |
    Then I click on "submit"
    Then I see text "* Please enter a valid email" displayed
    And I enter the details as
      | Fields              | Value         |
      | ContactForm_Name    | TEST          |
      | ContactForm_Email   | TEST@TEST.com |
      | ContactForm_Message | TEST          |
      | ContactForm_Company | TEST          |
      | ContactForm_Phone   |             1 |
    Then I click on "submit"
    Then I see text "Your message has been sent. We'll be in touch soon." displayed
    Then I see text "* Please enter a valid email" not displayed

    Examples: 
      | PortalName |
      | DBTEST     |

  @review
  Scenario Outline: Check that the Newsroom page can be accessed
    Given I want to login to portal "<PortalName>"
    Then I check I am on "Home | DB Results - Digital Business specialists" page
    Then I see text "DB Results is a digital business consulting and technology company. We provide strategy, consulting, digital, technology and operations services that help your business move from strategy to reality." displayed
    Then I click on "<Link>"
    Then I check I am on "<PageTitle>" page

    Examples: 
      | PortalName | Link     | PageTitle |
      | DBTEST     | Newsroom | Newsroom  |

  @wip
  Scenario Outline: Check that Newsroom articles can be accessed
    Given I want to login to portal "<PortalName>"
    Then I check I am on "Home | DB Results - Digital Business specialists" page
    Then I see text "DB Results is a digital business consulting and technology company. We provide strategy, consulting, digital, technology and operations services that help your business move from strategy to reality." displayed
    Then I click on "<Link>"
    Then I check I am on "<PageTitle>" page
    Then I click on "<ButtonName>" regarding DB Topic "<Topic>"

    Examples: 
      | PortalName | Link     | PageTitle | Topic                                               | ButtonName |
      | DBTEST     | Newsroom | Newsroom  | HISA 2017 Don Walker Award Winner                   | Read MORE  |
