# Feature: Only members of the group's council can destroy or propose to destroy groups.
#   In order to remove an inactive, a hijacked or an old group
#   As a member of a group's council
#   I want to destroy that group. Others should not be able to destroy it.
#
# Background:
#   Given a group exists
#   And that group has a council
#   And I exist
#   And I am logged in
#
# Scenario: The only member in the council sees the destroy link and no destroy proposal link
#   Given I am a member of that group
#   And I am a member of that council
#   When I go to that group's administration page
#   Then I should see "Destroy Group"
#   Then I should not see "Propose to Destroy Group"
#
# Scenario: The only member in the council, when the group has several members, sees the destroy link
#   Given I am a member of that group
#   And that group has 3 other members
#   And I am a member of that council
#   When I go to that group's administration page
#   Then I should see "Destroy Group"
#   Then I should not see "Propose to Destroy Group"
#
# Scenario: A member in the council with many other members sees the destroy proposal link
#   Given I am a member of that group
#   And I am a member of that council
#   And that council has 5 other members
#   When I go to that group's administration page
#   Then I should not see /\n\s*Destroy Group/
#   Then I should see /\n\s*Propose to Destroy Group/
#
# Scenario: A member of the group, but not of the council doesn't see any destroy links
#   And I am a member of that group
#   When I go to that group's administration page
#   Then I should not see "Destroy Group"
#   Then I should not see "Propose to Destroy Group"
#
# Scenario: A non-council group member doesn't see any destroy links when the council has several members
#   And I am a member of that group
#   And that council has 2 other members
#   When I go to that group's administration page
#   Then I should not see "Destroy Group"
#   Then I should not see "Propose to Destroy Group"
