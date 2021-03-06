unit Test_Hashes;

interface

uses
  TestFramework,
  Classes,
  IdSSLOpenSSLHeaders,
  IdHashSHA1;

type
  Check_Hashes = class(TTestCase)
  private
    so : TIdHashSHA1;
  public
    procedure setUp;  override;
    procedure tearDown; override;
  published
    procedure VerifySHA1String;
    procedure VerifySHA1BinString;
    procedure VerifySHA1RecString;
    procedure VerifySHA1RecStringConCat;
    procedure VerifySHA1RecStringMiddleNull;
    procedure VerifySHA1OneCharRainbow;
  end;

function Suite : ITestSuite;

implementation

uses
  SysUtils,
  IdGlobal,
  TestExtensions;

type
  TTestRec = record
    x : string[8];
    hash : string[40];
  end;
  TTestArray = array[0..255] of TTestRec;

const
  hashlist : TTestArray = ((x : #0; hash: '5BA93C9DB0CFF93F52B521D7420E43F6EDA2784F'),
(x : #1; hash: 'BF8B4530D8D246DD74AC53A13471BBA17941DFF7'),
(x : #2; hash: 'C4EA21BB365BBEEAF5F2C654883E56D11E43C44E'),
(x : #3; hash: '9842926AF7CA0A8CCA12604F945414F07B01E13D'),
(x : #4; hash: 'A42C6CF1DE3ABFDEA9B95F34687CBBE92B9A7383'),
(x : #5; hash: '8DC00598417D4EB788A77AC6CCEF3CB484905D8B'),
(x : #6; hash: '2D0134ED3B9DE132C720FE697B532B4C232FF9FE'),
(x : #7; hash: '5D1BE7E9DDA1EE8896BE5B7E34A85EE16452A7B4'),
(x : #8; hash: '8D883F1577CA8C334B7C6D75CCB71209D71CED13'),
(x : #9; hash: 'AC9231DA4082430AFE8F4D40127814C613648D8E'),
(x : #10; hash: 'ADC83B19E793491B1C6EA0FD8B46CD9F32E592FC'),
(x : #11; hash: '067D5096F219C64B53BB1C7D5E3754285B565A47'),
(x : #12; hash: '1E32E3C360501A0EDE378BC45A24420DC2E53FBA'),
(x : #13; hash: '11F4DE6B8B45CF8051B1D17FA4CDE9AD935CEA41'),
(x : #14; hash: '320355CED694AA69924F6BB82E7B74F420303FD9'),
(x : #15; hash: 'C7255DC48B42D44F6C0676D6009051B7E1AA885B'),
(x : #16; hash: '6E14A407FAAE939957B80E641A836735BBDCAD5A'),
(x : #17; hash: 'A8ABD012EB59B862BF9BC1EA443D2F35A1A2E222'),
(x : #18; hash: 'C4F87A6290AEE1ACFC1F26083974CE94621FCA64'),
(x : #19; hash: '5A8CA84C7D4D9B055F05C55B1F707F223979D387'),
(x : #20; hash: '3CE0A1AF90B6E7A3DD8D45E410884B588EA2D04C'),
(x : #21; hash: '7762EABF9387FE8EC5D648CD3B1D9EB6D820CAA2'),
(x : #22; hash: 'A9D3C9CD54B1A392B21EA14904D9A318F74636B7'),
(x : #23; hash: '094D98B399BF4ACE7B8899AB7081E867FB03F869'),
(x : #24; hash: 'C2143B1A0DB17957BEC1B41BB2E5F75AA135981E'),
(x : #25; hash: 'E9C5D7DB93A1C17D45C5820DAF458224BFA7A725'),
(x : #26; hash: 'EBDC2288A14298F5F7ADF08E069B39FC42CBD909'),
(x : #27; hash: '27F57CB359A8F86ACF4AF811C47A6380B4BB4209'),
(x : #28; hash: 'B830C46D24068069F0A43687826F355B21FDB941'),
(x : #29; hash: '5983AD8F6BFEA1DEDA79409C844F51379C52BE2D'),
(x : #30; hash: '7FD88C329B63B57572A0032CF14E3E9EC861CE5F'),
(x : #31; hash: '953EFE8F531A5A87F6D2D5A65B78B05E55599ABC'),
(x : #32; hash: 'B858CB282617FB0956D960215C8E84D1CCF909C6'),
(x : #33; hash: '0AB8318ACAF6E678DD02E2B5C343ED41111B393D'),
(x : #34; hash: '2ACE62C1BEFA19E3EA37DD52BE9F6D508C5163E6'),
(x : #35; hash: 'D08F88DF745FA7950B104E4A707A31CFCE7B5841'),
(x : #36; hash: '3CDF2936DA2FC556BFA533AB1EB59CE710AC80E5'),
(x : #37; hash: '4345CB1FA27885A8FBFE7C0C830A592CC76A552B'),
(x : #38; hash: '7C4D33785DAA5C2370201FFA236B427AA37C9996'),
(x : #39; hash: 'BB589D0621E5472F470FA3425A234C74B1E202E8'),
(x : #40; hash: '28ED3A797DA3C48C309A4EF792147F3C56CFEC40'),
(x : #41; hash: 'E7064F0B80F61DBC65915311032D27BAA569AE2A'),
(x : #42; hash: 'DF58248C414F342C81E056B40BEE12D17A08BF61'),
(x : #43; hash: 'A979EF10CC6F6A36DF6B8A323307EE3BB2E2DB9C'),
(x : #44; hash: '5C10B5B2CD673A0616D529AA5234B12EE7153808'),
(x : #45; hash: '3BC15C8AAE3E4124DD409035F32EA2FD6835EFC9'),
(x : #46; hash: '3A52CE780950D4D969792A2559CD519D7EE8C727'),
(x : #47; hash: '42099B4AF021E53FD8FD4E056C2568D7C2E3FFA8'),
(x : #48; hash: 'B6589FC6AB0DC82CF12099D1C2D40AB994E8410C'),
(x : #49; hash: '356A192B7913B04C54574D18C28D46E6395428AB'),
(x : #50; hash: 'DA4B9237BACCCDF19C0760CAB7AEC4A8359010B0'),
(x : #51; hash: '77DE68DAECD823BABBB58EDB1C8E14D7106E83BB'),
(x : #52; hash: '1B6453892473A467D07372D45EB05ABC2031647A'),
(x : #53; hash: 'AC3478D69A3C81FA62E60F5C3696165A4E5E6AC4'),
(x : #54; hash: 'C1DFD96EEA8CC2B62785275BCA38AC261256E278'),
(x : #55; hash: '902BA3CDA1883801594B6E1B452790CC53948FDA'),
(x : #56; hash: 'FE5DBBCEA5CE7E2988B8C69BCFDFDE8904AABC1F'),
(x : #57; hash: '0ADE7C2CF97F75D009975F4D720D1FA6C19F4897'),
(x : #58; hash: '05A79F06CF3F67F726DAE68D18A2290F6C9A50C9'),
(x : #59; hash: '2D14AB97CC3DC294C51C0D6814F4EA45F4B4E312'),
(x : #60; hash: 'C4DD3C8CDD8D7C95603DD67F1CD873D5F9148B29'),
(x : #61; hash: '21606782C65E44CAC7AFBB90977D8B6F82140E76'),
(x : #62; hash: '091385BE99B45F459A231582D583EC9F3FA3D194'),
(x : #63; hash: '5BAB61EB53176449E25C2C82F172B82CB13FFB9D'),
(x : #64; hash: '9A78211436F6D425EC38F5C4E02270801F3524F8'),
(x : #65; hash: '6DCD4CE23D88E2EE9568BA546C007C63D9131C1B'),
(x : #66; hash: 'AE4F281DF5A5D0FF3CAD6371F76D5C29B6D953EC'),
(x : #67; hash: '32096C2E0EFF33D844EE6D675407ACE18289357D'),
(x : #68; hash: '50C9E8D5FC98727B4BBC93CF5D64A68DB647F04F'),
(x : #69; hash: 'E0184ADEDF913B076626646D3F52C3B49C39AD6D'),
(x : #70; hash: 'E69F20E9F683920D3FB4329ABD951E878B1F9372'),
(x : #71; hash: 'A36A6718F54524D846894FB04B5B885B4E43E63B'),
(x : #72; hash: '7CF184F4C67AD58283ECB19349720B0CAE756829'),
(x : #73; hash: 'CA73AB65568CD125C2D27A22BBD9E863C10B675D'),
(x : #74; hash: '58668E7669FD564D99DB5D581FCDB6A5618440B5'),
(x : #75; hash: 'A7EE38BB7BE4FC44198CB2685D9601DCF2B9F569'),
(x : #76; hash: 'D160E0986ACA4714714A16F29EC605AF90BE704D'),
(x : #77; hash: 'C63AE6DD4FC9F9DDA66970E827D13F7C73FE841C'),
(x : #78; hash: 'B51A60734DA64BE0E618BACBEA2865A8A7DCD669'),
(x : #79; hash: '08A914CDE05039694EF0194D9EE79FF9A79DDE33'),
(x : #80; hash: '511993D3C99719E38A6779073019DACD7178DDB9'),
(x : #81; hash: 'C3156E00D3C2588C639E0D3CF6821258B05761C7'),
(x : #82; hash: '06576556D1AD802F247CAD11AE748BE47B70CD9C'),
(x : #83; hash: '02AA629C8B16CD17A44F3A0EFEC2FEED43937642'),
(x : #84; hash: 'C2C53D66948214258A26CA9CA845D7AC0C17F8E7'),
(x : #85; hash: 'B2C7C0CAA10A0CCA5EA7D69E54018AE0C0389DD6'),
(x : #86; hash: 'C9EE5681D3C59F7541C27A38B67EDF46259E187B'),
(x : #87; hash: 'E2415CB7F63DF0C9DE23362326AD3C37A9ADFC96'),
(x : #88; hash: 'C032ADC1FF629C9B66F22749AD667E6BEADF144B'),
(x : #89; hash: '23EB4D3F4155395A74E9D534F97FF4C1908F5AAC'),
(x : #90; hash: '909F99A779ADB66A76FC53AB56C7DD1CAF35D0FD'),
(x : #91; hash: '1E5C2F367F02E47A8C160CDA1CD9D91DECBAC441'),
(x : #92; hash: '08534F33C201A45017B502E90A800F1B708EBCB3'),
(x : #93; hash: '4FF447B8EF42CA51FA6FB287BED8D40F49BE58F1'),
(x : #94; hash: '5E6F80A34A9798CAFC6A5DB96CC57BA4C4DB59C2'),
(x : #95; hash: '53A0ACFAD59379B3E050338BF9F23CFC172EE787'),
(x : #96; hash: '7E15BB5C01E7DD56499E37C634CF791D3A519AEE'),
(x : #97; hash: '86F7E437FAA5A7FCE15D1DDCB9EAEAEA377667B8'),
(x : #98; hash: 'E9D71F5EE7C92D6DC9E92FFDAD17B8BD49418F98'),
(x : #99; hash: '84A516841BA77A5B4648DE2CD0DFCB30EA46DBB4'),
(x : #100; hash: '3C363836CF4E16666669A25DA280A1865C2D2874'),
(x : #101; hash: '58E6B3A414A1E090DFC6029ADD0F3555CCBA127F'),
(x : #102; hash: '4A0A19218E082A343A1B17E5333409AF9D98F0F5'),
(x : #103; hash: '54FD1711209FB1C0781092374132C66E79E2241B'),
(x : #104; hash: '27D5482EEBD075DE44389774FCE28C69F45C8A75'),
(x : #105; hash: '042DC4512FA3D391C5170CF3AA61E6A638F84342'),
(x : #106; hash: '5C2DD944DDE9E08881BEF0894FE7B22A5C9C4B06'),
(x : #107; hash: '13FBD79C3D390E5D6585A21E11FF5EC1970CFF0C'),
(x : #108; hash: '07C342BE6E560E7F43842E2E21B774E61D85F047'),
(x : #109; hash: '6B0D31C0D563223024DA45691584643AC78C96E8'),
(x : #110; hash: 'D1854CAE891EC7B29161CCAF79A24B00C274BDAA'),
(x : #111; hash: '7A81AF3E591AC713F81EA1EFE93DCF36157D8376'),
(x : #112; hash: '516B9783FCA517EECBD1D064DA2D165310B19759'),
(x : #113; hash: '22EA1C649C82946AA6E479E1FFD321E4A318B1B0'),
(x : #114; hash: '4DC7C9EC434ED06502767136789763EC11D2C4B7'),
(x : #115; hash: 'A0F1490A20D0211C997B44BC357E1972DEAB8AE3'),
(x : #116; hash: '8EFD86FB78A56A5145ED7739DCB00C78581C5375'),
(x : #117; hash: '51E69892AB49DF85C6230CCC57F8E1D1606CACCC'),
(x : #118; hash: '7A38D8CBD20D9932BA948EFAA364BB62651D5AD4'),
(x : #119; hash: 'AFF024FE4AB0FECE4091DE044C58C9AE4233383A'),
(x : #120; hash: '11F6AD8EC52A2984ABAAFD7C3B516503785C2072'),
(x : #121; hash: '95CB0BFD2977C761298D9624E4B4D4C72A39974A'),
(x : #122; hash: '395DF8F7C51F007019CB30201C49E884B46B92FA'),
(x : #123; hash: '60BA4B2DAA4ED4D070FEC06687E249E0E6F9EE45'),
(x : #124; hash: '3EB416223E9E69E6BB8EE19793911AD1AD2027D8'),
(x : #125; hash: 'C2B7DF6201FDD3362399091F0A29550DF3505B6A'),
(x : #126; hash: 'FB3C6E4DE85BD9EAE26FDC63E75F10A7F39E850E'),
(x : #127; hash: '23833462F55515A900E016DB2EB943FB474C19F6'),
(x : #128; hash: 'C78EBD3C85A39A596D9F5CFD2B8D240BC1B9C125'),
(x : #129; hash: 'A3F294235FE5422005AE9BC3A0D1BFFE12CFE353'),
(x : #130; hash: 'FAA1781E1444BBA5B8C677BC5E2A38D023A1EC65'),
(x : #131; hash: '30140397FE38EE61F01EFF44B5CFA48285E47889'),
(x : #132; hash: '999A0A8CAD102EB519CA788D6E0CD48EE9E6CA3E'),
(x : #133; hash: '8768A53E1D4C182907306300F9CA90CFD8018383'),
(x : #134; hash: 'A9DE501BD96364662356B29FAEE5662ED5D8A33E'),
(x : #135; hash: 'CA632D28F91C1B8D638DF71525FE22FD2473AF10'),
(x : #136; hash: '2E74D24E887678F0681D4C7C010477B8B9697F1A'),
(x : #137; hash: '3C7923F135D358FD685065FDE8A996D474367DA2'),
(x : #138; hash: 'C4488AF0C158E8C2832CB927CFB3CE534104CD1E'),
(x : #139; hash: 'DA914F191324EC59DE3BDBA94C21B901B24F65AC'),
(x : #140; hash: '090CBC46C3A13CD05FCEB2FE55CCCAAB870D6795'),
(x : #141; hash: '42034C895D06D6F914DEAC94CA1D87CB39A8CD32'),
(x : #142; hash: '66B8C256F4B4F6CE36EC1ABEDEDF1826F91B05D2'),
(x : #143; hash: '64B68BF5B882B9BD0B37267287980ECFA0E44A85'),
(x : #144; hash: 'C4595D8F743731CBC1CA0BB34BE79A40D771DDF0'),
(x : #145; hash: 'E9F987C3AB268BA6CF1C2CA075D6D26B01791214'),
(x : #146; hash: 'E67CB59B3168E12EA787B84372AB07560F8304D5'),
(x : #147; hash: 'BB7D065B776833337D3E1A3071DE4D5D2759D78B'),
(x : #148; hash: '04F029FECCD2C5C3D3EF87329EB85606BBDD2698'),
(x : #149; hash: 'BC85C9FA1B17F3B8E24EAC3432FFF626F75665F0'),
(x : #150; hash: 'B8F3EEC6B5FA270FB05644DE403D9077B60CCBCF'),
(x : #151; hash: 'FA138AE356D35C8D77083C406A5BE73745643AAE'),
(x : #152; hash: '52A719F9D01E6A1882F97BC011E52C80F807E955'),
(x : #153; hash: 'B25B0FBF46CEF1D888FE900445C9AB95330F44CD'),
(x : #154; hash: '13CBA177BCFAD90E7B3DE70616B2E54BA4BB107F'),
(x : #155; hash: '60C79E75F9C2EA5F5AAF21EC2AD7D5B13D61F864'),
(x : #156; hash: '897F9399AEBB2B6163B8175B8E50C52B54AEDA2D'),
(x : #157; hash: 'D57A281360B0397E17FD449153EB58A47DD5B12C'),
(x : #158; hash: 'A2DFA9429BF2A04D8F23FE980209BD5315F80523'),
(x : #159; hash: 'F195C020A28DFC5F2FB6AF256B524DDCD93756ED'),
(x : #160; hash: 'C7DA1FF95A25C353F1319604703E8BFD287EE1A1'),
(x : #161; hash: 'EB6B0E7165A8118B4BD2DE93FBE8182DC50FE8DE'),
(x : #162; hash: '10687FEB9716C9502D9A40FDFE3BB339055C8651'),
(x : #163; hash: '121A9AF889BD4CA2266BE5A4F680D3BEAD8D02D6'),
(x : #164; hash: 'F5EFCD994FCA895F644B0CCC362ABA5D6F4AE0C6'),
(x : #165; hash: '4FB8CFEAAAC80A1C829B22A43089EF470BCFE5B8'),
(x : #166; hash: '4DF7138B341559A90FCF19AAC099BFA6CC432CB2'),
(x : #167; hash: 'DCF5BF6C63BA8E32483F75660B3A6A0F5D764483'),
(x : #168; hash: '99F2AA95E36F95C2ACB0EAF23998F030638F3F15'),
(x : #169; hash: '19DA91F2603889267DFD77786E07A5B8F067D62A'),
(x : #170; hash: '52538A80094F7B62948FD31E68FD17A315D8DC91'),
(x : #171; hash: 'FE83F217D464F6FDFA5B2B1F87FE3A1A47371196'),
(x : #172; hash: '39527C59247A39D18AD48B9947EA738396A3BC47'),
(x : #173; hash: '241CBD6DFB6E53C43C73B62F9384359091DCBF56'),
(x : #174; hash: 'D8FC60CCDD8F555C1858B9F0820F263E3D2B58EC'),
(x : #175; hash: 'E27BD5104A595844730F44DF571DE7DA07951FFB'),
(x : #176; hash: 'F11D1C80A3EEEC16ED6079A52005D446886C3A4F'),
(x : #177; hash: '6BACE82EA640AC0A78963C79483FAF0FAA7FD168'),
(x : #178; hash: 'FFC54CA808E7666F250133AD0AE2185AD688A826'),
(x : #179; hash: 'D50591FF745CC83091F4EE12B2EE702CB24B0B45'),
(x : #180; hash: '361A52996679445C4571C014B26C883135B052FF'),
(x : #181; hash: '77A55E8DD56F4428497116B91D4C0C3BA932425C'),
(x : #182; hash: '45A65193E30784B0124F4FED659EB7E46552C2D0'),
(x : #183; hash: 'C000A51366616D33F9DF61C9260FBA450F9E2E7C'),
(x : #184; hash: 'E144F0608B1A43EC8A6EA4ED41F198C92697C471'),
(x : #185; hash: 'F8407E180BD92589B728AF21C5626C18770CF26B'),
(x : #186; hash: '061FB208431DB793BBD3645B7A16058A1E2A2412'),
(x : #187; hash: '1A5D2A45772C53D803DEF107B67366DB0B8E20AF'),
(x : #188; hash: '08DBBF42CABA6501B69B1CEA7A9B84E358E66DDB'),
(x : #189; hash: '9034AAF45143996A2B14465C352AB0C6FA26B221'),
(x : #190; hash: 'B7471E724DFBA20B71265EB8F8315FF5ADD6CCAD'),
(x : #191; hash: 'D3FE83B8D87CCDA2BBCA5E81CE3AB1A1400BFBE8'),
(x : #192; hash: '2149AA9E07DDA9BBF502E088D8D0A38E8FB94F2E'),
(x : #193; hash: 'CB46C744C83541A0900E1E61780C18D43031A08B'),
(x : #194; hash: 'E8EB9FAA5D366C5BD059B1BA22C5FE8CB54AC36B'),
(x : #195; hash: '8BF7B464AAA2C2B536AA1D76A1297C19155F5603'),
(x : #196; hash: 'EBCDCB7EFFCC3F06E0D503638AC621DE877FC554'),
(x : #197; hash: '4105DB4A5B81CA1F574B2F0D9576AAAFD9AE9C76'),
(x : #198; hash: '8B3291A6208FB6849C641E97FFE5B54C13AC84CB'),
(x : #199; hash: '8CE24FC0EA8E685EB23BF6346713AD9FEF920425'),
(x : #200; hash: '8C1E6AB4270792C51304EA06F47DC20CE51BA57B'),
(x : #201; hash: '964992FDE30239AF2636655E58D714E73D8B5050'),
(x : #202; hash: '7EF8AA6A336B4A7122031D713F383FFBBE5FAC93'),
(x : #203; hash: '12BDD00FD4038756CBCF8ECDAD1B0CD862603CD8'),
(x : #204; hash: 'A6F57425137E9AA54537F0B3F5364CE165AEDB0A'),
(x : #205; hash: '126FE40D9E64DF223C05078F44BF57CB794DD3E7'),
(x : #206; hash: '82BB3EAB86D4063EA4A3CB97821FEB07CECF7B72'),
(x : #207; hash: '1A6DBAA717F8837C4BD4332121E92BD73BBEC049'),
(x : #208; hash: '655F2B71DDFAFBCBD5AF517F02EB9386A2A7A2A1'),
(x : #209; hash: 'C314F8C1FA13E1AFA11C8716C7BCE6DBF02D09AA'),
(x : #210; hash: 'F8998DA85FB12D4E8A858D364AB485DFAD0863B4'),
(x : #211; hash: 'B34DB2B72D63F33DBEF80FB30E094CC0A91D6322'),
(x : #212; hash: 'C151B760696D665265187501C51F38CD84503634'),
(x : #213; hash: '189EBF93BE3966E53E508D694226AF884595C91E'),
(x : #214; hash: '6A2FFA3567B0D286348F4E6942D3E8E62D820D2A'),
(x : #215; hash: 'B3E01674A1E4DD78E748782FCFC3ADD5523F51D8'),
(x : #216; hash: '1DCF0EC2351966FC2B0BABEE787F535A2683F130'),
(x : #217; hash: 'EC7D070174E40ACE678006D0C631026F1D9A0779'),
(x : #218; hash: 'AEBF649A518267A39ABE60E3EFBC13354FD94273'),
(x : #219; hash: '1216AA524AEF75E75AA9214FB78AD1AC3BA1E34B'),
(x : #220; hash: '5FB9A0BA37519B7FD51909C778EE3B48502DE7C1'),
(x : #221; hash: 'A4AC408FB9D6DEF070AD3A76312CA092863048E5'),
(x : #222; hash: 'A3B63037F3B6D74FC4E7156F5CDCBD902E897D1D'),
(x : #223; hash: '3FA5BFD93317AD25772680071D5AC3259CD2384F'),
(x : #224; hash: 'C2204EDBFB1B72C9E996A5E6464F6AB0198C494F'),
(x : #225; hash: 'B753D636F6EE46BB9242D01FF8B61F715E9A88C3'),
(x : #226; hash: 'DD79C8CFB8BEEACD0460429944B4ECBE95A31561'),
(x : #227; hash: 'ADAD2CA7AB313ADD6E955F704719E03D5229E4D0'),
(x : #228; hash: '7E5C0F7ABA32CF3E22FD30C4513A21E6D1C3AEFF'),
(x : #229; hash: '80B65690C5A9BF7797A8CCC6C350CAD44F5AF19F'),
(x : #230; hash: '12DB8F85BFE3E0B837059FA01E53748A0727B52C'),
(x : #231; hash: '132CCF0BBEFFCE4AF8E88C1C38CB67D38432976F'),
(x : #232; hash: '768AAB37C292010133979E821AD5AC081ADE388A'),
(x : #233; hash: '1599E9FA41EC68C80230491902786BEE889F5BCB'),
(x : #234; hash: '3C89586D99F2567D21410F29B1B2606574892AA7'),
(x : #235; hash: 'A70FB6A9415D3C34A9EA5510BA7E3A055D88AEF9'),
(x : #236; hash: '0AD052DD9F32405521E43C6EBDC52F5A025493B2'),
(x : #237; hash: '1DC3882D4BCCCB325751803B817489C3715DB4CC'),
(x : #238; hash: '77AC341FEEBEB7C0A7FF8F9C6540531500693BAC'),
(x : #239; hash: '55DF2A59ED6A888EE2F0CDFDCC8582696702DE7A'),
(x : #240; hash: 'EFE43DEF97EB295FE99C3753F2D740D7B36DF689'),
(x : #241; hash: '07B7255EACBC81C051445EBE4F8C74FC8892DD3E'),
(x : #242; hash: '986B212420E3B977068244E6BD916575BB0C15E5'),
(x : #243; hash: '0A80BAA1797615FADDB0CCFAA6D46382A6B3E0E2'),
(x : #244; hash: 'B48F491783E98DE10682F2D4455DFCE5BDC3C233'),
(x : #245; hash: 'C66BE7210915F39E91456FC2EAC9441012A0A3EA'),
(x : #246; hash: '9B16668F4E16C0E9932661855B7BCB5BAD8B0F72'),
(x : #247; hash: '73B74736664AD85828CE1BE2E29FB4A68D24402B'),
(x : #248; hash: '745BEDB79413D20844A8B0E96FBEC51B4989C65D'),
(x : #249; hash: 'A1A7715C7596C77B892DC6D4DEBB7C108CA4EF97'),
(x : #250; hash: '3ACEAD9C86F231EC128194B50DEF7A93C1620403'),
(x : #251; hash: 'D07E4BC786C88B8D2304F84C7DB2098666F822C0'),
(x : #252; hash: 'AB461F6B8A6842A473257A2561C1FBDF91BDFE77'),
(x : #253; hash: 'B54664965911C6FE91E18CD01B68A75C8183B530'),
(x : #254; hash: 'B68542373C05C0ED25231D09955B2C699D37C45B'),
(x : #255; hash: '85E53271E14006F0265921D02D4D736CDC580B0B')

);

function Suite : ITestSuite;
begin
  result := TTestSuite.Create('Hashes Tests');

  result.addTest(Check_Hashes.Suite);

end;


{ Check_Hashes }

procedure Check_Hashes.setUp;
begin
  inherited;
  IdSSLOpenSSLHeaders.Load();
  so := TIdHashSHA1.Create;
end;

procedure Check_Hashes.tearDown;
begin
  inherited;
  IdSSLOpenSSLHeaders.Unload();
end;

procedure Check_Hashes.VerifySHA1BinString;
var
  hashstr : string;
begin
  hashstr := so.HashStringAsHex(#0);
  check(hashstr = '5BA93C9DB0CFF93F52B521D7420E43F6EDA2784F', '# 0 hashes to ' + hashstr);

end;

procedure Check_Hashes.VerifySHA1OneCharRainbow;
var
  hashstr : string;
  i : integer;
  q : TIdBytes;
begin
  for i := low(hashlist) to high(hashlist) do
  begin
    setlength(q, length(hashlist[i].x));
    //move(hashlist[i].x, q, length(hashlist[i].x));
    q[0] := i;
    hashstr := so.HashBytesAsHex(q);
    //    hashstr := so.HashStringAsHex(hashlist[i].x);
    check(hashstr = uppercase(hashlist[i].hash), IntToStr(i) + ' hashes to ' + hashstr);
  end;
end;

procedure Check_Hashes.VerifySHA1RecString;
var
  hashstr : string;
  tr : TTestRec;
  i : integer;
  hexstr : string;
begin
  setlength(tr.x,8);
  for i := 1 to length(tr.x) do
    tr.x[i] := chr(i);
  setlength(hexstr, 16);
  BinToHex(@(tr.x[1]),@(hexstr[1]), 8);
  hashstr := so.HashStringAsHex(tr.x);
  check(hashstr = 'DD5783BCF1E9002BC00AD5B83A95ED6E4EBB4AD5', hexstr + ' hashes to ' + hashstr);
end;

procedure Check_Hashes.VerifySHA1RecStringConCat;
var
  hashstr : string;
  i : integer;
  hexstr : string;
  q : TIdBytes;
begin
  setlength(q,18);
  for i := 0 to length(q) - 1 do
    q[i] := (i+252) mod 256;
  setlength(hexstr, 16);
  BinToHex(@(q[0]), @(hexstr[1]), 8);
  move('1234567890', q[8], 10);
  hashstr := so.HashBytesAsHex(q);
  check(hashstr = '8A7FA8B08DB15DFD476FC9E93AC9D53C315196B3', hexstr + '1234567890 hashes to ' + hashstr);
end;

procedure Check_Hashes.VerifySHA1RecStringMiddleNull;
var
  hashstr : string;
  i : integer;
  hexstr : string;
  q : TIdBytes;
begin
  setlength(q,8);
  for i := 0 to length(q) - 1 do
    q[i] := (i+252) mod 256;
  setlength(hexstr, 16);
  BinToHex(@(q[0]), @(hexstr[1]), 8);
  hashstr := so.HashBytesAsHex(q);
  check(hashstr = 'FADF2C6A557A5DF545F094CF313B0ADAC38DF99E', hexstr + ' hashes to ' + hashstr);
end;

procedure Check_Hashes.VerifySHA1String;
var
  hashstr : string;
begin
  hashstr := so.HashStringAsHex('abcd');
  check(hashstr = '81FE8BFE87576C3ECB22426F8E57847382917ACF', 'abcd hashes to ' + hashstr);

end;

initialization
  TestFramework.RegisterTest(Suite);
end.
