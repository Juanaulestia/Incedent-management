const cds = require('@sap/cds')

module.exports = cds.service.impl(async function () {

    const apihub = await cds.connect.to('APIHUB_SANDBOX')

    // Value Help
    this.on('READ', 'A_BusinessPartner', (req) => apihub.run(req.query))

   
})