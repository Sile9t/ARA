; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [341 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [676 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 261
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 295
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 65960268, ; 8: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 211
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 336
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 209
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 279
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 279
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 299
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 235
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 281
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 333
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 334
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 233
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 255
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 238
	i32 276479776, ; 37: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 257
	i32 280482487, ; 39: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 254
	i32 280992041, ; 40: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 305
	i32 291076382, ; 41: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 42: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 43: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 333
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 224
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 46: Microsoft.SqlServer.Server => 0x13ada4fd => 210
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 318
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 256
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 317
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 337
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 59: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 329
	i32 441335492, ; 60: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 239
	i32 442565967, ; 61: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 62: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 252
	i32 451504562, ; 63: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 64: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 65: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 66: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 67: System.dll => 0x1bff388e => 164
	i32 476646585, ; 68: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 254
	i32 485463106, ; 69: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 198
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 267
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 316
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 310
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 195
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 76: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 299
	i32 530272170, ; 77: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 191
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 82: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 179
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 292
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 290
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 87: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 324
	i32 597488923, ; 88: CommunityToolkit.Maui => 0x239cf51b => 175
	i32 601371474, ; 89: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 90: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 244
	i32 627931235, ; 93: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 322
	i32 639843206, ; 94: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 250
	i32 643868501, ; 95: System.Net => 0x2660a755 => 81
	i32 662205335, ; 96: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 97: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 286
	i32 666292255, ; 98: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 231
	i32 672442732, ; 99: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 100: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 101: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 304
	i32 690569205, ; 102: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 301
	i32 693804605, ; 104: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 105: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 106: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 296
	i32 700358131, ; 107: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 108: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 319
	i32 709557578, ; 109: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 307
	i32 720511267, ; 110: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 300
	i32 722857257, ; 111: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 112: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 113: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 114: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 221
	i32 759454413, ; 115: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 116: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 117: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 118: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 328
	i32 789151979, ; 119: Microsoft.Extensions.Options => 0x2f0980eb => 194
	i32 790371945, ; 120: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 245
	i32 804715423, ; 121: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 259
	i32 809851609, ; 123: System.Drawing.Common.dll => 0x30455ad9 => 213
	i32 823281589, ; 124: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 125: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 126: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 127: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 128: Xamarin.AndroidX.Print => 0x3246f6cd => 272
	i32 873119928, ; 129: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 130: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 131: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 132: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 133: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 134: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 331
	i32 928116545, ; 135: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 295
	i32 952186615, ; 136: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 137: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 300
	i32 966729478, ; 138: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 293
	i32 967690846, ; 139: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 256
	i32 975236339, ; 140: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 141: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 142: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 143: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 144: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 145: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 146: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 147: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 276
	i32 1019214401, ; 148: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 149: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 190
	i32 1029334545, ; 150: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 306
	i32 1031528504, ; 151: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 294
	i32 1035644815, ; 152: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 229
	i32 1036536393, ; 153: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 154: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 155: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 263
	i32 1062017875, ; 156: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 197
	i32 1067306892, ; 157: GoogleGson => 0x3f9dcf8c => 178
	i32 1082857460, ; 158: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 159: Xamarin.Kotlin.StdLib => 0x409e66d8 => 297
	i32 1098259244, ; 160: System => 0x41761b2c => 164
	i32 1118262833, ; 161: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 319
	i32 1121599056, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 262
	i32 1127624469, ; 163: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 193
	i32 1138436374, ; 164: Microsoft.Data.SqlClient.dll => 0x43db2916 => 180
	i32 1145483052, ; 165: System.Windows.Extensions.dll => 0x4446af2c => 219
	i32 1149092582, ; 166: Xamarin.AndroidX.Window => 0x447dc2e6 => 289
	i32 1157931901, ; 167: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 182
	i32 1168523401, ; 168: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 325
	i32 1170634674, ; 169: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 170: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 285
	i32 1178241025, ; 171: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 270
	i32 1202000627, ; 172: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 182
	i32 1203215381, ; 173: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 323
	i32 1204270330, ; 174: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 231
	i32 1204575371, ; 175: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 186
	i32 1208641965, ; 176: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 177: CommunityToolkit.Mvvm => 0x4868cc7b => 177
	i32 1219128291, ; 178: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 179: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 321
	i32 1243150071, ; 180: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 290
	i32 1253011324, ; 181: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 182: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 305
	i32 1264511973, ; 183: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 280
	i32 1267360935, ; 184: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 284
	i32 1273260888, ; 185: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 236
	i32 1275534314, ; 186: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 301
	i32 1278448581, ; 187: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 228
	i32 1293217323, ; 188: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 247
	i32 1309188875, ; 189: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 190: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 289
	i32 1324164729, ; 191: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 192: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 193: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 194: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 335
	i32 1376866003, ; 195: Xamarin.AndroidX.SavedState => 0x52114ed3 => 276
	i32 1379779777, ; 196: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 197: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 198: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 240
	i32 1408764838, ; 199: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 200: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 201: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 202: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 303
	i32 1434145427, ; 203: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 204: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 293
	i32 1439761251, ; 205: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 206: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 207: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 208: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 209: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 210: System.IdentityModel.Tokens.Jwt => 0x57137723 => 214
	i32 1461004990, ; 211: es\Microsoft.Maui.Controls.resources => 0x57152abe => 309
	i32 1461234159, ; 212: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 213: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 214: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 215: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 230
	i32 1470490898, ; 216: Microsoft.Extensions.Primitives => 0x57a5e912 => 195
	i32 1479771757, ; 217: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 218: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 219: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 220: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 277
	i32 1493001747, ; 221: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 313
	i32 1498168481, ; 222: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 199
	i32 1514721132, ; 223: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 308
	i32 1536373174, ; 224: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 225: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 226: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 227: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 228: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 328
	i32 1551635426, ; 229: ApartmentReservationApp => 0x5c7c13e2 => 0
	i32 1565310744, ; 230: System.Runtime.Caching => 0x5d4cbf18 => 216
	i32 1565862583, ; 231: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 232: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 233: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 234: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 235: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 236: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 246
	i32 1592978981, ; 237: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 238: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 294
	i32 1601112923, ; 239: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 240: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 241: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 242: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 266
	i32 1622358360, ; 243: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 244: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 288
	i32 1628113371, ; 245: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 202
	i32 1634654947, ; 246: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 176
	i32 1635184631, ; 247: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 250
	i32 1636350590, ; 248: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 243
	i32 1639515021, ; 249: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 250: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 251: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 252: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 253: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 282
	i32 1658251792, ; 254: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 291
	i32 1670060433, ; 255: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 238
	i32 1675553242, ; 256: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 257: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 258: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 259: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 260: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 181
	i32 1691477237, ; 261: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 262: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 263: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 298
	i32 1701541528, ; 264: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 265: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 259
	i32 1726116996, ; 266: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 267: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 268: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 234
	i32 1736233607, ; 269: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 326
	i32 1743415430, ; 270: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 304
	i32 1744735666, ; 271: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 272: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 273: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 274: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 275: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 276: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 277: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 281
	i32 1770582343, ; 278: Microsoft.Extensions.Logging.dll => 0x6988f147 => 191
	i32 1776026572, ; 279: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 280: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 281: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 282: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 320
	i32 1788241197, ; 283: Xamarin.AndroidX.Fragment => 0x6a96652d => 252
	i32 1793755602, ; 284: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 312
	i32 1794500907, ; 285: Microsoft.Identity.Client.dll => 0x6af5e92b => 196
	i32 1796167890, ; 286: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 179
	i32 1808609942, ; 287: Xamarin.AndroidX.Loader => 0x6bcd3296 => 266
	i32 1813058853, ; 288: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 297
	i32 1813201214, ; 289: Xamarin.Google.Android.Material => 0x6c13413e => 291
	i32 1818569960, ; 290: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 271
	i32 1818787751, ; 291: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 292: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 293: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 294: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 192
	i32 1829150748, ; 295: System.Windows.Extensions => 0x6d06a01c => 219
	i32 1842015223, ; 296: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 332
	i32 1847515442, ; 297: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 221
	i32 1853025655, ; 298: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 329
	i32 1858542181, ; 299: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 300: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 301: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 202
	i32 1875935024, ; 302: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 311
	i32 1879696579, ; 303: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 304: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 232
	i32 1888955245, ; 305: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 306: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 307: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 308: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 309: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 310: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 311: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 312: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 278
	i32 1968388702, ; 313: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 187
	i32 1983156543, ; 314: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 298
	i32 1985761444, ; 315: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 223
	i32 1986222447, ; 316: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 203
	i32 2003115576, ; 317: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 308
	i32 2011961780, ; 318: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 319: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 263
	i32 2025202353, ; 320: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 303
	i32 2031763787, ; 321: Xamarin.Android.Glide => 0x791a414b => 220
	i32 2040764568, ; 322: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 197
	i32 2045470958, ; 323: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 324: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 258
	i32 2060060697, ; 325: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 326: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 307
	i32 2070888862, ; 327: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 328: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 329: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 330: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 331: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 332: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 333: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 334: Microsoft.Maui => 0x80bd55ad => 207
	i32 2169148018, ; 335: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 315
	i32 2181898931, ; 336: Microsoft.Extensions.Options.dll => 0x820d22b3 => 194
	i32 2192057212, ; 337: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 192
	i32 2193016926, ; 338: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 339: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 302
	i32 2201231467, ; 340: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 341: it\Microsoft.Maui.Controls.resources => 0x839595db => 317
	i32 2217644978, ; 342: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 285
	i32 2222056684, ; 343: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 344: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 267
	i32 2252106437, ; 345: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 346: Microsoft.EntityFrameworkCore => 0x86487ec9 => 181
	i32 2253551641, ; 347: Microsoft.IdentityModel.Protocols => 0x86527819 => 201
	i32 2256313426, ; 348: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 349: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 350: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 188
	i32 2267999099, ; 351: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 222
	i32 2270573516, ; 352: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 311
	i32 2279755925, ; 353: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 274
	i32 2293034957, ; 354: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 355: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 356: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 357: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 321
	i32 2305521784, ; 358: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 359: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 226
	i32 2320631194, ; 360: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 361: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 362: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 363: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 364: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 365: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 200
	i32 2371007202, ; 366: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 187
	i32 2378619854, ; 367: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 368: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 369: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 316
	i32 2401565422, ; 370: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 371: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 249
	i32 2421380589, ; 372: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 373: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 236
	i32 2427813419, ; 374: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 313
	i32 2435356389, ; 375: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 376: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 377: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 378: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 379: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 380: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 239
	i32 2471841756, ; 381: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 382: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 383: Microsoft.Maui.Controls => 0x93dba8a1 => 205
	i32 2483903535, ; 384: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 385: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 386: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 387: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 388: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 261
	i32 2522472828, ; 389: Xamarin.Android.Glide.dll => 0x9659e17c => 220
	i32 2538310050, ; 390: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 391: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 314
	i32 2562349572, ; 392: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 393: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 394: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 262
	i32 2581819634, ; 395: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 284
	i32 2585220780, ; 396: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 397: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 398: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 399: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 323
	i32 2605712449, ; 400: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 302
	i32 2615233544, ; 401: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 253
	i32 2616218305, ; 402: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 193
	i32 2617129537, ; 403: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 404: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 405: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 243
	i32 2624644809, ; 406: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 248
	i32 2626831493, ; 407: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 318
	i32 2627185994, ; 408: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 409: System.Memory.Data => 0x9ca74fdc => 215
	i32 2629843544, ; 410: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 411: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 257
	i32 2634653062, ; 412: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 183
	i32 2640290731, ; 413: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 200
	i32 2640706905, ; 414: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 415: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 217
	i32 2663391936, ; 416: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 222
	i32 2663698177, ; 417: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 418: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 419: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 420: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 421: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2686887180, ; 422: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 423: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 424: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 282
	i32 2715334215, ; 425: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 426: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 427: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 428: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 429: Xamarin.AndroidX.Activity => 0xa2e0939b => 224
	i32 2735172069, ; 430: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 431: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 230
	i32 2740051746, ; 432: Microsoft.Identity.Client => 0xa351df22 => 196
	i32 2740948882, ; 433: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 434: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 435: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 324
	i32 2755098380, ; 436: Microsoft.SqlServer.Server.dll => 0xa437770c => 210
	i32 2755643133, ; 437: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 184
	i32 2758225723, ; 438: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 206
	i32 2764765095, ; 439: Microsoft.Maui.dll => 0xa4caf7a7 => 207
	i32 2765824710, ; 440: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 441: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 296
	i32 2778768386, ; 442: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 287
	i32 2779977773, ; 443: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 275
	i32 2785988530, ; 444: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 330
	i32 2788224221, ; 445: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 253
	i32 2795666278, ; 446: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 211
	i32 2801831435, ; 447: Microsoft.Maui.Graphics => 0xa7008e0b => 209
	i32 2803228030, ; 448: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 449: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 309
	i32 2810250172, ; 450: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 240
	i32 2819470561, ; 451: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 452: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 453: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 275
	i32 2824502124, ; 454: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 455: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 322
	i32 2838993487, ; 456: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 264
	i32 2841355853, ; 457: System.Security.Permissions => 0xa95ba64d => 218
	i32 2847789619, ; 458: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 183
	i32 2849599387, ; 459: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 460: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 287
	i32 2855708567, ; 461: Xamarin.AndroidX.Transition => 0xaa36a797 => 283
	i32 2861098320, ; 462: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 463: Microsoft.Maui.Essentials => 0xaa8a4878 => 208
	i32 2867946736, ; 464: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 217
	i32 2868488919, ; 465: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 176
	i32 2870099610, ; 466: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 225
	i32 2875164099, ; 467: Jsr305Binding.dll => 0xab5f85c3 => 292
	i32 2875220617, ; 468: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 469: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 251
	i32 2887636118, ; 470: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 471: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 472: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 473: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 474: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 475: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 476: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 288
	i32 2919462931, ; 477: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 478: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 227
	i32 2936416060, ; 479: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 480: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 481: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 482: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 212
	i32 2959614098, ; 483: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 484: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 485: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 486: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 247
	i32 2987532451, ; 487: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 278
	i32 2996846495, ; 488: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 260
	i32 3012788804, ; 489: System.Configuration.ConfigurationManager => 0xb3938244 => 212
	i32 3016983068, ; 490: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 280
	i32 3023353419, ; 491: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 492: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 255
	i32 3033605958, ; 493: System.Memory.Data.dll => 0xb4d12746 => 215
	i32 3038032645, ; 494: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 337
	i32 3056245963, ; 495: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 277
	i32 3057625584, ; 496: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 268
	i32 3059408633, ; 497: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 498: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 499: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 185
	i32 3075834255, ; 500: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 501: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 315
	i32 3084678329, ; 502: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 203
	i32 3090735792, ; 503: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 504: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 505: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 506: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 507: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 508: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 509: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 510: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 511: GoogleGson.dll => 0xbba64c02 => 178
	i32 3159123045, ; 512: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 513: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 514: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 269
	i32 3192346100, ; 515: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 516: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 517: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 185
	i32 3204380047, ; 518: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 519: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 520: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 246
	i32 3213246214, ; 521: System.Security.Permissions.dll => 0xbf863f06 => 218
	i32 3220365878, ; 522: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 523: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 524: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 525: Xamarin.AndroidX.CardView => 0xc235e84d => 234
	i32 3265493905, ; 526: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 527: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 528: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 529: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 530: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 531: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 532: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 533: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 534: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 310
	i32 3312457198, ; 535: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 199
	i32 3316684772, ; 536: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 537: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 244
	i32 3317144872, ; 538: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 539: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 232
	i32 3345895724, ; 540: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 273
	i32 3346324047, ; 541: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 270
	i32 3357674450, ; 542: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 327
	i32 3358260929, ; 543: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 544: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 225
	i32 3362522851, ; 545: Xamarin.AndroidX.Core => 0xc86c06e3 => 241
	i32 3366347497, ; 546: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 547: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 201
	i32 3374999561, ; 548: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 274
	i32 3381016424, ; 549: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 306
	i32 3395150330, ; 550: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 551: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 552: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 245
	i32 3428513518, ; 553: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 189
	i32 3429136800, ; 554: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 555: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 556: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 248
	i32 3445260447, ; 557: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 558: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 204
	i32 3463511458, ; 559: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 314
	i32 3471940407, ; 560: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 561: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 562: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 327
	i32 3484440000, ; 563: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 326
	i32 3485117614, ; 564: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 565: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 566: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 237
	i32 3509114376, ; 567: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 568: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 569: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 570: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 571: Microsoft.Data.SqlClient => 0xd35114f1 => 180
	i32 3560100363, ; 572: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 573: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 574: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 575: System.Runtime.Caching.dll => 0xd4d3289f => 216
	i32 3580758918, ; 576: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 334
	i32 3597029428, ; 577: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 223
	i32 3598340787, ; 578: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 579: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 580: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 581: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 272
	i32 3633644679, ; 582: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 227
	i32 3638274909, ; 583: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 584: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 258
	i32 3643446276, ; 585: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 331
	i32 3643854240, ; 586: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 269
	i32 3645089577, ; 587: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 588: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 188
	i32 3660523487, ; 589: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 590: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 591: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 233
	i32 3684561358, ; 592: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 237
	i32 3689375977, ; 593: System.Drawing.Common => 0xdbe768e9 => 213
	i32 3697841164, ; 594: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 336
	i32 3700591436, ; 595: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 198
	i32 3700866549, ; 596: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 597: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 242
	i32 3716563718, ; 598: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 599: Xamarin.AndroidX.Annotation => 0xdda814c6 => 226
	i32 3724971120, ; 600: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 268
	i32 3732100267, ; 601: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 602: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 603: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 604: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 605: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 235
	i32 3792276235, ; 606: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 607: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 204
	i32 3802395368, ; 608: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 609: CommunityToolkit.Maui.dll => 0xe3886bf7 => 175
	i32 3819260425, ; 610: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 611: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 612: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 613: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 190
	i32 3844307129, ; 614: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 615: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 616: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 617: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 618: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 619: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 620: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 283
	i32 3888767677, ; 621: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 273
	i32 3889960447, ; 622: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 335
	i32 3896106733, ; 623: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 624: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 241
	i32 3901907137, ; 625: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 626: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 627: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 286
	i32 3928044579, ; 628: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 629: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 630: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 271
	i32 3945713374, ; 631: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3948071813, ; 632: ApartmentReservationApp.dll => 0xeb52cb85 => 0
	i32 3953953790, ; 633: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 634: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 229
	i32 3959773229, ; 635: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 260
	i32 3980434154, ; 636: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 330
	i32 3987592930, ; 637: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 312
	i32 4003436829, ; 638: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 639: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 228
	i32 4025784931, ; 640: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 641: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 206
	i32 4054681211, ; 642: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 643: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 644: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 645: Microsoft.Maui.Essentials.dll => 0xf40add04 => 208
	i32 4099507663, ; 646: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 647: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 648: Xamarin.AndroidX.Emoji2 => 0xf479582c => 249
	i32 4101842092, ; 649: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 186
	i32 4102112229, ; 650: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 325
	i32 4125707920, ; 651: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 320
	i32 4126470640, ; 652: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 189
	i32 4127667938, ; 653: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 654: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 655: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 656: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 332
	i32 4151237749, ; 657: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 658: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 659: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 660: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 661: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 662: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 265
	i32 4185676441, ; 663: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 664: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 184
	i32 4196529839, ; 665: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 666: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 667: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 242
	i32 4258378803, ; 668: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 264
	i32 4260525087, ; 669: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 670: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 214
	i32 4271975918, ; 671: Microsoft.Maui.Controls.dll => 0xfea12dee => 205
	i32 4274623895, ; 672: CommunityToolkit.Mvvm.dll => 0xfec99597 => 177
	i32 4274976490, ; 673: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 674: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 265
	i32 4294763496 ; 675: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 251
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [676 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 261, ; 3
	i32 295, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 211, ; 8
	i32 30, ; 9
	i32 336, ; 10
	i32 124, ; 11
	i32 209, ; 12
	i32 102, ; 13
	i32 279, ; 14
	i32 107, ; 15
	i32 279, ; 16
	i32 139, ; 17
	i32 299, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 235, ; 22
	i32 132, ; 23
	i32 281, ; 24
	i32 151, ; 25
	i32 333, ; 26
	i32 334, ; 27
	i32 18, ; 28
	i32 233, ; 29
	i32 26, ; 30
	i32 255, ; 31
	i32 1, ; 32
	i32 59, ; 33
	i32 42, ; 34
	i32 91, ; 35
	i32 238, ; 36
	i32 147, ; 37
	i32 257, ; 38
	i32 254, ; 39
	i32 305, ; 40
	i32 54, ; 41
	i32 69, ; 42
	i32 333, ; 43
	i32 224, ; 44
	i32 83, ; 45
	i32 210, ; 46
	i32 318, ; 47
	i32 256, ; 48
	i32 317, ; 49
	i32 131, ; 50
	i32 55, ; 51
	i32 149, ; 52
	i32 74, ; 53
	i32 145, ; 54
	i32 62, ; 55
	i32 146, ; 56
	i32 337, ; 57
	i32 165, ; 58
	i32 329, ; 59
	i32 239, ; 60
	i32 12, ; 61
	i32 252, ; 62
	i32 125, ; 63
	i32 152, ; 64
	i32 113, ; 65
	i32 166, ; 66
	i32 164, ; 67
	i32 254, ; 68
	i32 198, ; 69
	i32 267, ; 70
	i32 84, ; 71
	i32 316, ; 72
	i32 310, ; 73
	i32 195, ; 74
	i32 150, ; 75
	i32 299, ; 76
	i32 60, ; 77
	i32 191, ; 78
	i32 51, ; 79
	i32 103, ; 80
	i32 114, ; 81
	i32 179, ; 82
	i32 40, ; 83
	i32 292, ; 84
	i32 290, ; 85
	i32 120, ; 86
	i32 324, ; 87
	i32 175, ; 88
	i32 52, ; 89
	i32 44, ; 90
	i32 119, ; 91
	i32 244, ; 92
	i32 322, ; 93
	i32 250, ; 94
	i32 81, ; 95
	i32 136, ; 96
	i32 286, ; 97
	i32 231, ; 98
	i32 8, ; 99
	i32 73, ; 100
	i32 304, ; 101
	i32 155, ; 102
	i32 301, ; 103
	i32 154, ; 104
	i32 92, ; 105
	i32 296, ; 106
	i32 45, ; 107
	i32 319, ; 108
	i32 307, ; 109
	i32 300, ; 110
	i32 109, ; 111
	i32 129, ; 112
	i32 25, ; 113
	i32 221, ; 114
	i32 72, ; 115
	i32 55, ; 116
	i32 46, ; 117
	i32 328, ; 118
	i32 194, ; 119
	i32 245, ; 120
	i32 22, ; 121
	i32 259, ; 122
	i32 213, ; 123
	i32 86, ; 124
	i32 43, ; 125
	i32 160, ; 126
	i32 71, ; 127
	i32 272, ; 128
	i32 3, ; 129
	i32 42, ; 130
	i32 63, ; 131
	i32 16, ; 132
	i32 53, ; 133
	i32 331, ; 134
	i32 295, ; 135
	i32 105, ; 136
	i32 300, ; 137
	i32 293, ; 138
	i32 256, ; 139
	i32 34, ; 140
	i32 158, ; 141
	i32 85, ; 142
	i32 32, ; 143
	i32 12, ; 144
	i32 51, ; 145
	i32 56, ; 146
	i32 276, ; 147
	i32 36, ; 148
	i32 190, ; 149
	i32 306, ; 150
	i32 294, ; 151
	i32 229, ; 152
	i32 35, ; 153
	i32 58, ; 154
	i32 263, ; 155
	i32 197, ; 156
	i32 178, ; 157
	i32 17, ; 158
	i32 297, ; 159
	i32 164, ; 160
	i32 319, ; 161
	i32 262, ; 162
	i32 193, ; 163
	i32 180, ; 164
	i32 219, ; 165
	i32 289, ; 166
	i32 182, ; 167
	i32 325, ; 168
	i32 153, ; 169
	i32 285, ; 170
	i32 270, ; 171
	i32 182, ; 172
	i32 323, ; 173
	i32 231, ; 174
	i32 186, ; 175
	i32 29, ; 176
	i32 177, ; 177
	i32 52, ; 178
	i32 321, ; 179
	i32 290, ; 180
	i32 5, ; 181
	i32 305, ; 182
	i32 280, ; 183
	i32 284, ; 184
	i32 236, ; 185
	i32 301, ; 186
	i32 228, ; 187
	i32 247, ; 188
	i32 85, ; 189
	i32 289, ; 190
	i32 61, ; 191
	i32 112, ; 192
	i32 57, ; 193
	i32 335, ; 194
	i32 276, ; 195
	i32 99, ; 196
	i32 19, ; 197
	i32 240, ; 198
	i32 111, ; 199
	i32 101, ; 200
	i32 102, ; 201
	i32 303, ; 202
	i32 104, ; 203
	i32 293, ; 204
	i32 71, ; 205
	i32 38, ; 206
	i32 32, ; 207
	i32 103, ; 208
	i32 73, ; 209
	i32 214, ; 210
	i32 309, ; 211
	i32 9, ; 212
	i32 123, ; 213
	i32 46, ; 214
	i32 230, ; 215
	i32 195, ; 216
	i32 9, ; 217
	i32 43, ; 218
	i32 4, ; 219
	i32 277, ; 220
	i32 313, ; 221
	i32 199, ; 222
	i32 308, ; 223
	i32 31, ; 224
	i32 138, ; 225
	i32 92, ; 226
	i32 93, ; 227
	i32 328, ; 228
	i32 0, ; 229
	i32 216, ; 230
	i32 49, ; 231
	i32 141, ; 232
	i32 112, ; 233
	i32 140, ; 234
	i32 174, ; 235
	i32 246, ; 236
	i32 115, ; 237
	i32 294, ; 238
	i32 157, ; 239
	i32 76, ; 240
	i32 79, ; 241
	i32 266, ; 242
	i32 37, ; 243
	i32 288, ; 244
	i32 202, ; 245
	i32 176, ; 246
	i32 250, ; 247
	i32 243, ; 248
	i32 64, ; 249
	i32 138, ; 250
	i32 15, ; 251
	i32 116, ; 252
	i32 282, ; 253
	i32 291, ; 254
	i32 238, ; 255
	i32 48, ; 256
	i32 70, ; 257
	i32 80, ; 258
	i32 126, ; 259
	i32 181, ; 260
	i32 94, ; 261
	i32 121, ; 262
	i32 298, ; 263
	i32 26, ; 264
	i32 259, ; 265
	i32 97, ; 266
	i32 28, ; 267
	i32 234, ; 268
	i32 326, ; 269
	i32 304, ; 270
	i32 149, ; 271
	i32 169, ; 272
	i32 4, ; 273
	i32 98, ; 274
	i32 33, ; 275
	i32 93, ; 276
	i32 281, ; 277
	i32 191, ; 278
	i32 21, ; 279
	i32 41, ; 280
	i32 170, ; 281
	i32 320, ; 282
	i32 252, ; 283
	i32 312, ; 284
	i32 196, ; 285
	i32 179, ; 286
	i32 266, ; 287
	i32 297, ; 288
	i32 291, ; 289
	i32 271, ; 290
	i32 2, ; 291
	i32 134, ; 292
	i32 111, ; 293
	i32 192, ; 294
	i32 219, ; 295
	i32 332, ; 296
	i32 221, ; 297
	i32 329, ; 298
	i32 58, ; 299
	i32 95, ; 300
	i32 202, ; 301
	i32 311, ; 302
	i32 39, ; 303
	i32 232, ; 304
	i32 25, ; 305
	i32 94, ; 306
	i32 89, ; 307
	i32 99, ; 308
	i32 10, ; 309
	i32 87, ; 310
	i32 100, ; 311
	i32 278, ; 312
	i32 187, ; 313
	i32 298, ; 314
	i32 223, ; 315
	i32 203, ; 316
	i32 308, ; 317
	i32 7, ; 318
	i32 263, ; 319
	i32 303, ; 320
	i32 220, ; 321
	i32 197, ; 322
	i32 88, ; 323
	i32 258, ; 324
	i32 154, ; 325
	i32 307, ; 326
	i32 33, ; 327
	i32 116, ; 328
	i32 82, ; 329
	i32 20, ; 330
	i32 11, ; 331
	i32 162, ; 332
	i32 3, ; 333
	i32 207, ; 334
	i32 315, ; 335
	i32 194, ; 336
	i32 192, ; 337
	i32 84, ; 338
	i32 302, ; 339
	i32 64, ; 340
	i32 317, ; 341
	i32 285, ; 342
	i32 143, ; 343
	i32 267, ; 344
	i32 157, ; 345
	i32 181, ; 346
	i32 201, ; 347
	i32 41, ; 348
	i32 117, ; 349
	i32 188, ; 350
	i32 222, ; 351
	i32 311, ; 352
	i32 274, ; 353
	i32 131, ; 354
	i32 75, ; 355
	i32 66, ; 356
	i32 321, ; 357
	i32 172, ; 358
	i32 226, ; 359
	i32 143, ; 360
	i32 106, ; 361
	i32 151, ; 362
	i32 70, ; 363
	i32 156, ; 364
	i32 200, ; 365
	i32 187, ; 366
	i32 121, ; 367
	i32 127, ; 368
	i32 316, ; 369
	i32 152, ; 370
	i32 249, ; 371
	i32 141, ; 372
	i32 236, ; 373
	i32 313, ; 374
	i32 20, ; 375
	i32 14, ; 376
	i32 135, ; 377
	i32 75, ; 378
	i32 59, ; 379
	i32 239, ; 380
	i32 167, ; 381
	i32 168, ; 382
	i32 205, ; 383
	i32 15, ; 384
	i32 74, ; 385
	i32 6, ; 386
	i32 23, ; 387
	i32 261, ; 388
	i32 220, ; 389
	i32 91, ; 390
	i32 314, ; 391
	i32 1, ; 392
	i32 136, ; 393
	i32 262, ; 394
	i32 284, ; 395
	i32 134, ; 396
	i32 69, ; 397
	i32 146, ; 398
	i32 323, ; 399
	i32 302, ; 400
	i32 253, ; 401
	i32 193, ; 402
	i32 88, ; 403
	i32 96, ; 404
	i32 243, ; 405
	i32 248, ; 406
	i32 318, ; 407
	i32 31, ; 408
	i32 215, ; 409
	i32 45, ; 410
	i32 257, ; 411
	i32 183, ; 412
	i32 200, ; 413
	i32 173, ; 414
	i32 217, ; 415
	i32 222, ; 416
	i32 109, ; 417
	i32 158, ; 418
	i32 35, ; 419
	i32 22, ; 420
	i32 174, ; 421
	i32 114, ; 422
	i32 57, ; 423
	i32 282, ; 424
	i32 144, ; 425
	i32 118, ; 426
	i32 120, ; 427
	i32 110, ; 428
	i32 224, ; 429
	i32 139, ; 430
	i32 230, ; 431
	i32 196, ; 432
	i32 54, ; 433
	i32 105, ; 434
	i32 324, ; 435
	i32 210, ; 436
	i32 184, ; 437
	i32 206, ; 438
	i32 207, ; 439
	i32 133, ; 440
	i32 296, ; 441
	i32 287, ; 442
	i32 275, ; 443
	i32 330, ; 444
	i32 253, ; 445
	i32 211, ; 446
	i32 209, ; 447
	i32 159, ; 448
	i32 309, ; 449
	i32 240, ; 450
	i32 163, ; 451
	i32 132, ; 452
	i32 275, ; 453
	i32 161, ; 454
	i32 322, ; 455
	i32 264, ; 456
	i32 218, ; 457
	i32 183, ; 458
	i32 140, ; 459
	i32 287, ; 460
	i32 283, ; 461
	i32 169, ; 462
	i32 208, ; 463
	i32 217, ; 464
	i32 176, ; 465
	i32 225, ; 466
	i32 292, ; 467
	i32 40, ; 468
	i32 251, ; 469
	i32 81, ; 470
	i32 56, ; 471
	i32 37, ; 472
	i32 97, ; 473
	i32 166, ; 474
	i32 172, ; 475
	i32 288, ; 476
	i32 82, ; 477
	i32 227, ; 478
	i32 98, ; 479
	i32 30, ; 480
	i32 159, ; 481
	i32 212, ; 482
	i32 18, ; 483
	i32 127, ; 484
	i32 119, ; 485
	i32 247, ; 486
	i32 278, ; 487
	i32 260, ; 488
	i32 212, ; 489
	i32 280, ; 490
	i32 165, ; 491
	i32 255, ; 492
	i32 215, ; 493
	i32 337, ; 494
	i32 277, ; 495
	i32 268, ; 496
	i32 170, ; 497
	i32 16, ; 498
	i32 185, ; 499
	i32 144, ; 500
	i32 315, ; 501
	i32 203, ; 502
	i32 125, ; 503
	i32 118, ; 504
	i32 38, ; 505
	i32 115, ; 506
	i32 47, ; 507
	i32 142, ; 508
	i32 117, ; 509
	i32 34, ; 510
	i32 178, ; 511
	i32 95, ; 512
	i32 53, ; 513
	i32 269, ; 514
	i32 129, ; 515
	i32 153, ; 516
	i32 185, ; 517
	i32 24, ; 518
	i32 161, ; 519
	i32 246, ; 520
	i32 218, ; 521
	i32 148, ; 522
	i32 104, ; 523
	i32 89, ; 524
	i32 234, ; 525
	i32 60, ; 526
	i32 142, ; 527
	i32 100, ; 528
	i32 5, ; 529
	i32 13, ; 530
	i32 122, ; 531
	i32 135, ; 532
	i32 28, ; 533
	i32 310, ; 534
	i32 199, ; 535
	i32 72, ; 536
	i32 244, ; 537
	i32 24, ; 538
	i32 232, ; 539
	i32 273, ; 540
	i32 270, ; 541
	i32 327, ; 542
	i32 137, ; 543
	i32 225, ; 544
	i32 241, ; 545
	i32 168, ; 546
	i32 201, ; 547
	i32 274, ; 548
	i32 306, ; 549
	i32 101, ; 550
	i32 123, ; 551
	i32 245, ; 552
	i32 189, ; 553
	i32 163, ; 554
	i32 167, ; 555
	i32 248, ; 556
	i32 39, ; 557
	i32 204, ; 558
	i32 314, ; 559
	i32 17, ; 560
	i32 171, ; 561
	i32 327, ; 562
	i32 326, ; 563
	i32 137, ; 564
	i32 150, ; 565
	i32 237, ; 566
	i32 155, ; 567
	i32 130, ; 568
	i32 19, ; 569
	i32 65, ; 570
	i32 180, ; 571
	i32 147, ; 572
	i32 173, ; 573
	i32 47, ; 574
	i32 216, ; 575
	i32 334, ; 576
	i32 223, ; 577
	i32 79, ; 578
	i32 61, ; 579
	i32 106, ; 580
	i32 272, ; 581
	i32 227, ; 582
	i32 49, ; 583
	i32 258, ; 584
	i32 331, ; 585
	i32 269, ; 586
	i32 14, ; 587
	i32 188, ; 588
	i32 68, ; 589
	i32 171, ; 590
	i32 233, ; 591
	i32 237, ; 592
	i32 213, ; 593
	i32 336, ; 594
	i32 198, ; 595
	i32 78, ; 596
	i32 242, ; 597
	i32 108, ; 598
	i32 226, ; 599
	i32 268, ; 600
	i32 67, ; 601
	i32 63, ; 602
	i32 27, ; 603
	i32 160, ; 604
	i32 235, ; 605
	i32 10, ; 606
	i32 204, ; 607
	i32 11, ; 608
	i32 175, ; 609
	i32 78, ; 610
	i32 126, ; 611
	i32 83, ; 612
	i32 190, ; 613
	i32 66, ; 614
	i32 107, ; 615
	i32 65, ; 616
	i32 128, ; 617
	i32 122, ; 618
	i32 77, ; 619
	i32 283, ; 620
	i32 273, ; 621
	i32 335, ; 622
	i32 8, ; 623
	i32 241, ; 624
	i32 2, ; 625
	i32 44, ; 626
	i32 286, ; 627
	i32 156, ; 628
	i32 128, ; 629
	i32 271, ; 630
	i32 23, ; 631
	i32 0, ; 632
	i32 133, ; 633
	i32 229, ; 634
	i32 260, ; 635
	i32 330, ; 636
	i32 312, ; 637
	i32 29, ; 638
	i32 228, ; 639
	i32 62, ; 640
	i32 206, ; 641
	i32 90, ; 642
	i32 87, ; 643
	i32 148, ; 644
	i32 208, ; 645
	i32 36, ; 646
	i32 86, ; 647
	i32 249, ; 648
	i32 186, ; 649
	i32 325, ; 650
	i32 320, ; 651
	i32 189, ; 652
	i32 50, ; 653
	i32 6, ; 654
	i32 90, ; 655
	i32 332, ; 656
	i32 21, ; 657
	i32 162, ; 658
	i32 96, ; 659
	i32 50, ; 660
	i32 113, ; 661
	i32 265, ; 662
	i32 130, ; 663
	i32 184, ; 664
	i32 76, ; 665
	i32 27, ; 666
	i32 242, ; 667
	i32 264, ; 668
	i32 7, ; 669
	i32 214, ; 670
	i32 205, ; 671
	i32 177, ; 672
	i32 110, ; 673
	i32 265, ; 674
	i32 251 ; 675
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
