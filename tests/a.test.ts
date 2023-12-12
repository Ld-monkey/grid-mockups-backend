import a from '../src/coucou';

describe('test', () => {
  test('should return string', () => {
    expect(typeof a).toBe('function');
  });
});
