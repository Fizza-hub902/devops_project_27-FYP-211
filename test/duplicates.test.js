const { test } = require('node:test');
const assert = require('node:assert');
const { isDuplicate } = require('../tools/duplicates');

test('different titles are not duplicates', () => {
  assert.strictEqual(isDuplicate({ title: 'A' }, { title: 'B' }), false);
});

test('same titles are duplicates', () => {
  assert.strictEqual(isDuplicate({ title: 'A' }, { title: 'A' }), true);
});
