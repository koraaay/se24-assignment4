# Created by koray at 23.05.24
Feature: InsertToListAcceptanceTest
  This feature inserts elements by value into the List.

  Scenario: Insert a single element into an empty list
    Given an empty list
    When I insert 5.0 into the list
    Then the list should contain that element
      | 5.0 |

  Scenario: Insert an element into a non-empty list
    Given I have elements with the following values in my list:
      | 1.1 |
      | 2.3 |
      | 4.1 |
    When I insert 2.0 into the list
    Then the list should contain the elements in the following order:
      | 1.1 |
      | 2.0 |
      | 2.3 |
      | 4.1 |

  Scenario: Insert multiple elements into the list
    Given an empty list
    When I insert 3.0, 1.0, and 2.0 into the list
    Then the list should contain 3 elements
