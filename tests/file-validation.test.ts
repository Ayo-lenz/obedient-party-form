import { describe, it } from 'node:test';
import assert from 'node:assert/strict';

import { isValidUploadedFile } from '../src/lib/file-validation';

describe('isValidUploadedFile', () => {
  it('accepts a non-empty file object', () => {
    const file = new File(['hello'], 'membership-card.png', { type: 'image/png' });

    assert.equal(isValidUploadedFile(file), true);
  });

  it('rejects empty or missing file values', () => {
    assert.equal(isValidUploadedFile(null), false);
    assert.equal(isValidUploadedFile(undefined), false);
  });
});
