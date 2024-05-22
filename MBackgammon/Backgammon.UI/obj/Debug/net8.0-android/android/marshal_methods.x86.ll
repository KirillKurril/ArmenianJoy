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

@assembly_image_cache = dso_local local_unnamed_addr global [322 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [638 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 240
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 274
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 282
	i32 39109920, ; 7: Newtonsoft.Json.dll => 0x254c520 => 197
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 291
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 315
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 196
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 16: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 299
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 258
	i32 117431740, ; 18: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 19: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 258
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 21: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 278
	i32 136584136, ; 22: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 314
	i32 140062828, ; 23: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 307
	i32 142721839, ; 24: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 25: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 26: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 27: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 214
	i32 176265551, ; 28: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 29: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 260
	i32 184328833, ; 30: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 212
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221063263, ; 34: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 175
	i32 230216969, ; 35: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 234
	i32 230752869, ; 36: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 37: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 38: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 39: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 40: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 217
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 236
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 233
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 46: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 312
	i32 318968648, ; 47: Xamarin.AndroidX.Activity.dll => 0x13031348 => 203
	i32 321597661, ; 48: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 49: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 290
	i32 342366114, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 235
	i32 348048101, ; 51: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 176
	i32 360082299, ; 52: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 53: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 54: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 55: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 56: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 57: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 58: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 59: _Microsoft.Android.Resource.Designer => 0x17969339 => 318
	i32 403441872, ; 60: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 61: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 310
	i32 441335492, ; 62: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 218
	i32 442565967, ; 63: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 64: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 231
	i32 451504562, ; 65: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 66: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 458494020, ; 67: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 179
	i32 459347974, ; 68: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 69: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 70: System.dll => 0x1bff388e => 164
	i32 476646585, ; 71: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 233
	i32 486930444, ; 72: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 246
	i32 489220957, ; 73: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 288
	i32 498788369, ; 74: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 190
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 77: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 278
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 79: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 309
	i32 539058512, ; 80: Microsoft.Extensions.Logging => 0x20216150 => 186
	i32 540030774, ; 81: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 82: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 83: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 84: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 85: Jsr305Binding => 0x213954e7 => 271
	i32 569601784, ; 86: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 269
	i32 577335427, ; 87: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 88: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 89: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 606344487, ; 90: Backgammon.Client => 0x24241527 => 316
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 223
	i32 627931235, ; 93: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 301
	i32 639843206, ; 94: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 229
	i32 643868501, ; 95: System.Net => 0x2660a755 => 81
	i32 662205335, ; 96: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 97: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 265
	i32 665725320, ; 98: Backgammon.UI => 0x27ae2988 => 0
	i32 666292255, ; 99: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 210
	i32 672442732, ; 100: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 101: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 102: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 280
	i32 693804605, ; 104: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 105: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 106: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 275
	i32 700358131, ; 107: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 108: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 279
	i32 722857257, ; 109: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 110: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 111: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 112: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 200
	i32 759454413, ; 113: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 114: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 115: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 116: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 307
	i32 789151979, ; 117: Microsoft.Extensions.Options => 0x2f0980eb => 189
	i32 790371945, ; 118: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 224
	i32 804715423, ; 119: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 120: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 238
	i32 823281589, ; 121: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 122: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 123: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 832711436, ; 124: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 180
	i32 834051424, ; 125: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 126: Xamarin.AndroidX.Print => 0x3246f6cd => 251
	i32 869139383, ; 127: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 292
	i32 873119928, ; 128: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 129: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 130: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 131: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 306
	i32 904024072, ; 132: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 133: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 134: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 303
	i32 928116545, ; 135: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 274
	i32 949505292, ; 136: Backgammon.Client.dll => 0x38984d0c => 316
	i32 952186615, ; 137: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 138: Newtonsoft.Json => 0x38f24a24 => 197
	i32 956575887, ; 139: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 279
	i32 961460050, ; 140: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 296
	i32 966729478, ; 141: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 272
	i32 967690846, ; 142: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 235
	i32 975236339, ; 143: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 144: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 145: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 146: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 147: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 305
	i32 992768348, ; 148: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 149: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 150: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 151: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 255
	i32 1019214401, ; 152: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 153: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 184
	i32 1031528504, ; 154: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 273
	i32 1035644815, ; 155: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 208
	i32 1036536393, ; 156: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 157: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 286
	i32 1044663988, ; 158: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 159: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 242
	i32 1058641855, ; 160: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 176
	i32 1067306892, ; 161: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 162: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 163: Xamarin.Kotlin.StdLib => 0x409e66d8 => 276
	i32 1098259244, ; 164: System => 0x41761b2c => 164
	i32 1108272742, ; 165: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 308
	i32 1117529484, ; 166: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 302
	i32 1118262833, ; 167: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 298
	i32 1121599056, ; 168: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 241
	i32 1127624469, ; 169: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 188
	i32 1149092582, ; 170: Xamarin.AndroidX.Window => 0x447dc2e6 => 268
	i32 1168523401, ; 171: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 304
	i32 1170634674, ; 172: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 173: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 264
	i32 1178241025, ; 174: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 249
	i32 1204270330, ; 175: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 210
	i32 1208641965, ; 176: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 177: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1233093933, ; 178: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 178
	i32 1243150071, ; 179: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 269
	i32 1253011324, ; 180: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 181: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 284
	i32 1264511973, ; 182: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 259
	i32 1267360935, ; 183: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 263
	i32 1273260888, ; 184: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 215
	i32 1275534314, ; 185: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 280
	i32 1278448581, ; 186: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 207
	i32 1293217323, ; 187: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 226
	i32 1308624726, ; 188: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 293
	i32 1309188875, ; 189: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 190: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 268
	i32 1324164729, ; 191: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 192: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 193: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 313
	i32 1364015309, ; 194: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 195: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 314
	i32 1376866003, ; 196: Xamarin.AndroidX.SavedState => 0x52114ed3 => 255
	i32 1379779777, ; 197: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 198: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 199: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 219
	i32 1408764838, ; 200: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 201: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1414043276, ; 202: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 174
	i32 1422545099, ; 203: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 204: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 282
	i32 1434145427, ; 205: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 206: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 272
	i32 1439761251, ; 207: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 208: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 209: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 210: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 211: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 212: es\Microsoft.Maui.Controls.resources => 0x57152abe => 288
	i32 1461234159, ; 213: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 214: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 215: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 216: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 209
	i32 1470490898, ; 217: Microsoft.Extensions.Primitives => 0x57a5e912 => 190
	i32 1479771757, ; 218: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 219: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 220: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 221: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 256
	i32 1526286932, ; 222: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 312
	i32 1536373174, ; 223: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 224: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 225: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 226: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 227: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 228: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 229: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 230: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 231: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 225
	i32 1592978981, ; 232: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 233: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 273
	i32 1601112923, ; 234: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 235: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 236: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 237: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 245
	i32 1622358360, ; 238: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 239: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 267
	i32 1635184631, ; 240: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 229
	i32 1636350590, ; 241: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 222
	i32 1639515021, ; 242: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 243: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 244: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 245: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 246: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 261
	i32 1658251792, ; 247: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 270
	i32 1670060433, ; 248: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 217
	i32 1675553242, ; 249: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 250: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 251: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 252: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 253: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 254: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 255: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 277
	i32 1701541528, ; 256: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 257: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 238
	i32 1726116996, ; 258: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 259: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 260: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 213
	i32 1743415430, ; 261: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 283
	i32 1744735666, ; 262: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 263: System.IO.Pipelines.dll => 0x68139a0d => 198
	i32 1746316138, ; 264: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 265: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 266: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 267: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 268: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 269: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 260
	i32 1770582343, ; 270: Microsoft.Extensions.Logging.dll => 0x6988f147 => 186
	i32 1776026572, ; 271: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 272: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 273: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 274: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 299
	i32 1788241197, ; 275: Xamarin.AndroidX.Fragment => 0x6a96652d => 231
	i32 1793755602, ; 276: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 291
	i32 1808609942, ; 277: Xamarin.AndroidX.Loader => 0x6bcd3296 => 245
	i32 1813058853, ; 278: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 276
	i32 1813201214, ; 279: Xamarin.Google.Android.Material => 0x6c13413e => 270
	i32 1818569960, ; 280: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 250
	i32 1818787751, ; 281: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 282: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 283: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 284: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 187
	i32 1847515442, ; 285: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 200
	i32 1853025655, ; 286: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 308
	i32 1858542181, ; 287: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 288: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 289: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 290
	i32 1879696579, ; 290: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 291: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 211
	i32 1888955245, ; 292: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 293: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 294: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 284
	i32 1898237753, ; 295: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 296: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 297: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 298: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1945717188, ; 299: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 178
	i32 1953182387, ; 300: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 295
	i32 1956758971, ; 301: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 302: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 257
	i32 1967334205, ; 303: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 179
	i32 1968388702, ; 304: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 181
	i32 1983156543, ; 305: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 277
	i32 1985761444, ; 306: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 202
	i32 2003115576, ; 307: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 287
	i32 2011961780, ; 308: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 309: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 242
	i32 2031763787, ; 310: Xamarin.Android.Glide => 0x791a414b => 199
	i32 2045470958, ; 311: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 312: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 237
	i32 2060060697, ; 313: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 314: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 286
	i32 2070888862, ; 315: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 316: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 317: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 318: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 319: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 320: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 321: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 322: Microsoft.Maui => 0x80bd55ad => 194
	i32 2169148018, ; 323: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 294
	i32 2181898931, ; 324: Microsoft.Extensions.Options.dll => 0x820d22b3 => 189
	i32 2192057212, ; 325: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 187
	i32 2193016926, ; 326: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 327: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 281
	i32 2201231467, ; 328: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 329: it\Microsoft.Maui.Controls.resources => 0x839595db => 296
	i32 2217644978, ; 330: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 264
	i32 2222056684, ; 331: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2229158877, ; 332: Microsoft.Extensions.Features.dll => 0x84de43dd => 185
	i32 2244775296, ; 333: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 246
	i32 2252106437, ; 334: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 335: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 336: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 337: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 182
	i32 2267999099, ; 338: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 201
	i32 2279755925, ; 339: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 253
	i32 2293034957, ; 340: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 341: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 342: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 343: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 300
	i32 2305521784, ; 344: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 345: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 205
	i32 2319144366, ; 346: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 177
	i32 2320631194, ; 347: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 348: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 349: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 350: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 351: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 294
	i32 2368005991, ; 352: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 353: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 181
	i32 2378619854, ; 354: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 355: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 356: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 295
	i32 2401565422, ; 357: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 358: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 228
	i32 2421380589, ; 359: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 360: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 215
	i32 2427813419, ; 361: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 292
	i32 2435356389, ; 362: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 363: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 364: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 365: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 366: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 367: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 218
	i32 2471841756, ; 368: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 369: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 370: Microsoft.Maui.Controls => 0x93dba8a1 => 192
	i32 2483903535, ; 371: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 372: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 373: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 374: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 375: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 298
	i32 2505896520, ; 376: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 240
	i32 2522472828, ; 377: Xamarin.Android.Glide.dll => 0x9659e17c => 199
	i32 2538310050, ; 378: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 379: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 293
	i32 2562349572, ; 380: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 381: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 382: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 297
	i32 2581783588, ; 383: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 241
	i32 2581819634, ; 384: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 263
	i32 2585220780, ; 385: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 386: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 387: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 388: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 302
	i32 2605712449, ; 389: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 281
	i32 2615233544, ; 390: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 232
	i32 2616218305, ; 391: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 188
	i32 2617129537, ; 392: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 393: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 394: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 222
	i32 2624644809, ; 395: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 227
	i32 2626831493, ; 396: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 297
	i32 2627185994, ; 397: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 398: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2629983731, ; 399: Entities => 0x9cc25df3 => 317
	i32 2633051222, ; 400: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 236
	i32 2637500010, ; 401: Microsoft.Extensions.Features => 0x9d350e6a => 185
	i32 2663391936, ; 402: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 201
	i32 2663698177, ; 403: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 404: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 405: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 406: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 407: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 408: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 409: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 261
	i32 2715334215, ; 410: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 411: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 412: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 413: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 414: Xamarin.AndroidX.Activity => 0xa2e0939b => 203
	i32 2735172069, ; 415: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 416: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 209
	i32 2740698338, ; 417: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 283
	i32 2740948882, ; 418: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 419: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 420: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 303
	i32 2758225723, ; 421: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 193
	i32 2764765095, ; 422: Microsoft.Maui.dll => 0xa4caf7a7 => 194
	i32 2765824710, ; 423: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 424: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 275
	i32 2778768386, ; 425: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 266
	i32 2779977773, ; 426: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 254
	i32 2785988530, ; 427: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 309
	i32 2788224221, ; 428: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 232
	i32 2801831435, ; 429: Microsoft.Maui.Graphics => 0xa7008e0b => 196
	i32 2803228030, ; 430: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 431: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 219
	i32 2819470561, ; 432: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 433: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 434: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 254
	i32 2824502124, ; 435: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 436: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 243
	i32 2849599387, ; 437: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 438: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 266
	i32 2855708567, ; 439: Xamarin.AndroidX.Transition => 0xaa36a797 => 262
	i32 2861098320, ; 440: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 441: Microsoft.Maui.Essentials => 0xaa8a4878 => 195
	i32 2870099610, ; 442: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 204
	i32 2875164099, ; 443: Jsr305Binding.dll => 0xab5f85c3 => 271
	i32 2875220617, ; 444: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2875347124, ; 445: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 175
	i32 2884993177, ; 446: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 230
	i32 2887636118, ; 447: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 448: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 449: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 450: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 451: mscorlib.dll => 0xad2a79b6 => 166
	i32 2905397742, ; 452: Entities.dll => 0xad2cd9ee => 317
	i32 2909740682, ; 453: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 454: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 267
	i32 2919462931, ; 455: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 456: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 206
	i32 2936416060, ; 457: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 458: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 459: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 460: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 461: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 462: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 463: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 226
	i32 2987532451, ; 464: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 257
	i32 2996846495, ; 465: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 239
	i32 3016983068, ; 466: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 259
	i32 3023353419, ; 467: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 468: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 234
	i32 3038032645, ; 469: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 318
	i32 3053864966, ; 470: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 289
	i32 3056245963, ; 471: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 256
	i32 3057625584, ; 472: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 247
	i32 3059408633, ; 473: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 474: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 475: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 476: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 477: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 478: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 479: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 480: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 481: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 482: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 483: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 484: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 485: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 486: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 487: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 248
	i32 3192346100, ; 488: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 489: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 490: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 491: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 492: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 225
	i32 3220365878, ; 493: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 494: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 495: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 496: Xamarin.AndroidX.CardView => 0xc235e84d => 213
	i32 3265493905, ; 497: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 498: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 499: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 500: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 501: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 502: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 503: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 504: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 505: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 289
	i32 3316684772, ; 506: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 507: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 223
	i32 3317144872, ; 508: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 509: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 211
	i32 3345895724, ; 510: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 252
	i32 3346324047, ; 511: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 249
	i32 3357674450, ; 512: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 306
	i32 3358260929, ; 513: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 514: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 204
	i32 3362522851, ; 515: Xamarin.AndroidX.Core => 0xc86c06e3 => 220
	i32 3366347497, ; 516: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 517: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 253
	i32 3381016424, ; 518: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 285
	i32 3395150330, ; 519: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 520: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 521: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 224
	i32 3428513518, ; 522: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 183
	i32 3429136800, ; 523: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 524: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 525: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 227
	i32 3445260447, ; 526: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 527: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 191
	i32 3458724246, ; 528: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 304
	i32 3466904072, ; 529: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 177
	i32 3471940407, ; 530: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 531: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 532: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 305
	i32 3485117614, ; 533: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 534: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 535: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 216
	i32 3509114376, ; 536: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 537: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 538: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 539: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 540: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 541: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 542: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 313
	i32 3592228221, ; 543: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 315
	i32 3597029428, ; 544: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 202
	i32 3598340787, ; 545: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 546: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 547: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 548: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 251
	i32 3633644679, ; 549: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 206
	i32 3638274909, ; 550: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 551: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 237
	i32 3643446276, ; 552: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 310
	i32 3643854240, ; 553: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 248
	i32 3645089577, ; 554: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 555: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 182
	i32 3660523487, ; 556: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 557: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 558: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 212
	i32 3684561358, ; 559: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 216
	i32 3691870036, ; 560: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 180
	i32 3700866549, ; 561: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 562: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 221
	i32 3716563718, ; 563: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 564: Xamarin.AndroidX.Annotation => 0xdda814c6 => 205
	i32 3724971120, ; 565: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 247
	i32 3732100267, ; 566: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 567: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 568: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 569: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 570: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 285
	i32 3786282454, ; 571: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 214
	i32 3787005001, ; 572: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 174
	i32 3792276235, ; 573: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 574: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 191
	i32 3802395368, ; 575: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 576: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 577: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 578: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 579: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 184
	i32 3844307129, ; 580: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 581: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 582: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 583: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 584: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 585: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 586: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 262
	i32 3888767677, ; 587: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 252
	i32 3896106733, ; 588: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 589: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 220
	i32 3901907137, ; 590: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 591: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 301
	i32 3920810846, ; 592: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 593: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 265
	i32 3928044579, ; 594: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 595: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 596: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 250
	i32 3945713374, ; 597: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 598: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 599: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 208
	i32 3959773229, ; 600: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 239
	i32 4003436829, ; 601: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 602: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 207
	i32 4023392905, ; 603: System.IO.Pipelines => 0xefd01a89 => 198
	i32 4025784931, ; 604: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 605: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 193
	i32 4054681211, ; 606: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 607: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 608: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 609: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 287
	i32 4094352644, ; 610: Microsoft.Maui.Essentials.dll => 0xf40add04 => 195
	i32 4099507663, ; 611: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 612: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 613: Xamarin.AndroidX.Emoji2 => 0xf479582c => 228
	i32 4103439459, ; 614: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 311
	i32 4126470640, ; 615: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 183
	i32 4127667938, ; 616: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 617: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 618: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 619: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 311
	i32 4151237749, ; 620: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 621: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 622: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 623: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 624: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 625: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 244
	i32 4185676441, ; 626: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 627: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 628: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 629: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 300
	i32 4256097574, ; 630: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 221
	i32 4258378803, ; 631: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 243
	i32 4260525087, ; 632: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 633: Microsoft.Maui.Controls.dll => 0xfea12dee => 192
	i32 4274976490, ; 634: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4287112205, ; 635: Backgammon.UI.dll => 0xff88240d => 0
	i32 4292120959, ; 636: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 244
	i32 4294763496 ; 637: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 230
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [638 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 240, ; 3
	i32 274, ; 4
	i32 48, ; 5
	i32 282, ; 6
	i32 197, ; 7
	i32 80, ; 8
	i32 291, ; 9
	i32 145, ; 10
	i32 30, ; 11
	i32 315, ; 12
	i32 124, ; 13
	i32 196, ; 14
	i32 102, ; 15
	i32 299, ; 16
	i32 258, ; 17
	i32 107, ; 18
	i32 258, ; 19
	i32 139, ; 20
	i32 278, ; 21
	i32 314, ; 22
	i32 307, ; 23
	i32 77, ; 24
	i32 124, ; 25
	i32 13, ; 26
	i32 214, ; 27
	i32 132, ; 28
	i32 260, ; 29
	i32 151, ; 30
	i32 18, ; 31
	i32 212, ; 32
	i32 26, ; 33
	i32 175, ; 34
	i32 234, ; 35
	i32 1, ; 36
	i32 59, ; 37
	i32 42, ; 38
	i32 91, ; 39
	i32 217, ; 40
	i32 147, ; 41
	i32 236, ; 42
	i32 233, ; 43
	i32 54, ; 44
	i32 69, ; 45
	i32 312, ; 46
	i32 203, ; 47
	i32 83, ; 48
	i32 290, ; 49
	i32 235, ; 50
	i32 176, ; 51
	i32 131, ; 52
	i32 55, ; 53
	i32 149, ; 54
	i32 74, ; 55
	i32 145, ; 56
	i32 62, ; 57
	i32 146, ; 58
	i32 318, ; 59
	i32 165, ; 60
	i32 310, ; 61
	i32 218, ; 62
	i32 12, ; 63
	i32 231, ; 64
	i32 125, ; 65
	i32 152, ; 66
	i32 179, ; 67
	i32 113, ; 68
	i32 166, ; 69
	i32 164, ; 70
	i32 233, ; 71
	i32 246, ; 72
	i32 288, ; 73
	i32 84, ; 74
	i32 190, ; 75
	i32 150, ; 76
	i32 278, ; 77
	i32 60, ; 78
	i32 309, ; 79
	i32 186, ; 80
	i32 51, ; 81
	i32 103, ; 82
	i32 114, ; 83
	i32 40, ; 84
	i32 271, ; 85
	i32 269, ; 86
	i32 120, ; 87
	i32 52, ; 88
	i32 44, ; 89
	i32 316, ; 90
	i32 119, ; 91
	i32 223, ; 92
	i32 301, ; 93
	i32 229, ; 94
	i32 81, ; 95
	i32 136, ; 96
	i32 265, ; 97
	i32 0, ; 98
	i32 210, ; 99
	i32 8, ; 100
	i32 73, ; 101
	i32 155, ; 102
	i32 280, ; 103
	i32 154, ; 104
	i32 92, ; 105
	i32 275, ; 106
	i32 45, ; 107
	i32 279, ; 108
	i32 109, ; 109
	i32 129, ; 110
	i32 25, ; 111
	i32 200, ; 112
	i32 72, ; 113
	i32 55, ; 114
	i32 46, ; 115
	i32 307, ; 116
	i32 189, ; 117
	i32 224, ; 118
	i32 22, ; 119
	i32 238, ; 120
	i32 86, ; 121
	i32 43, ; 122
	i32 160, ; 123
	i32 180, ; 124
	i32 71, ; 125
	i32 251, ; 126
	i32 292, ; 127
	i32 3, ; 128
	i32 42, ; 129
	i32 63, ; 130
	i32 306, ; 131
	i32 16, ; 132
	i32 53, ; 133
	i32 303, ; 134
	i32 274, ; 135
	i32 316, ; 136
	i32 105, ; 137
	i32 197, ; 138
	i32 279, ; 139
	i32 296, ; 140
	i32 272, ; 141
	i32 235, ; 142
	i32 34, ; 143
	i32 158, ; 144
	i32 85, ; 145
	i32 32, ; 146
	i32 305, ; 147
	i32 12, ; 148
	i32 51, ; 149
	i32 56, ; 150
	i32 255, ; 151
	i32 36, ; 152
	i32 184, ; 153
	i32 273, ; 154
	i32 208, ; 155
	i32 35, ; 156
	i32 286, ; 157
	i32 58, ; 158
	i32 242, ; 159
	i32 176, ; 160
	i32 173, ; 161
	i32 17, ; 162
	i32 276, ; 163
	i32 164, ; 164
	i32 308, ; 165
	i32 302, ; 166
	i32 298, ; 167
	i32 241, ; 168
	i32 188, ; 169
	i32 268, ; 170
	i32 304, ; 171
	i32 153, ; 172
	i32 264, ; 173
	i32 249, ; 174
	i32 210, ; 175
	i32 29, ; 176
	i32 52, ; 177
	i32 178, ; 178
	i32 269, ; 179
	i32 5, ; 180
	i32 284, ; 181
	i32 259, ; 182
	i32 263, ; 183
	i32 215, ; 184
	i32 280, ; 185
	i32 207, ; 186
	i32 226, ; 187
	i32 293, ; 188
	i32 85, ; 189
	i32 268, ; 190
	i32 61, ; 191
	i32 112, ; 192
	i32 313, ; 193
	i32 57, ; 194
	i32 314, ; 195
	i32 255, ; 196
	i32 99, ; 197
	i32 19, ; 198
	i32 219, ; 199
	i32 111, ; 200
	i32 101, ; 201
	i32 174, ; 202
	i32 102, ; 203
	i32 282, ; 204
	i32 104, ; 205
	i32 272, ; 206
	i32 71, ; 207
	i32 38, ; 208
	i32 32, ; 209
	i32 103, ; 210
	i32 73, ; 211
	i32 288, ; 212
	i32 9, ; 213
	i32 123, ; 214
	i32 46, ; 215
	i32 209, ; 216
	i32 190, ; 217
	i32 9, ; 218
	i32 43, ; 219
	i32 4, ; 220
	i32 256, ; 221
	i32 312, ; 222
	i32 31, ; 223
	i32 138, ; 224
	i32 92, ; 225
	i32 93, ; 226
	i32 49, ; 227
	i32 141, ; 228
	i32 112, ; 229
	i32 140, ; 230
	i32 225, ; 231
	i32 115, ; 232
	i32 273, ; 233
	i32 157, ; 234
	i32 76, ; 235
	i32 79, ; 236
	i32 245, ; 237
	i32 37, ; 238
	i32 267, ; 239
	i32 229, ; 240
	i32 222, ; 241
	i32 64, ; 242
	i32 138, ; 243
	i32 15, ; 244
	i32 116, ; 245
	i32 261, ; 246
	i32 270, ; 247
	i32 217, ; 248
	i32 48, ; 249
	i32 70, ; 250
	i32 80, ; 251
	i32 126, ; 252
	i32 94, ; 253
	i32 121, ; 254
	i32 277, ; 255
	i32 26, ; 256
	i32 238, ; 257
	i32 97, ; 258
	i32 28, ; 259
	i32 213, ; 260
	i32 283, ; 261
	i32 149, ; 262
	i32 198, ; 263
	i32 169, ; 264
	i32 4, ; 265
	i32 98, ; 266
	i32 33, ; 267
	i32 93, ; 268
	i32 260, ; 269
	i32 186, ; 270
	i32 21, ; 271
	i32 41, ; 272
	i32 170, ; 273
	i32 299, ; 274
	i32 231, ; 275
	i32 291, ; 276
	i32 245, ; 277
	i32 276, ; 278
	i32 270, ; 279
	i32 250, ; 280
	i32 2, ; 281
	i32 134, ; 282
	i32 111, ; 283
	i32 187, ; 284
	i32 200, ; 285
	i32 308, ; 286
	i32 58, ; 287
	i32 95, ; 288
	i32 290, ; 289
	i32 39, ; 290
	i32 211, ; 291
	i32 25, ; 292
	i32 94, ; 293
	i32 284, ; 294
	i32 89, ; 295
	i32 99, ; 296
	i32 10, ; 297
	i32 87, ; 298
	i32 178, ; 299
	i32 295, ; 300
	i32 100, ; 301
	i32 257, ; 302
	i32 179, ; 303
	i32 181, ; 304
	i32 277, ; 305
	i32 202, ; 306
	i32 287, ; 307
	i32 7, ; 308
	i32 242, ; 309
	i32 199, ; 310
	i32 88, ; 311
	i32 237, ; 312
	i32 154, ; 313
	i32 286, ; 314
	i32 33, ; 315
	i32 116, ; 316
	i32 82, ; 317
	i32 20, ; 318
	i32 11, ; 319
	i32 162, ; 320
	i32 3, ; 321
	i32 194, ; 322
	i32 294, ; 323
	i32 189, ; 324
	i32 187, ; 325
	i32 84, ; 326
	i32 281, ; 327
	i32 64, ; 328
	i32 296, ; 329
	i32 264, ; 330
	i32 143, ; 331
	i32 185, ; 332
	i32 246, ; 333
	i32 157, ; 334
	i32 41, ; 335
	i32 117, ; 336
	i32 182, ; 337
	i32 201, ; 338
	i32 253, ; 339
	i32 131, ; 340
	i32 75, ; 341
	i32 66, ; 342
	i32 300, ; 343
	i32 172, ; 344
	i32 205, ; 345
	i32 177, ; 346
	i32 143, ; 347
	i32 106, ; 348
	i32 151, ; 349
	i32 70, ; 350
	i32 294, ; 351
	i32 156, ; 352
	i32 181, ; 353
	i32 121, ; 354
	i32 127, ; 355
	i32 295, ; 356
	i32 152, ; 357
	i32 228, ; 358
	i32 141, ; 359
	i32 215, ; 360
	i32 292, ; 361
	i32 20, ; 362
	i32 14, ; 363
	i32 135, ; 364
	i32 75, ; 365
	i32 59, ; 366
	i32 218, ; 367
	i32 167, ; 368
	i32 168, ; 369
	i32 192, ; 370
	i32 15, ; 371
	i32 74, ; 372
	i32 6, ; 373
	i32 23, ; 374
	i32 298, ; 375
	i32 240, ; 376
	i32 199, ; 377
	i32 91, ; 378
	i32 293, ; 379
	i32 1, ; 380
	i32 136, ; 381
	i32 297, ; 382
	i32 241, ; 383
	i32 263, ; 384
	i32 134, ; 385
	i32 69, ; 386
	i32 146, ; 387
	i32 302, ; 388
	i32 281, ; 389
	i32 232, ; 390
	i32 188, ; 391
	i32 88, ; 392
	i32 96, ; 393
	i32 222, ; 394
	i32 227, ; 395
	i32 297, ; 396
	i32 31, ; 397
	i32 45, ; 398
	i32 317, ; 399
	i32 236, ; 400
	i32 185, ; 401
	i32 201, ; 402
	i32 109, ; 403
	i32 158, ; 404
	i32 35, ; 405
	i32 22, ; 406
	i32 114, ; 407
	i32 57, ; 408
	i32 261, ; 409
	i32 144, ; 410
	i32 118, ; 411
	i32 120, ; 412
	i32 110, ; 413
	i32 203, ; 414
	i32 139, ; 415
	i32 209, ; 416
	i32 283, ; 417
	i32 54, ; 418
	i32 105, ; 419
	i32 303, ; 420
	i32 193, ; 421
	i32 194, ; 422
	i32 133, ; 423
	i32 275, ; 424
	i32 266, ; 425
	i32 254, ; 426
	i32 309, ; 427
	i32 232, ; 428
	i32 196, ; 429
	i32 159, ; 430
	i32 219, ; 431
	i32 163, ; 432
	i32 132, ; 433
	i32 254, ; 434
	i32 161, ; 435
	i32 243, ; 436
	i32 140, ; 437
	i32 266, ; 438
	i32 262, ; 439
	i32 169, ; 440
	i32 195, ; 441
	i32 204, ; 442
	i32 271, ; 443
	i32 40, ; 444
	i32 175, ; 445
	i32 230, ; 446
	i32 81, ; 447
	i32 56, ; 448
	i32 37, ; 449
	i32 97, ; 450
	i32 166, ; 451
	i32 317, ; 452
	i32 172, ; 453
	i32 267, ; 454
	i32 82, ; 455
	i32 206, ; 456
	i32 98, ; 457
	i32 30, ; 458
	i32 159, ; 459
	i32 18, ; 460
	i32 127, ; 461
	i32 119, ; 462
	i32 226, ; 463
	i32 257, ; 464
	i32 239, ; 465
	i32 259, ; 466
	i32 165, ; 467
	i32 234, ; 468
	i32 318, ; 469
	i32 289, ; 470
	i32 256, ; 471
	i32 247, ; 472
	i32 170, ; 473
	i32 16, ; 474
	i32 144, ; 475
	i32 125, ; 476
	i32 118, ; 477
	i32 38, ; 478
	i32 115, ; 479
	i32 47, ; 480
	i32 142, ; 481
	i32 117, ; 482
	i32 34, ; 483
	i32 173, ; 484
	i32 95, ; 485
	i32 53, ; 486
	i32 248, ; 487
	i32 129, ; 488
	i32 153, ; 489
	i32 24, ; 490
	i32 161, ; 491
	i32 225, ; 492
	i32 148, ; 493
	i32 104, ; 494
	i32 89, ; 495
	i32 213, ; 496
	i32 60, ; 497
	i32 142, ; 498
	i32 100, ; 499
	i32 5, ; 500
	i32 13, ; 501
	i32 122, ; 502
	i32 135, ; 503
	i32 28, ; 504
	i32 289, ; 505
	i32 72, ; 506
	i32 223, ; 507
	i32 24, ; 508
	i32 211, ; 509
	i32 252, ; 510
	i32 249, ; 511
	i32 306, ; 512
	i32 137, ; 513
	i32 204, ; 514
	i32 220, ; 515
	i32 168, ; 516
	i32 253, ; 517
	i32 285, ; 518
	i32 101, ; 519
	i32 123, ; 520
	i32 224, ; 521
	i32 183, ; 522
	i32 163, ; 523
	i32 167, ; 524
	i32 227, ; 525
	i32 39, ; 526
	i32 191, ; 527
	i32 304, ; 528
	i32 177, ; 529
	i32 17, ; 530
	i32 171, ; 531
	i32 305, ; 532
	i32 137, ; 533
	i32 150, ; 534
	i32 216, ; 535
	i32 155, ; 536
	i32 130, ; 537
	i32 19, ; 538
	i32 65, ; 539
	i32 147, ; 540
	i32 47, ; 541
	i32 313, ; 542
	i32 315, ; 543
	i32 202, ; 544
	i32 79, ; 545
	i32 61, ; 546
	i32 106, ; 547
	i32 251, ; 548
	i32 206, ; 549
	i32 49, ; 550
	i32 237, ; 551
	i32 310, ; 552
	i32 248, ; 553
	i32 14, ; 554
	i32 182, ; 555
	i32 68, ; 556
	i32 171, ; 557
	i32 212, ; 558
	i32 216, ; 559
	i32 180, ; 560
	i32 78, ; 561
	i32 221, ; 562
	i32 108, ; 563
	i32 205, ; 564
	i32 247, ; 565
	i32 67, ; 566
	i32 63, ; 567
	i32 27, ; 568
	i32 160, ; 569
	i32 285, ; 570
	i32 214, ; 571
	i32 174, ; 572
	i32 10, ; 573
	i32 191, ; 574
	i32 11, ; 575
	i32 78, ; 576
	i32 126, ; 577
	i32 83, ; 578
	i32 184, ; 579
	i32 66, ; 580
	i32 107, ; 581
	i32 65, ; 582
	i32 128, ; 583
	i32 122, ; 584
	i32 77, ; 585
	i32 262, ; 586
	i32 252, ; 587
	i32 8, ; 588
	i32 220, ; 589
	i32 2, ; 590
	i32 301, ; 591
	i32 44, ; 592
	i32 265, ; 593
	i32 156, ; 594
	i32 128, ; 595
	i32 250, ; 596
	i32 23, ; 597
	i32 133, ; 598
	i32 208, ; 599
	i32 239, ; 600
	i32 29, ; 601
	i32 207, ; 602
	i32 198, ; 603
	i32 62, ; 604
	i32 193, ; 605
	i32 90, ; 606
	i32 87, ; 607
	i32 148, ; 608
	i32 287, ; 609
	i32 195, ; 610
	i32 36, ; 611
	i32 86, ; 612
	i32 228, ; 613
	i32 311, ; 614
	i32 183, ; 615
	i32 50, ; 616
	i32 6, ; 617
	i32 90, ; 618
	i32 311, ; 619
	i32 21, ; 620
	i32 162, ; 621
	i32 96, ; 622
	i32 50, ; 623
	i32 113, ; 624
	i32 244, ; 625
	i32 130, ; 626
	i32 76, ; 627
	i32 27, ; 628
	i32 300, ; 629
	i32 221, ; 630
	i32 243, ; 631
	i32 7, ; 632
	i32 192, ; 633
	i32 110, ; 634
	i32 0, ; 635
	i32 244, ; 636
	i32 230 ; 637
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
