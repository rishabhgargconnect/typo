Feature: Create Category
  As a blog administrator
  In order to keep my blogs organized into categories
  I want to be able to create new categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully create Category
    Given I am on the new categories page
    When I fill in "category_name" with "Movie"
    And I fill in "category_keywords" with "Movie keyword"
    And I fill in "category_permalink" with "Movie"
    And I fill in "category_description" with "Movie description"
    And I press "Save"
    Then I should see "Movie"
    Then I should see "Movie keyword"
    Then I should see "Movie"
    Then I should see "Movie description"
    Then I follow "Movie"
     When I fill in "category_name" with "Movie category name"
    And I fill in "category_keywords" with "Movie category keywords"
    And I fill in "category_permalink" with "Movie category permalink"
    And I fill in "category_description" with "Movie category description"
    And I press "Save"
    Then I should see "Movie category name"
    Then I should see "Movie category keywords"
    Then I should see "Movie category permalink"
    Then I should see "Movie category description"