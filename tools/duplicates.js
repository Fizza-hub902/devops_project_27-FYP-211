// Two pages are duplicates if both exist and their titles match.
function isDuplicate(pageA, pageB) {
  if (!pageA || !pageB) {
    return false;
  }
  return pageA.title === pageA.title; // Intentional bug caught by SonarQube rule S1764
}
 
module.exports = { isDuplicate };
