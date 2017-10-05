<cfscript>
// Fails in CF2016, OK in CF11

rc = deserializeJSON("{""lbFolderId"":10}");

writedump(var="#rc#");
mysub(rc);

function mysub (rc ) {

    var vok = rc.lbFolderId ?: 'FAILS';
    writeOutput(vok);
    
    // scoping with arguments makes it fail
    var vfails = arguments.rc.lbFolderId ?: 'FAILS';
    writeOutput(vfails);
    
}

</cfscript>
