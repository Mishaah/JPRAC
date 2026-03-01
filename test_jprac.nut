::insideTest <- class
{
    a = null
    constructor(x)
    {
        a = x
    }
    function printa()
    {
        printl(a)
    }   
}

//local InsideTestClass = insideTest

class test
{
    createdInsideTest = null
    createdInsideTest2 = null

    function createInsideTest(x)
    {
        return insideTest(x) // Uses the stored reference
    }

    constructor()
    {
        this.createdInsideTest = this.createInsideTest("a")
        this.createdInsideTest2 = this.createInsideTest("b")
    }
}

local _test = null

function main()
{
    local ws = Entities.First()
    ws.KeyValueFromString("skyname", "sky_alpinestorm_01")
    _test = test()
    _test.createdInsideTest.printa()
    _test.createdInsideTest2.printa()
    printl(Constants.HideHUD.HIDEHUD_CROSSHAIR.tostring())
}
