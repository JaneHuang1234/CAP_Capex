sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'Capex/Capex/test/integration/FirstJourney',
		'Capex/Capex/test/integration/pages/CapexList',
		'Capex/Capex/test/integration/pages/CapexObjectPage'
    ],
    function(JourneyRunner, opaJourney, CapexList, CapexObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('Capex/Capex') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCapexList: CapexList,
					onTheCapexObjectPage: CapexObjectPage
                }
            },
            opaJourney.run
        );
    }
);