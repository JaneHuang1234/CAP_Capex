const cds = require('@sap/cds');
/**
 * Implementation
 */
module.exports = cds.service.impl(async function(){
    this.after('READ', 'Capex', capexData => {
        const capexes = Array.isArray(capexData) ? capexData : [capexData];
        capexes.forEach(capex => {
            if (capex.totalCost > 200) {
                capex.criticality = 1;
            } else {
                capex.criticality = 2;
            }
        });
    });
});