import { describe, it } from 'node:test';
import assert from 'node:assert/strict';

import { buildApplicationDecisionEmail } from '../src/lib/application-decision-email';

describe('buildApplicationDecisionEmail', () => {
  it('includes the status and rejection comment in the message body', () => {
    const result = buildApplicationDecisionEmail({
      status: 'rejected',
      applicantName: 'Jane Doe',
      comment: 'The provided documents were incomplete.',
    });

    assert.match(result.subject, /rejected/i);
    assert.match(result.text, /Jane Doe/i);
    assert.match(result.text, /incomplete/i);
    assert.match(result.html, /rejected/i);
  });

  it('uses the approved copy when the application is approved', () => {
    const result = buildApplicationDecisionEmail({
      status: 'approved',
      applicantName: 'John Smith',
      comment: 'Your form is accepted for the next stage.',
    });

    assert.match(result.subject, /approved/i);
    assert.match(result.html, /approved/i);
    assert.match(result.text, /next stage/i);
  });
});
