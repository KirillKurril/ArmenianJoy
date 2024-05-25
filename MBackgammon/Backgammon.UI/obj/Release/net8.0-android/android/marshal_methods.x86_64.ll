; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [157 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [314 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 53
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 156
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 58
	i64 186729278285993433, ; 3: Entities.dll => 0x297654a0d66d5d9 => 91
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 112
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 66
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 83
	i64 560278790331054453, ; 7: System.Reflection.Primitives => 0x7c6829760de3975 => 133
	i64 585230828506449513, ; 8: Backgammon.UI.dll => 0x81f28567cbc0669 => 92
	i64 750875890346172408, ; 9: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 146
	i64 799765834175365804, ; 10: System.ComponentModel.dll => 0xb1956c9f18442ac => 102
	i64 805302231655005164, ; 11: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 71
	i64 1010599046655515943, ; 13: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 133
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 87
	i64 1268860745194512059, ; 15: System.Drawing.dll => 0x119be62002c19ebb => 108
	i64 1369545283391376210, ; 16: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 79
	i64 1476839205573959279, ; 17: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 119
	i64 1486715745332614827, ; 18: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 55
	i64 1513467482682125403, ; 19: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 155
	i64 1537168428375924959, ; 20: System.Threading.Thread.dll => 0x15551e8a954ae0df => 146
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 64
	i64 1628611045998245443, ; 22: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 76
	i64 1731380447121279447, ; 23: Newtonsoft.Json => 0x18071957e9b889d7 => 60
	i64 1735388228521408345, ; 24: System.Net.Mail.dll => 0x181556663c69b759 => 116
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 114
	i64 1767386781656293639, ; 26: System.Private.Uri.dll => 0x188704e9f5582107 => 128
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 63
	i64 1835311033149317475, ; 28: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 83
	i64 1875417405349196092, ; 30: System.Drawing.Primitives => 0x1a06d2319b6c713c => 107
	i64 1881198190668717030, ; 31: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 32: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 56
	i64 1930726298510463061, ; 33: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 37
	i64 1981742497975770890, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 75
	i64 2102659300918482391, ; 35: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 107
	i64 2133195048986300728, ; 36: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 60
	i64 2262844636196693701, ; 37: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 71
	i64 2287834202362508563, ; 38: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 94
	i64 2329709569556905518, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 74
	i64 2335503487726329082, ; 40: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 142
	i64 2470498323731680442, ; 41: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 67
	i64 2497223385847772520, ; 42: System.Runtime => 0x22a7eb7046413568 => 139
	i64 2547086958574651984, ; 43: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 62
	i64 2602673633151553063, ; 44: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2632269733008246987, ; 45: System.Net.NameResolution => 0x2487b36034f808cb => 117
	i64 2656907746661064104, ; 46: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 47
	i64 2662981627730767622, ; 47: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2706075432581334785, ; 48: System.Net.WebSockets => 0x258de944be6c0701 => 125
	i64 2895129759130297543, ; 49: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 50: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 87
	i64 3289520064315143713, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 73
	i64 3311221304742556517, ; 52: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 126
	i64 3325875462027654285, ; 53: System.Runtime.Numerics => 0x2e27e21c8958b48d => 136
	i64 3328853167529574890, ; 54: System.Net.Sockets.dll => 0x2e327651a008c1ea => 122
	i64 3344514922410554693, ; 55: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 89
	i64 3429672777697402584, ; 56: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 58
	i64 3494946837667399002, ; 57: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 45
	i64 3522470458906976663, ; 58: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 84
	i64 3551103847008531295, ; 59: System.Private.CoreLib.dll => 0x31480e226177735f => 153
	i64 3567343442040498961, ; 60: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 61: System.Runtime.dll => 0x319037675df7e556 => 139
	i64 3638003163729360188, ; 62: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 46
	i64 3647754201059316852, ; 63: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 150
	i64 3655542548057982301, ; 64: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 45
	i64 3727469159507183293, ; 65: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 82
	i64 3783726507060260521, ; 66: Microsoft.AspNetCore.SignalR.Common.dll => 0x34827f360c8e6ea9 => 43
	i64 3869221888984012293, ; 67: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 50
	i64 3890352374528606784, ; 68: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 56
	i64 3933965368022646939, ; 69: System.Net.Requests => 0x369840a8bfadc09b => 120
	i64 3966267475168208030, ; 70: System.Memory => 0x370b03412596249e => 114
	i64 4009997192427317104, ; 71: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 138
	i64 4070326265757318011, ; 72: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 73: System.Private.Xml.dll => 0x3887fb25779ae26e => 130
	i64 4073631083018132676, ; 74: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 54
	i64 4120493066591692148, ; 75: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 76: System.ComponentModel => 0x39a7562737acb67e => 102
	i64 4187479170553454871, ; 77: System.Linq.Expressions => 0x3a1cea1e912fa117 => 112
	i64 4205801962323029395, ; 78: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 101
	i64 4360412976914417659, ; 79: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4477672992252076438, ; 80: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 148
	i64 4743821336939966868, ; 81: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 99
	i64 4794310189461587505, ; 82: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 62
	i64 4795410492532947900, ; 83: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 84
	i64 4809057822547766521, ; 84: System.Drawing => 0x42bd349c3145ecf9 => 108
	i64 4814660307502931973, ; 85: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 117
	i64 4853321196694829351, ; 86: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 135
	i64 4871824391508510238, ; 87: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4953714692329509532, ; 88: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5103417709280584325, ; 89: System.Collections.Specialized => 0x46d2fb5e161b6285 => 97
	i64 5182934613077526976, ; 90: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 97
	i64 5290786973231294105, ; 91: System.Runtime.Loader => 0x496ca6b869b72699 => 135
	i64 5471532531798518949, ; 92: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 93: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 94: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 110
	i64 5573260873512690141, ; 95: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 140
	i64 5692067934154308417, ; 96: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 86
	i64 5880348367331155484, ; 97: Backgammon.UI => 0x519b31af46525e1c => 92
	i64 5979151488806146654, ; 98: System.Formats.Asn1 => 0x52fa3699a489d25e => 109
	i64 6014447449592687183, ; 99: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 40
	i64 6034224070161570862, ; 100: Microsoft.AspNetCore.SignalR.Client.dll => 0x53bdded235179c2e => 41
	i64 6200764641006662125, ; 101: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 102: System.Text.Json.dll => 0x565a67a0ffe264a7 => 143
	i64 6284145129771520194, ; 103: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 131
	i64 6300676701234028427, ; 104: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6357457916754632952, ; 105: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 106: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 74
	i64 6471714727257221498, ; 107: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 108: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 109: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 70
	i64 6560151584539558821, ; 110: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 52
	i64 6743165466166707109, ; 111: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6783125919820072783, ; 112: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 38
	i64 6786606130239981554, ; 113: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 106
	i64 6814185388980153342, ; 114: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 151
	i64 6876862101832370452, ; 115: System.Xml.Linq => 0x5f6f85a57d108914 => 149
	i64 6894844156784520562, ; 116: System.Numerics.Vectors => 0x5faf683aead1ad72 => 126
	i64 7017588408768804231, ; 117: Microsoft.AspNetCore.SignalR.Protocols.Json => 0x61637b7a1c903587 => 44
	i64 7083547580668757502, ; 118: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 129
	i64 7270811800166795866, ; 119: System.Linq => 0x64e71ccf51a90a5a => 113
	i64 7377312882064240630, ; 120: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 101
	i64 7488575175965059935, ; 121: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 149
	i64 7489048572193775167, ; 122: System.ObjectModel => 0x67ee71ff6b419e3f => 127
	i64 7654504624184590948, ; 123: System.Net.Http => 0x6a3a4366801b8264 => 115
	i64 7694700312542370399, ; 124: System.Net.Mail => 0x6ac9112a7e2cda5f => 116
	i64 7714652370974252055, ; 125: System.Private.CoreLib => 0x6b0ff375198b9c17 => 153
	i64 7735176074855944702, ; 126: Microsoft.CSharp => 0x6b58dda848e391fe => 93
	i64 7735352534559001595, ; 127: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 88
	i64 7742555799473854801, ; 128: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 129: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 64
	i64 7975724199463739455, ; 130: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8064050204834738623, ; 131: System.Collections.dll => 0x6fe942efa61731bf => 98
	i64 8083354569033831015, ; 132: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 73
	i64 8087206902342787202, ; 133: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 105
	i64 8108129031893776750, ; 134: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8167236081217502503, ; 135: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 154
	i64 8185542183669246576, ; 136: System.Collections => 0x7198e33f4794aa70 => 98
	i64 8243855692487634729, ; 137: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x72680f13124eaf29 => 44
	i64 8246048515196606205, ; 138: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 59
	i64 8368701292315763008, ; 139: System.Security.Cryptography => 0x7423997c6fd56140 => 140
	i64 8386351099740279196, ; 140: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 141: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 81
	i64 8410671156615598628, ; 142: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 132
	i64 8518412311883997971, ; 143: System.Collections.Immutable => 0x76377add7c28e313 => 95
	i64 8563666267364444763, ; 144: System.Private.Uri => 0x76d841191140ca5b => 128
	i64 8599632406834268464, ; 145: CommunityToolkit.Maui => 0x7758081c784b4930 => 35
	i64 8626175481042262068, ; 146: Java.Interop => 0x77b654e585b55834 => 154
	i64 8638972117149407195, ; 147: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 93
	i64 8639588376636138208, ; 148: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 80
	i64 8677882282824630478, ; 149: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 150: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 105
	i64 8941376889969657626, ; 151: System.Xml.XDocument => 0x7c1626e87187471a => 151
	i64 9045785047181495996, ; 152: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 153: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 86
	i64 9324707631942237306, ; 154: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 63
	i64 9363564275759486853, ; 155: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9551379474083066910, ; 156: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9659729154652888475, ; 157: System.Text.RegularExpressions => 0x860e407c9991dd9b => 144
	i64 9678050649315576968, ; 158: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 67
	i64 9702891218465930390, ; 159: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 96
	i64 9773637193738963987, ; 160: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 161: Mono.Android.dll => 0x881f890734e555e7 => 156
	i64 9956195530459977388, ; 162: Microsoft.Maui => 0x8a2b8315b36616ac => 57
	i64 10038780035334861115, ; 163: System.Net.Http.dll => 0x8b50e941206af13b => 115
	i64 10051358222726253779, ; 164: System.Private.Xml => 0x8b7d990c97ccccd3 => 130
	i64 10078727084704864206, ; 165: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 124
	i64 10092835686693276772, ; 166: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 55
	i64 10143853363526200146, ; 167: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10209869394718195525, ; 168: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10226498071391929720, ; 169: Microsoft.Extensions.Features => 0x8debd1d049888578 => 49
	i64 10229024438826829339, ; 170: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 70
	i64 10245369515835430794, ; 171: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 132
	i64 10364469296367737616, ; 172: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 131
	i64 10406448008575299332, ; 173: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 89
	i64 10430153318873392755, ; 174: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 68
	i64 10506226065143327199, ; 175: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10761706286639228993, ; 176: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 177: System.Net.Primitives => 0x95ac8cfb68830758 => 119
	i64 10880838204485145808, ; 178: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 35
	i64 11002576679268595294, ; 179: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 51
	i64 11009005086950030778, ; 180: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 57
	i64 11103970607964515343, ; 181: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11156122287428000958, ; 182: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 183: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 184: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 85
	i64 11220793807500858938, ; 185: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 186: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 52
	i64 11318524236318829483, ; 187: Backgammon.Client => 0x9d1379d3276eebab => 90
	i64 11340910727871153756, ; 188: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 69
	i64 11485890710487134646, ; 189: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 134
	i64 11513602507638267977, ; 190: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 61
	i64 11518296021396496455, ; 191: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 192: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 85
	i64 11530571088791430846, ; 193: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 50
	i64 11855031688536399763, ; 194: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 12145679461940342714, ; 195: System.Text.Json => 0xa88e1f1ebcb62fba => 143
	i64 12201331334810686224, ; 196: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 138
	i64 12269460666702402136, ; 197: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 95
	i64 12313367145828839434, ; 198: System.IO.Pipelines => 0xaae1de2e1c17f00a => 61
	i64 12341818387765915815, ; 199: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 36
	i64 12451044538927396471, ; 200: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 72
	i64 12466513435562512481, ; 201: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 77
	i64 12475113361194491050, ; 202: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 203: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 106
	i64 12538491095302438457, ; 204: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 65
	i64 12550732019250633519, ; 205: System.IO.Compression => 0xae2d28465e8e1b2f => 111
	i64 12700543734426720211, ; 206: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 66
	i64 12708922737231849740, ; 207: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 141
	i64 12843321153144804894, ; 208: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 53
	i64 12859557719246324186, ; 209: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 123
	i64 12989346753972519995, ; 210: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13005833372463390146, ; 211: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13068258254871114833, ; 212: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 137
	i64 13295219713260136977, ; 213: Microsoft.AspNetCore.Http.Connections.Client => 0xb8821be35ba42a11 => 39
	i64 13343850469010654401, ; 214: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 155
	i64 13381594904270902445, ; 215: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13428779960367410341, ; 216: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0xba5c9c39a8956ca5 => 42
	i64 13465488254036897740, ; 217: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 88
	i64 13540124433173649601, ; 218: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13572454107664307259, ; 219: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 82
	i64 13717397318615465333, ; 220: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 100
	i64 13881769479078963060, ; 221: System.Console.dll => 0xc0a5f3cade5c6774 => 103
	i64 13959074834287824816, ; 222: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 72
	i64 14124974489674258913, ; 223: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 65
	i64 14125464355221830302, ; 224: System.Threading.dll => 0xc407bafdbc707a9e => 147
	i64 14254574811015963973, ; 225: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 141
	i64 14349907877893689639, ; 226: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14461014870687870182, ; 227: System.Net.Requests.dll => 0xc8afd8683afdece6 => 120
	i64 14464374589798375073, ; 228: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 229: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14551742072151931844, ; 230: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 142
	i64 14556034074661724008, ; 231: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 36
	i64 14604329626201521481, ; 232: Microsoft.AspNetCore.SignalR.Client => 0xcaad006b00747d49 => 41
	i64 14610046442689856844, ; 233: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14622043554576106986, ; 234: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 137
	i64 14669215534098758659, ; 235: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 47
	i64 14690985099581930927, ; 236: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 148
	i64 14705122255218365489, ; 237: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 238: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 239: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14809184851036126845, ; 240: Microsoft.AspNetCore.SignalR.Client.Core => 0xcd84cb28db1abe7d => 42
	i64 14852515768018889994, ; 241: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 69
	i64 14904040806490515477, ; 242: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 243: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 48
	i64 14984936317414011727, ; 244: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 123
	i64 14987728460634540364, ; 245: System.IO.Compression.dll => 0xcfff1ba06622494c => 111
	i64 15015154896917945444, ; 246: System.Net.Security.dll => 0xd0608bd33642dc64 => 121
	i64 15076659072870671916, ; 247: System.ObjectModel.dll => 0xd13b0d8c1620662c => 127
	i64 15111608613780139878, ; 248: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 249: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 110
	i64 15133485256822086103, ; 250: System.Linq.dll => 0xd204f0a9127dd9d7 => 113
	i64 15203009853192377507, ; 251: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 252: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 46
	i64 15370334346939861994, ; 253: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 68
	i64 15391712275433856905, ; 254: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 48
	i64 15527772828719725935, ; 255: System.Console => 0xd77dbb1e38cd3d6f => 103
	i64 15536481058354060254, ; 256: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15557562860424774966, ; 257: System.Net.Sockets => 0xd7e790fe7a6dc536 => 122
	i64 15582737692548360875, ; 258: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 76
	i64 15609085926864131306, ; 259: System.dll => 0xd89e9cf3334914ea => 152
	i64 15661133872274321916, ; 260: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 150
	i64 15783653065526199428, ; 261: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15847085070278954535, ; 262: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 145
	i64 15928521404965645318, ; 263: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 54
	i64 16016117550473076443, ; 264: Entities => 0xde44ae0e1cd8dedb => 91
	i64 16018552496348375205, ; 265: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 118
	i64 16056281320585338352, ; 266: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16154507427712707110, ; 267: System => 0xe03056ea4e39aa26 => 152
	i64 16156430004425724367, ; 268: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xe0372b7d144211cf => 39
	i64 16219561732052121626, ; 269: System.Net.Security => 0xe1177575db7c781a => 121
	i64 16288847719894691167, ; 270: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 271: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 51
	i64 16343918515847859304, ; 272: Microsoft.Extensions.Features.dll => 0xe2d1434bdf0a8c68 => 49
	i64 16454459195343277943, ; 273: System.Net.NetworkInformation => 0xe459fb756d988f77 => 118
	i64 16605226748660468415, ; 274: Microsoft.AspNetCore.SignalR.Common => 0xe6719dbfe8b8cabf => 43
	i64 16648892297579399389, ; 275: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 37
	i64 16649148416072044166, ; 276: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 59
	i64 16677317093839702854, ; 277: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 81
	i64 16803648858859583026, ; 278: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16856067890322379635, ; 279: System.Data.Common.dll => 0xe9ecc87060889373 => 104
	i64 16890310621557459193, ; 280: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 144
	i64 16942731696432749159, ; 281: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 282: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 79
	i64 17008137082415910100, ; 283: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 96
	i64 17031351772568316411, ; 284: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 78
	i64 17062143951396181894, ; 285: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 100
	i64 17118171214553292978, ; 286: System.Threading.Channels => 0xed8ff6060fc420b2 => 145
	i64 17187273293601214786, ; 287: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 99
	i64 17203614576212522419, ; 288: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17230721278011714856, ; 289: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 129
	i64 17260702271250283638, ; 290: System.Data.Common => 0xef8a5543bba6bc76 => 104
	i64 17310278548634113468, ; 291: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17338386382517543202, ; 292: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 124
	i64 17342750010158924305, ; 293: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17509662556995089465, ; 294: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 125
	i64 17514990004910432069, ; 295: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17571845317586269034, ; 296: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 38
	i64 17623389608345532001, ; 297: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17636563193350668017, ; 298: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 40
	i64 17704177640604968747, ; 299: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 77
	i64 17710060891934109755, ; 300: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 75
	i64 17712670374920797664, ; 301: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 134
	i64 17777860260071588075, ; 302: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 136
	i64 17827813215687577648, ; 303: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17832788379838504415, ; 304: Backgammon.Client.dll => 0xf77aca8c9efcdddf => 90
	i64 17942426894774770628, ; 305: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 18025913125965088385, ; 306: System.Threading => 0xfa28e87b91334681 => 147
	i64 18121036031235206392, ; 307: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 78
	i64 18146411883821974900, ; 308: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 109
	i64 18245806341561545090, ; 309: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 94
	i64 18305135509493619199, ; 310: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 80
	i64 18324163916253801303, ; 311: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 312: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786 ; 313: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [314 x i32] [
	i32 53, ; 0
	i32 156, ; 1
	i32 58, ; 2
	i32 91, ; 3
	i32 112, ; 4
	i32 66, ; 5
	i32 83, ; 6
	i32 133, ; 7
	i32 92, ; 8
	i32 146, ; 9
	i32 102, ; 10
	i32 12, ; 11
	i32 71, ; 12
	i32 133, ; 13
	i32 87, ; 14
	i32 108, ; 15
	i32 79, ; 16
	i32 119, ; 17
	i32 55, ; 18
	i32 155, ; 19
	i32 146, ; 20
	i32 64, ; 21
	i32 76, ; 22
	i32 60, ; 23
	i32 116, ; 24
	i32 114, ; 25
	i32 128, ; 26
	i32 63, ; 27
	i32 6, ; 28
	i32 83, ; 29
	i32 107, ; 30
	i32 28, ; 31
	i32 56, ; 32
	i32 37, ; 33
	i32 75, ; 34
	i32 107, ; 35
	i32 60, ; 36
	i32 71, ; 37
	i32 94, ; 38
	i32 74, ; 39
	i32 142, ; 40
	i32 67, ; 41
	i32 139, ; 42
	i32 62, ; 43
	i32 27, ; 44
	i32 117, ; 45
	i32 47, ; 46
	i32 2, ; 47
	i32 125, ; 48
	i32 7, ; 49
	i32 87, ; 50
	i32 73, ; 51
	i32 126, ; 52
	i32 136, ; 53
	i32 122, ; 54
	i32 89, ; 55
	i32 58, ; 56
	i32 45, ; 57
	i32 84, ; 58
	i32 153, ; 59
	i32 22, ; 60
	i32 139, ; 61
	i32 46, ; 62
	i32 150, ; 63
	i32 45, ; 64
	i32 82, ; 65
	i32 43, ; 66
	i32 50, ; 67
	i32 56, ; 68
	i32 120, ; 69
	i32 114, ; 70
	i32 138, ; 71
	i32 3, ; 72
	i32 130, ; 73
	i32 54, ; 74
	i32 33, ; 75
	i32 102, ; 76
	i32 112, ; 77
	i32 101, ; 78
	i32 28, ; 79
	i32 148, ; 80
	i32 99, ; 81
	i32 62, ; 82
	i32 84, ; 83
	i32 108, ; 84
	i32 117, ; 85
	i32 135, ; 86
	i32 18, ; 87
	i32 26, ; 88
	i32 97, ; 89
	i32 97, ; 90
	i32 135, ; 91
	i32 26, ; 92
	i32 29, ; 93
	i32 110, ; 94
	i32 140, ; 95
	i32 86, ; 96
	i32 92, ; 97
	i32 109, ; 98
	i32 40, ; 99
	i32 41, ; 100
	i32 23, ; 101
	i32 143, ; 102
	i32 131, ; 103
	i32 6, ; 104
	i32 34, ; 105
	i32 74, ; 106
	i32 7, ; 107
	i32 11, ; 108
	i32 70, ; 109
	i32 52, ; 110
	i32 19, ; 111
	i32 38, ; 112
	i32 106, ; 113
	i32 151, ; 114
	i32 149, ; 115
	i32 126, ; 116
	i32 44, ; 117
	i32 129, ; 118
	i32 113, ; 119
	i32 101, ; 120
	i32 149, ; 121
	i32 127, ; 122
	i32 115, ; 123
	i32 116, ; 124
	i32 153, ; 125
	i32 93, ; 126
	i32 88, ; 127
	i32 14, ; 128
	i32 64, ; 129
	i32 25, ; 130
	i32 98, ; 131
	i32 73, ; 132
	i32 105, ; 133
	i32 16, ; 134
	i32 154, ; 135
	i32 98, ; 136
	i32 44, ; 137
	i32 59, ; 138
	i32 140, ; 139
	i32 31, ; 140
	i32 81, ; 141
	i32 132, ; 142
	i32 95, ; 143
	i32 128, ; 144
	i32 35, ; 145
	i32 154, ; 146
	i32 93, ; 147
	i32 80, ; 148
	i32 21, ; 149
	i32 105, ; 150
	i32 151, ; 151
	i32 31, ; 152
	i32 86, ; 153
	i32 63, ; 154
	i32 5, ; 155
	i32 29, ; 156
	i32 144, ; 157
	i32 67, ; 158
	i32 96, ; 159
	i32 1, ; 160
	i32 156, ; 161
	i32 57, ; 162
	i32 115, ; 163
	i32 130, ; 164
	i32 124, ; 165
	i32 55, ; 166
	i32 3, ; 167
	i32 19, ; 168
	i32 49, ; 169
	i32 70, ; 170
	i32 132, ; 171
	i32 131, ; 172
	i32 89, ; 173
	i32 68, ; 174
	i32 1, ; 175
	i32 33, ; 176
	i32 119, ; 177
	i32 35, ; 178
	i32 51, ; 179
	i32 57, ; 180
	i32 12, ; 181
	i32 27, ; 182
	i32 8, ; 183
	i32 85, ; 184
	i32 15, ; 185
	i32 52, ; 186
	i32 90, ; 187
	i32 69, ; 188
	i32 134, ; 189
	i32 61, ; 190
	i32 13, ; 191
	i32 85, ; 192
	i32 50, ; 193
	i32 30, ; 194
	i32 143, ; 195
	i32 138, ; 196
	i32 95, ; 197
	i32 61, ; 198
	i32 36, ; 199
	i32 72, ; 200
	i32 77, ; 201
	i32 34, ; 202
	i32 106, ; 203
	i32 65, ; 204
	i32 111, ; 205
	i32 66, ; 206
	i32 141, ; 207
	i32 53, ; 208
	i32 123, ; 209
	i32 0, ; 210
	i32 21, ; 211
	i32 137, ; 212
	i32 39, ; 213
	i32 155, ; 214
	i32 9, ; 215
	i32 42, ; 216
	i32 88, ; 217
	i32 30, ; 218
	i32 82, ; 219
	i32 100, ; 220
	i32 103, ; 221
	i32 72, ; 222
	i32 65, ; 223
	i32 147, ; 224
	i32 141, ; 225
	i32 23, ; 226
	i32 120, ; 227
	i32 24, ; 228
	i32 32, ; 229
	i32 142, ; 230
	i32 36, ; 231
	i32 41, ; 232
	i32 2, ; 233
	i32 137, ; 234
	i32 47, ; 235
	i32 148, ; 236
	i32 16, ; 237
	i32 15, ; 238
	i32 32, ; 239
	i32 42, ; 240
	i32 69, ; 241
	i32 0, ; 242
	i32 48, ; 243
	i32 123, ; 244
	i32 111, ; 245
	i32 121, ; 246
	i32 127, ; 247
	i32 17, ; 248
	i32 110, ; 249
	i32 113, ; 250
	i32 22, ; 251
	i32 46, ; 252
	i32 68, ; 253
	i32 48, ; 254
	i32 103, ; 255
	i32 4, ; 256
	i32 122, ; 257
	i32 76, ; 258
	i32 152, ; 259
	i32 150, ; 260
	i32 5, ; 261
	i32 145, ; 262
	i32 54, ; 263
	i32 91, ; 264
	i32 118, ; 265
	i32 24, ; 266
	i32 152, ; 267
	i32 39, ; 268
	i32 121, ; 269
	i32 18, ; 270
	i32 51, ; 271
	i32 49, ; 272
	i32 118, ; 273
	i32 43, ; 274
	i32 37, ; 275
	i32 59, ; 276
	i32 81, ; 277
	i32 17, ; 278
	i32 104, ; 279
	i32 144, ; 280
	i32 25, ; 281
	i32 79, ; 282
	i32 96, ; 283
	i32 78, ; 284
	i32 100, ; 285
	i32 145, ; 286
	i32 99, ; 287
	i32 20, ; 288
	i32 129, ; 289
	i32 104, ; 290
	i32 10, ; 291
	i32 124, ; 292
	i32 10, ; 293
	i32 125, ; 294
	i32 8, ; 295
	i32 38, ; 296
	i32 20, ; 297
	i32 40, ; 298
	i32 77, ; 299
	i32 75, ; 300
	i32 134, ; 301
	i32 136, ; 302
	i32 11, ; 303
	i32 90, ; 304
	i32 4, ; 305
	i32 147, ; 306
	i32 78, ; 307
	i32 109, ; 308
	i32 94, ; 309
	i32 80, ; 310
	i32 14, ; 311
	i32 13, ; 312
	i32 9 ; 313
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
