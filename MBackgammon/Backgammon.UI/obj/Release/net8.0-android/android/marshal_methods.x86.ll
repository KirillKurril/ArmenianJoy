; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [157 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [314 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 118
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 117
	i32 38948123, ; 2: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 60
	i32 39485524, ; 4: System.Net.WebSockets.dll => 0x25a8054 => 125
	i32 42244203, ; 5: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 6: System.Threading.Thread => 0x28aa24d => 146
	i32 67008169, ; 7: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 8: Microsoft.Maui.Graphics.dll => 0x44bb714 => 59
	i32 83839681, ; 9: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 10: System.Runtime.InteropServices => 0x6ffddbc => 134
	i32 122350210, ; 11: System.Threading.Channels.dll => 0x74aea82 => 145
	i32 136584136, ; 12: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 13: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 142721839, ; 14: System.Net.WebHeaderCollection => 0x881c32f => 123
	i32 159306688, ; 15: System.ComponentModel.Annotations => 0x97ed3c0 => 99
	i32 165246403, ; 16: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 66
	i32 182336117, ; 17: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 84
	i32 205061960, ; 18: System.ComponentModel => 0xc38ff48 => 102
	i32 221063263, ; 19: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 39
	i32 230752869, ; 20: Microsoft.CSharp.dll => 0xdc10265 => 93
	i32 246610117, ; 21: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 132
	i32 317674968, ; 22: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 23: Xamarin.AndroidX.Activity.dll => 0x13031348 => 62
	i32 321963286, ; 24: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 25: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 73
	i32 348048101, ; 26: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 40
	i32 379916513, ; 27: System.Threading.Thread.dll => 0x16a510e1 => 146
	i32 385762202, ; 28: System.Memory.dll => 0x16fe439a => 114
	i32 395744057, ; 29: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 30: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 31: System.Collections => 0x1a61054f => 98
	i32 450948140, ; 32: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 72
	i32 456227837, ; 33: System.Web.HttpUtility.dll => 0x1b317bfd => 148
	i32 458494020, ; 34: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 43
	i32 459347974, ; 35: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 138
	i32 469710990, ; 36: System.dll => 0x1bff388e => 152
	i32 489220957, ; 37: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 38: System.ObjectModel => 0x1dbae811 => 127
	i32 513247710, ; 39: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 53
	i32 538707440, ; 40: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 41: Microsoft.Extensions.Logging => 0x20216150 => 50
	i32 597488923, ; 42: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 606344487, ; 43: Backgammon.Client => 0x24241527 => 90
	i32 627609679, ; 44: Xamarin.AndroidX.CustomView => 0x2568904f => 70
	i32 627931235, ; 45: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 46: System.Text.Encodings.Web.dll => 0x27787397 => 142
	i32 665725320, ; 47: Backgammon.UI => 0x27ae2988 => 92
	i32 672442732, ; 48: System.Collections.Concurrent => 0x2814a96c => 94
	i32 683518922, ; 49: System.Net.Security => 0x28bdabca => 121
	i32 690569205, ; 50: System.Xml.Linq.dll => 0x29293ff5 => 149
	i32 722857257, ; 51: System.Runtime.Loader.dll => 0x2b15ed29 => 135
	i32 759454413, ; 52: System.Net.Requests => 0x2d445acd => 120
	i32 775507847, ; 53: System.IO.Compression => 0x2e394f87 => 111
	i32 777317022, ; 54: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 55: Microsoft.Extensions.Options => 0x2f0980eb => 52
	i32 804715423, ; 56: System.Data.Common => 0x2ff6fb9f => 104
	i32 823281589, ; 57: System.Private.Uri.dll => 0x311247b5 => 128
	i32 830298997, ; 58: System.IO.Compression.Brotli => 0x317d5b75 => 110
	i32 832711436, ; 59: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 44
	i32 869139383, ; 60: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 61: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 62: System.ComponentModel.Primitives.dll => 0x35e25008 => 100
	i32 918734561, ; 63: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 949505292, ; 64: Backgammon.Client.dll => 0x38984d0c => 90
	i32 955402788, ; 65: Newtonsoft.Json => 0x38f24a24 => 60
	i32 961460050, ; 66: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 67: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 73
	i32 975874589, ; 68: System.Xml.XDocument => 0x3a2aaa1d => 151
	i32 990727110, ; 69: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 70: System.Collections.dll => 0x3b2c715c => 98
	i32 1012816738, ; 71: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 83
	i32 1019214401, ; 72: System.Drawing => 0x3cbffa41 => 108
	i32 1028951442, ; 73: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 48
	i32 1035644815, ; 74: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 63
	i32 1036536393, ; 75: System.Drawing.Primitives.dll => 0x3dc84a49 => 107
	i32 1043950537, ; 76: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 77: System.Linq.Expressions.dll => 0x3e444eb4 => 112
	i32 1052210849, ; 78: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 75
	i32 1058641855, ; 79: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 40
	i32 1082857460, ; 80: System.ComponentModel.TypeConverter => 0x408b17f4 => 101
	i32 1084122840, ; 81: Xamarin.Kotlin.StdLib => 0x409e66d8 => 88
	i32 1098259244, ; 82: System => 0x41761b2c => 152
	i32 1108272742, ; 83: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 84: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 85: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 86: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 87: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 80
	i32 1214827643, ; 88: CommunityToolkit.Mvvm => 0x4868cc7b => 37
	i32 1233093933, ; 89: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 42
	i32 1260983243, ; 90: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 91: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 71
	i32 1308624726, ; 92: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 93: System.Linq => 0x4eed2679 => 113
	i32 1336711579, ; 94: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 95: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 96: Xamarin.AndroidX.SavedState => 0x52114ed3 => 83
	i32 1406073936, ; 97: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 67
	i32 1408764838, ; 98: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 137
	i32 1414043276, ; 99: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 38
	i32 1430672901, ; 100: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 101: System.Formats.Asn1.dll => 0x568cd628 => 109
	i32 1458022317, ; 102: System.Net.Security.dll => 0x56e7a7ad => 121
	i32 1461004990, ; 103: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 104: System.Collections.Immutable.dll => 0x5718a9ef => 95
	i32 1462112819, ; 105: System.IO.Compression.dll => 0x57261233 => 111
	i32 1469204771, ; 106: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 64
	i32 1470490898, ; 107: Microsoft.Extensions.Primitives => 0x57a5e912 => 53
	i32 1479771757, ; 108: System.Collections.Immutable => 0x5833866d => 95
	i32 1480492111, ; 109: System.IO.Compression.Brotli.dll => 0x583e844f => 110
	i32 1526286932, ; 110: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 111: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 144
	i32 1618516317, ; 112: System.Net.WebSockets.Client.dll => 0x6078995d => 124
	i32 1622152042, ; 113: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 77
	i32 1624863272, ; 114: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 86
	i32 1634654947, ; 115: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 116: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 69
	i32 1639515021, ; 117: System.Net.Http.dll => 0x61b9038d => 115
	i32 1639986890, ; 118: System.Text.RegularExpressions => 0x61c036ca => 144
	i32 1657153582, ; 119: System.Runtime => 0x62c6282e => 139
	i32 1658251792, ; 120: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 87
	i32 1677501392, ; 121: System.Net.Primitives.dll => 0x63fca3d0 => 119
	i32 1678508291, ; 122: System.Net.WebSockets => 0x640c0103 => 125
	i32 1679769178, ; 123: System.Security.Cryptography => 0x641f3e5a => 140
	i32 1729485958, ; 124: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 65
	i32 1743415430, ; 125: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1746115085, ; 126: System.IO.Pipelines.dll => 0x68139a0d => 61
	i32 1763938596, ; 127: System.Diagnostics.TraceSource.dll => 0x69239124 => 106
	i32 1766324549, ; 128: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 84
	i32 1770582343, ; 129: Microsoft.Extensions.Logging.dll => 0x6988f147 => 50
	i32 1780572499, ; 130: Mono.Android.Runtime.dll => 0x6a216153 => 155
	i32 1782862114, ; 131: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 132: Xamarin.AndroidX.Fragment => 0x6a96652d => 72
	i32 1793755602, ; 133: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 134: Xamarin.AndroidX.Loader => 0x6bcd3296 => 77
	i32 1813058853, ; 135: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 88
	i32 1813201214, ; 136: Xamarin.Google.Android.Material => 0x6c13413e => 87
	i32 1818569960, ; 137: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 81
	i32 1824175904, ; 138: System.Text.Encoding.Extensions => 0x6cbab720 => 141
	i32 1824722060, ; 139: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 137
	i32 1828688058, ; 140: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 51
	i32 1853025655, ; 141: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 142: System.Linq.Expressions => 0x6ec71a65 => 112
	i32 1870277092, ; 143: System.Reflection.Primitives => 0x6f7a29e4 => 133
	i32 1875935024, ; 144: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 145: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 146: System.Collections.NonGeneric.dll => 0x71dc7c8b => 96
	i32 1939592360, ; 147: System.Private.Xml.Linq => 0x739bd4a8 => 129
	i32 1945717188, ; 148: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 42
	i32 1953182387, ; 149: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1967334205, ; 150: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 43
	i32 1968388702, ; 151: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 45
	i32 2003115576, ; 152: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 153: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 75
	i32 2045470958, ; 154: System.Private.Xml => 0x79eb68ee => 130
	i32 2055257422, ; 155: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 74
	i32 2066184531, ; 156: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 157: System.Diagnostics.TraceSource => 0x7b6f419e => 106
	i32 2079903147, ; 158: System.Runtime.dll => 0x7bf8cdab => 139
	i32 2090596640, ; 159: System.Numerics.Vectors => 0x7c9bf920 => 126
	i32 2127167465, ; 160: System.Console => 0x7ec9ffe9 => 103
	i32 2142473426, ; 161: System.Collections.Specialized => 0x7fb38cd2 => 97
	i32 2159891885, ; 162: Microsoft.Maui => 0x80bd55ad => 57
	i32 2169148018, ; 163: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 164: Microsoft.Extensions.Options.dll => 0x820d22b3 => 52
	i32 2192057212, ; 165: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 51
	i32 2193016926, ; 166: System.ObjectModel.dll => 0x82b6c85e => 127
	i32 2201107256, ; 167: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 89
	i32 2201231467, ; 168: System.Net.Http => 0x8334206b => 115
	i32 2207618523, ; 169: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2229158877, ; 170: Microsoft.Extensions.Features.dll => 0x84de43dd => 49
	i32 2266799131, ; 171: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 46
	i32 2279755925, ; 172: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 82
	i32 2295906218, ; 173: System.Net.Sockets => 0x88d8bfaa => 122
	i32 2298471582, ; 174: System.Net.Mail => 0x88ffe49e => 116
	i32 2303942373, ; 175: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 176: System.Private.CoreLib.dll => 0x896b7878 => 153
	i32 2319144366, ; 177: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 41
	i32 2353062107, ; 178: System.Net.Primitives => 0x8c40e0db => 119
	i32 2366048013, ; 179: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 180: System.Xml.ReaderWriter.dll => 0x8d24e767 => 150
	i32 2371007202, ; 181: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 45
	i32 2395872292, ; 182: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 183: System.Web.HttpUtility => 0x8f24faee => 148
	i32 2427813419, ; 184: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 185: System.Console.dll => 0x912896e5 => 103
	i32 2458678730, ; 186: System.Net.Sockets.dll => 0x928c75ca => 122
	i32 2475788418, ; 187: Java.Interop.dll => 0x93918882 => 154
	i32 2480646305, ; 188: Microsoft.Maui.Controls => 0x93dba8a1 => 55
	i32 2503351294, ; 189: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2538310050, ; 190: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 132
	i32 2550873716, ; 191: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 192: Microsoft.CSharp => 0x98ba5a04 => 93
	i32 2570120770, ; 193: System.Text.Encodings.Web => 0x9930ee42 => 142
	i32 2576534780, ; 194: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 195: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 141
	i32 2593496499, ; 196: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 197: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 89
	i32 2617129537, ; 198: System.Private.Xml.dll => 0x9bfe3a41 => 130
	i32 2620871830, ; 199: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 69
	i32 2626831493, ; 200: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2629983731, ; 201: Entities => 0x9cc25df3 => 91
	i32 2637500010, ; 202: Microsoft.Extensions.Features => 0x9d350e6a => 49
	i32 2663698177, ; 203: System.Runtime.Loader => 0x9ec4cf01 => 135
	i32 2664396074, ; 204: System.Xml.XDocument.dll => 0x9ecf752a => 151
	i32 2665622720, ; 205: System.Drawing.Primitives => 0x9ee22cc0 => 107
	i32 2676780864, ; 206: System.Data.Common.dll => 0x9f8c6f40 => 104
	i32 2724373263, ; 207: System.Runtime.Numerics.dll => 0xa262a30f => 136
	i32 2732626843, ; 208: Xamarin.AndroidX.Activity => 0xa2e0939b => 62
	i32 2735172069, ; 209: System.Threading.Channels => 0xa30769e5 => 145
	i32 2737747696, ; 210: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 64
	i32 2740698338, ; 211: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 212: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 213: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 56
	i32 2764765095, ; 214: Microsoft.Maui.dll => 0xa4caf7a7 => 57
	i32 2778768386, ; 215: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 85
	i32 2785988530, ; 216: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 217: Microsoft.Maui.Graphics => 0xa7008e0b => 59
	i32 2810250172, ; 218: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 67
	i32 2853208004, ; 219: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 85
	i32 2861189240, ; 220: Microsoft.Maui.Essentials => 0xaa8a4878 => 58
	i32 2868488919, ; 221: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2875347124, ; 222: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 39
	i32 2905397742, ; 223: Entities.dll => 0xad2cd9ee => 91
	i32 2909740682, ; 224: System.Private.CoreLib => 0xad6f1e8a => 153
	i32 2916838712, ; 225: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 86
	i32 2919462931, ; 226: System.Numerics.Vectors.dll => 0xae037813 => 126
	i32 2959614098, ; 227: System.ComponentModel.dll => 0xb0682092 => 102
	i32 2978675010, ; 228: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 71
	i32 3038032645, ; 229: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 230: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 231: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 78
	i32 3059408633, ; 232: Mono.Android.Runtime => 0xb65adef9 => 155
	i32 3059793426, ; 233: System.ComponentModel.Primitives => 0xb660be12 => 100
	i32 3103600923, ; 234: System.Formats.Asn1 => 0xb8fd311b => 109
	i32 3159123045, ; 235: System.Reflection.Primitives.dll => 0xbc4c6465 => 133
	i32 3178803400, ; 236: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 79
	i32 3220365878, ; 237: System.Threading => 0xbff2e236 => 147
	i32 3258312781, ; 238: Xamarin.AndroidX.CardView => 0xc235e84d => 65
	i32 3280506390, ; 239: System.ComponentModel.Annotations.dll => 0xc3888e16 => 99
	i32 3305363605, ; 240: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 241: System.Net.Requests.dll => 0xc5b097e4 => 120
	i32 3317135071, ; 242: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 70
	i32 3346324047, ; 243: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 80
	i32 3357674450, ; 244: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 245: System.Text.Json => 0xc82afec1 => 143
	i32 3362522851, ; 246: Xamarin.AndroidX.Core => 0xc86c06e3 => 68
	i32 3366347497, ; 247: Java.Interop => 0xc8a662e9 => 154
	i32 3374999561, ; 248: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 82
	i32 3381016424, ; 249: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 250: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 47
	i32 3452344032, ; 251: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 54
	i32 3458724246, ; 252: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3466904072, ; 253: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 41
	i32 3471940407, ; 254: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 101
	i32 3476120550, ; 255: Mono.Android => 0xcf3163e6 => 156
	i32 3484440000, ; 256: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 257: System.Text.Json.dll => 0xcfbaacae => 143
	i32 3509114376, ; 258: System.Xml.Linq => 0xd128d608 => 149
	i32 3580758918, ; 259: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 260: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3598340787, ; 261: System.Net.WebSockets.Client => 0xd67a52b3 => 124
	i32 3608519521, ; 262: System.Linq.dll => 0xd715a361 => 113
	i32 3641597786, ; 263: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 74
	i32 3643446276, ; 264: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 265: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 79
	i32 3657292374, ; 266: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 46
	i32 3660523487, ; 267: System.Net.NetworkInformation => 0xda2f27df => 118
	i32 3672681054, ; 268: Mono.Android.dll => 0xdae8aa5e => 156
	i32 3691870036, ; 269: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 44
	i32 3724971120, ; 270: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 78
	i32 3732100267, ; 271: System.Net.NameResolution => 0xde7354ab => 117
	i32 3748608112, ; 272: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 105
	i32 3751619990, ; 273: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3786282454, ; 274: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 66
	i32 3787005001, ; 275: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 38
	i32 3792276235, ; 276: System.Collections.NonGeneric => 0xe2098b0b => 96
	i32 3800979733, ; 277: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 54
	i32 3802395368, ; 278: System.Collections.Specialized.dll => 0xe2a3f2e8 => 97
	i32 3817368567, ; 279: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3823082795, ; 280: System.Security.Cryptography.dll => 0xe3df9d2b => 140
	i32 3841636137, ; 281: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 48
	i32 3844307129, ; 282: System.Net.Mail.dll => 0xe52378b9 => 116
	i32 3849253459, ; 283: System.Runtime.InteropServices.dll => 0xe56ef253 => 134
	i32 3885497537, ; 284: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 123
	i32 3896106733, ; 285: System.Collections.Concurrent.dll => 0xe839deed => 94
	i32 3896760992, ; 286: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 68
	i32 3920221145, ; 287: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 288: System.Xml.ReaderWriter => 0xea213423 => 150
	i32 3931092270, ; 289: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 81
	i32 3955647286, ; 290: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 63
	i32 4023392905, ; 291: System.IO.Pipelines => 0xefd01a89 => 61
	i32 4025784931, ; 292: System.Memory => 0xeff49a63 => 114
	i32 4046471985, ; 293: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 56
	i32 4054681211, ; 294: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 131
	i32 4068434129, ; 295: System.Private.Xml.Linq.dll => 0xf27f60d1 => 129
	i32 4073602200, ; 296: System.Threading.dll => 0xf2ce3c98 => 147
	i32 4091086043, ; 297: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 298: Microsoft.Maui.Essentials.dll => 0xf40add04 => 58
	i32 4099507663, ; 299: System.Drawing.dll => 0xf45985cf => 108
	i32 4100113165, ; 300: System.Private.Uri => 0xf462c30d => 128
	i32 4103439459, ; 301: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 302: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 47
	i32 4147896353, ; 303: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 131
	i32 4150914736, ; 304: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 305: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 138
	i32 4182413190, ; 306: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 76
	i32 4213026141, ; 307: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 105
	i32 4249188766, ; 308: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 309: Microsoft.Maui.Controls.dll => 0xfea12dee => 55
	i32 4274623895, ; 310: CommunityToolkit.Mvvm.dll => 0xfec99597 => 37
	i32 4274976490, ; 311: System.Runtime.Numerics => 0xfecef6ea => 136
	i32 4287112205, ; 312: Backgammon.UI.dll => 0xff88240d => 92
	i32 4292120959 ; 313: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 76
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [314 x i32] [
	i32 118, ; 0
	i32 117, ; 1
	i32 0, ; 2
	i32 60, ; 3
	i32 125, ; 4
	i32 9, ; 5
	i32 146, ; 6
	i32 33, ; 7
	i32 59, ; 8
	i32 17, ; 9
	i32 134, ; 10
	i32 145, ; 11
	i32 32, ; 12
	i32 25, ; 13
	i32 123, ; 14
	i32 99, ; 15
	i32 66, ; 16
	i32 84, ; 17
	i32 102, ; 18
	i32 39, ; 19
	i32 93, ; 20
	i32 132, ; 21
	i32 30, ; 22
	i32 62, ; 23
	i32 8, ; 24
	i32 73, ; 25
	i32 40, ; 26
	i32 146, ; 27
	i32 114, ; 28
	i32 34, ; 29
	i32 28, ; 30
	i32 98, ; 31
	i32 72, ; 32
	i32 148, ; 33
	i32 43, ; 34
	i32 138, ; 35
	i32 152, ; 36
	i32 6, ; 37
	i32 127, ; 38
	i32 53, ; 39
	i32 27, ; 40
	i32 50, ; 41
	i32 35, ; 42
	i32 90, ; 43
	i32 70, ; 44
	i32 19, ; 45
	i32 142, ; 46
	i32 92, ; 47
	i32 94, ; 48
	i32 121, ; 49
	i32 149, ; 50
	i32 135, ; 51
	i32 120, ; 52
	i32 111, ; 53
	i32 25, ; 54
	i32 52, ; 55
	i32 104, ; 56
	i32 128, ; 57
	i32 110, ; 58
	i32 44, ; 59
	i32 10, ; 60
	i32 24, ; 61
	i32 100, ; 62
	i32 21, ; 63
	i32 90, ; 64
	i32 60, ; 65
	i32 14, ; 66
	i32 73, ; 67
	i32 151, ; 68
	i32 23, ; 69
	i32 98, ; 70
	i32 83, ; 71
	i32 108, ; 72
	i32 48, ; 73
	i32 63, ; 74
	i32 107, ; 75
	i32 4, ; 76
	i32 112, ; 77
	i32 75, ; 78
	i32 40, ; 79
	i32 101, ; 80
	i32 88, ; 81
	i32 152, ; 82
	i32 26, ; 83
	i32 20, ; 84
	i32 16, ; 85
	i32 22, ; 86
	i32 80, ; 87
	i32 37, ; 88
	i32 42, ; 89
	i32 2, ; 90
	i32 71, ; 91
	i32 11, ; 92
	i32 113, ; 93
	i32 31, ; 94
	i32 32, ; 95
	i32 83, ; 96
	i32 67, ; 97
	i32 137, ; 98
	i32 38, ; 99
	i32 0, ; 100
	i32 109, ; 101
	i32 121, ; 102
	i32 6, ; 103
	i32 95, ; 104
	i32 111, ; 105
	i32 64, ; 106
	i32 53, ; 107
	i32 95, ; 108
	i32 110, ; 109
	i32 30, ; 110
	i32 144, ; 111
	i32 124, ; 112
	i32 77, ; 113
	i32 86, ; 114
	i32 36, ; 115
	i32 69, ; 116
	i32 115, ; 117
	i32 144, ; 118
	i32 139, ; 119
	i32 87, ; 120
	i32 119, ; 121
	i32 125, ; 122
	i32 140, ; 123
	i32 65, ; 124
	i32 1, ; 125
	i32 61, ; 126
	i32 106, ; 127
	i32 84, ; 128
	i32 50, ; 129
	i32 155, ; 130
	i32 17, ; 131
	i32 72, ; 132
	i32 9, ; 133
	i32 77, ; 134
	i32 88, ; 135
	i32 87, ; 136
	i32 81, ; 137
	i32 141, ; 138
	i32 137, ; 139
	i32 51, ; 140
	i32 26, ; 141
	i32 112, ; 142
	i32 133, ; 143
	i32 8, ; 144
	i32 2, ; 145
	i32 96, ; 146
	i32 129, ; 147
	i32 42, ; 148
	i32 13, ; 149
	i32 43, ; 150
	i32 45, ; 151
	i32 5, ; 152
	i32 75, ; 153
	i32 130, ; 154
	i32 74, ; 155
	i32 4, ; 156
	i32 106, ; 157
	i32 139, ; 158
	i32 126, ; 159
	i32 103, ; 160
	i32 97, ; 161
	i32 57, ; 162
	i32 12, ; 163
	i32 52, ; 164
	i32 51, ; 165
	i32 127, ; 166
	i32 89, ; 167
	i32 115, ; 168
	i32 14, ; 169
	i32 49, ; 170
	i32 46, ; 171
	i32 82, ; 172
	i32 122, ; 173
	i32 116, ; 174
	i32 18, ; 175
	i32 153, ; 176
	i32 41, ; 177
	i32 119, ; 178
	i32 12, ; 179
	i32 150, ; 180
	i32 45, ; 181
	i32 13, ; 182
	i32 148, ; 183
	i32 10, ; 184
	i32 103, ; 185
	i32 122, ; 186
	i32 154, ; 187
	i32 55, ; 188
	i32 16, ; 189
	i32 132, ; 190
	i32 11, ; 191
	i32 93, ; 192
	i32 142, ; 193
	i32 15, ; 194
	i32 141, ; 195
	i32 20, ; 196
	i32 89, ; 197
	i32 130, ; 198
	i32 69, ; 199
	i32 15, ; 200
	i32 91, ; 201
	i32 49, ; 202
	i32 135, ; 203
	i32 151, ; 204
	i32 107, ; 205
	i32 104, ; 206
	i32 136, ; 207
	i32 62, ; 208
	i32 145, ; 209
	i32 64, ; 210
	i32 1, ; 211
	i32 21, ; 212
	i32 56, ; 213
	i32 57, ; 214
	i32 85, ; 215
	i32 27, ; 216
	i32 59, ; 217
	i32 67, ; 218
	i32 85, ; 219
	i32 58, ; 220
	i32 36, ; 221
	i32 39, ; 222
	i32 91, ; 223
	i32 153, ; 224
	i32 86, ; 225
	i32 126, ; 226
	i32 102, ; 227
	i32 71, ; 228
	i32 34, ; 229
	i32 7, ; 230
	i32 78, ; 231
	i32 155, ; 232
	i32 100, ; 233
	i32 109, ; 234
	i32 133, ; 235
	i32 79, ; 236
	i32 147, ; 237
	i32 65, ; 238
	i32 99, ; 239
	i32 7, ; 240
	i32 120, ; 241
	i32 70, ; 242
	i32 80, ; 243
	i32 24, ; 244
	i32 143, ; 245
	i32 68, ; 246
	i32 154, ; 247
	i32 82, ; 248
	i32 3, ; 249
	i32 47, ; 250
	i32 54, ; 251
	i32 22, ; 252
	i32 41, ; 253
	i32 101, ; 254
	i32 156, ; 255
	i32 23, ; 256
	i32 143, ; 257
	i32 149, ; 258
	i32 31, ; 259
	i32 33, ; 260
	i32 124, ; 261
	i32 113, ; 262
	i32 74, ; 263
	i32 28, ; 264
	i32 79, ; 265
	i32 46, ; 266
	i32 118, ; 267
	i32 156, ; 268
	i32 44, ; 269
	i32 78, ; 270
	i32 117, ; 271
	i32 105, ; 272
	i32 3, ; 273
	i32 66, ; 274
	i32 38, ; 275
	i32 96, ; 276
	i32 54, ; 277
	i32 97, ; 278
	i32 35, ; 279
	i32 140, ; 280
	i32 48, ; 281
	i32 116, ; 282
	i32 134, ; 283
	i32 123, ; 284
	i32 94, ; 285
	i32 68, ; 286
	i32 19, ; 287
	i32 150, ; 288
	i32 81, ; 289
	i32 63, ; 290
	i32 61, ; 291
	i32 114, ; 292
	i32 56, ; 293
	i32 131, ; 294
	i32 129, ; 295
	i32 147, ; 296
	i32 5, ; 297
	i32 58, ; 298
	i32 108, ; 299
	i32 128, ; 300
	i32 29, ; 301
	i32 47, ; 302
	i32 131, ; 303
	i32 29, ; 304
	i32 138, ; 305
	i32 76, ; 306
	i32 105, ; 307
	i32 18, ; 308
	i32 55, ; 309
	i32 37, ; 310
	i32 136, ; 311
	i32 92, ; 312
	i32 76 ; 313
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
