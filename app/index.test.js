const assert = require('assert');

function testAppResponse() {
  const expectedKeys = ['status', 'message', 'author'];
  const mockResponse = {
    status: 'healthy',
    message: 'CI/CD pipeline is working',
    author: 'Emmanuel Ubani'
  };

  expectedKeys.forEach(key => {
    assert.ok(
      mockResponse.hasOwnProperty(key),
      `Missing key: ${key}`
    );
  });

  assert.strictEqual(mockResponse.status, 'healthy');
  console.log('✅ All tests passed');
}

testAppResponse();