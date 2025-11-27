const cds = require('@sap/cds');

class MyServiceHandler extends cds.ApplicationService {

  async init() {
    // Call the base implementation
    await super.init();

    // Example: Register a handler for READ event
    this.before('GET', 'Teachers', async (req) => {
      return await super.run(req.query);
    });
  }
}

module.exports = { MyServiceHandler };
