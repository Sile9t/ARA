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

@assembly_image_cache = dso_local local_unnamed_addr global [342 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [678 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 262
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 296
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 65960268, ; 8: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 212
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 337
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 210
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 280
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 280
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 300
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 236
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 282
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 334
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 335
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 234
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 256
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 239
	i32 276479776, ; 37: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 258
	i32 280482487, ; 39: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 255
	i32 280992041, ; 40: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 306
	i32 291076382, ; 41: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 42: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 43: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 334
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 225
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 46: Microsoft.SqlServer.Server => 0x13ada4fd => 211
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 319
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 257
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 318
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 338
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 59: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 330
	i32 441335492, ; 60: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 240
	i32 442565967, ; 61: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 62: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 253
	i32 451504562, ; 63: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 64: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 65: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 66: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 67: System.dll => 0x1bff388e => 164
	i32 476646585, ; 68: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 255
	i32 485463106, ; 69: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 199
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 268
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 317
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 311
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 196
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 76: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 300
	i32 530272170, ; 77: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 192
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 82: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 180
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 293
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 291
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 87: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 325
	i32 597488923, ; 88: CommunityToolkit.Maui => 0x239cf51b => 176
	i32 601371474, ; 89: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 90: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 245
	i32 627931235, ; 93: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 323
	i32 639843206, ; 94: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 251
	i32 643868501, ; 95: System.Net => 0x2660a755 => 81
	i32 662205335, ; 96: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 97: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 287
	i32 666292255, ; 98: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 232
	i32 672442732, ; 99: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 100: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 101: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 305
	i32 690569205, ; 102: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 302
	i32 693804605, ; 104: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 105: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 106: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 297
	i32 700358131, ; 107: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 108: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 320
	i32 709557578, ; 109: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 308
	i32 720511267, ; 110: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 301
	i32 722857257, ; 111: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 112: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 113: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 114: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 222
	i32 759454413, ; 115: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 116: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 117: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 118: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 329
	i32 789151979, ; 119: Microsoft.Extensions.Options => 0x2f0980eb => 195
	i32 790371945, ; 120: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 246
	i32 804715423, ; 121: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 260
	i32 809851609, ; 123: System.Drawing.Common.dll => 0x30455ad9 => 214
	i32 823281589, ; 124: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 125: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 126: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 127: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 128: Xamarin.AndroidX.Print => 0x3246f6cd => 273
	i32 873119928, ; 129: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 130: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 131: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 132: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 133: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 134: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 332
	i32 928116545, ; 135: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 296
	i32 952186615, ; 136: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 137: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 301
	i32 966729478, ; 138: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 294
	i32 967690846, ; 139: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 257
	i32 975236339, ; 140: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 141: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 142: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 143: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 144: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 145: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 146: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 147: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 277
	i32 1019214401, ; 148: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 149: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 191
	i32 1029334545, ; 150: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 307
	i32 1031528504, ; 151: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 295
	i32 1035644815, ; 152: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 230
	i32 1036536393, ; 153: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 154: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 155: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 264
	i32 1062017875, ; 156: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 198
	i32 1067306892, ; 157: GoogleGson => 0x3f9dcf8c => 179
	i32 1082857460, ; 158: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 159: Xamarin.Kotlin.StdLib => 0x409e66d8 => 298
	i32 1098259244, ; 160: System => 0x41761b2c => 164
	i32 1118262833, ; 161: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 320
	i32 1121599056, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 263
	i32 1127624469, ; 163: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 194
	i32 1138436374, ; 164: Microsoft.Data.SqlClient.dll => 0x43db2916 => 181
	i32 1145483052, ; 165: System.Windows.Extensions.dll => 0x4446af2c => 220
	i32 1149092582, ; 166: Xamarin.AndroidX.Window => 0x447dc2e6 => 290
	i32 1157931901, ; 167: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 183
	i32 1168523401, ; 168: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 326
	i32 1170634674, ; 169: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 170: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 286
	i32 1178241025, ; 171: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 271
	i32 1202000627, ; 172: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 183
	i32 1203215381, ; 173: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 324
	i32 1204270330, ; 174: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 232
	i32 1204575371, ; 175: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 187
	i32 1208641965, ; 176: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 177: CommunityToolkit.Mvvm => 0x4868cc7b => 178
	i32 1219128291, ; 178: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 179: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 322
	i32 1243150071, ; 180: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 291
	i32 1253011324, ; 181: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 182: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 306
	i32 1264511973, ; 183: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 281
	i32 1267360935, ; 184: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 285
	i32 1273260888, ; 185: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 237
	i32 1275534314, ; 186: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 302
	i32 1278448581, ; 187: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 229
	i32 1293217323, ; 188: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 248
	i32 1309188875, ; 189: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 190: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 290
	i32 1324164729, ; 191: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 192: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 193: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 194: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 336
	i32 1376866003, ; 195: Xamarin.AndroidX.SavedState => 0x52114ed3 => 277
	i32 1379779777, ; 196: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 197: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 198: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 241
	i32 1408764838, ; 199: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 200: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 201: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 202: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 304
	i32 1434145427, ; 203: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 204: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 294
	i32 1439761251, ; 205: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 206: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1452416952, ; 207: AutoMapper => 0x56921fb8 => 173
	i32 1453312822, ; 208: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 209: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 210: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 211: System.IdentityModel.Tokens.Jwt => 0x57137723 => 215
	i32 1461004990, ; 212: es\Microsoft.Maui.Controls.resources => 0x57152abe => 310
	i32 1461234159, ; 213: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 214: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 215: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 216: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 231
	i32 1470490898, ; 217: Microsoft.Extensions.Primitives => 0x57a5e912 => 196
	i32 1479771757, ; 218: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 219: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 220: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 221: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 278
	i32 1493001747, ; 222: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 314
	i32 1498168481, ; 223: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 200
	i32 1514721132, ; 224: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 309
	i32 1536373174, ; 225: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 226: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 227: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 228: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 229: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 329
	i32 1551635426, ; 230: ApartmentReservationApp => 0x5c7c13e2 => 0
	i32 1565310744, ; 231: System.Runtime.Caching => 0x5d4cbf18 => 217
	i32 1565862583, ; 232: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 233: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 234: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 235: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 236: Azure.Identity => 0x5e501131 => 175
	i32 1582372066, ; 237: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 247
	i32 1592978981, ; 238: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 239: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 295
	i32 1601112923, ; 240: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 241: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 242: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 243: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 267
	i32 1622358360, ; 244: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 245: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 289
	i32 1628113371, ; 246: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 203
	i32 1634654947, ; 247: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 177
	i32 1635184631, ; 248: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 251
	i32 1636350590, ; 249: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 244
	i32 1639515021, ; 250: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 251: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 252: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 253: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 254: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 283
	i32 1658251792, ; 255: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 292
	i32 1670060433, ; 256: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 239
	i32 1675553242, ; 257: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 258: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 259: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 260: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 261: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 182
	i32 1691477237, ; 262: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 263: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 264: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 299
	i32 1701541528, ; 265: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 266: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 260
	i32 1726116996, ; 267: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 268: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 269: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 235
	i32 1736233607, ; 270: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 327
	i32 1743415430, ; 271: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 305
	i32 1744735666, ; 272: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 273: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 274: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 275: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 276: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 277: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 278: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 282
	i32 1770582343, ; 279: Microsoft.Extensions.Logging.dll => 0x6988f147 => 192
	i32 1776026572, ; 280: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 281: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 282: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 283: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 321
	i32 1788241197, ; 284: Xamarin.AndroidX.Fragment => 0x6a96652d => 253
	i32 1793755602, ; 285: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 313
	i32 1794500907, ; 286: Microsoft.Identity.Client.dll => 0x6af5e92b => 197
	i32 1796167890, ; 287: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 180
	i32 1808609942, ; 288: Xamarin.AndroidX.Loader => 0x6bcd3296 => 267
	i32 1813058853, ; 289: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 298
	i32 1813201214, ; 290: Xamarin.Google.Android.Material => 0x6c13413e => 292
	i32 1818569960, ; 291: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 272
	i32 1818787751, ; 292: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 293: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 294: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 295: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 193
	i32 1829150748, ; 296: System.Windows.Extensions => 0x6d06a01c => 220
	i32 1842015223, ; 297: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 333
	i32 1847515442, ; 298: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 222
	i32 1853025655, ; 299: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 330
	i32 1858542181, ; 300: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 301: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 302: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 203
	i32 1875935024, ; 303: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 312
	i32 1879696579, ; 304: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 305: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 233
	i32 1888955245, ; 306: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 307: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 308: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 309: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 310: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 311: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 312: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 313: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 279
	i32 1968388702, ; 314: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 188
	i32 1983156543, ; 315: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 299
	i32 1985761444, ; 316: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 224
	i32 1986222447, ; 317: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 204
	i32 2003115576, ; 318: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 309
	i32 2011961780, ; 319: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 320: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 264
	i32 2025202353, ; 321: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 304
	i32 2031445118, ; 322: AutoMapper.dll => 0x7915647e => 173
	i32 2031763787, ; 323: Xamarin.Android.Glide => 0x791a414b => 221
	i32 2040764568, ; 324: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 198
	i32 2045470958, ; 325: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 326: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 259
	i32 2060060697, ; 327: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 328: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 308
	i32 2070888862, ; 329: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 330: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 331: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 332: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 333: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 334: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 335: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 336: Microsoft.Maui => 0x80bd55ad => 208
	i32 2169148018, ; 337: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 316
	i32 2181898931, ; 338: Microsoft.Extensions.Options.dll => 0x820d22b3 => 195
	i32 2192057212, ; 339: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 193
	i32 2193016926, ; 340: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 341: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 303
	i32 2201231467, ; 342: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 343: it\Microsoft.Maui.Controls.resources => 0x839595db => 318
	i32 2217644978, ; 344: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 286
	i32 2222056684, ; 345: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 346: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 268
	i32 2252106437, ; 347: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 348: Microsoft.EntityFrameworkCore => 0x86487ec9 => 182
	i32 2253551641, ; 349: Microsoft.IdentityModel.Protocols => 0x86527819 => 202
	i32 2256313426, ; 350: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 351: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 352: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 189
	i32 2267999099, ; 353: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 223
	i32 2270573516, ; 354: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 312
	i32 2279755925, ; 355: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 275
	i32 2293034957, ; 356: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 357: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 358: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 359: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 322
	i32 2305521784, ; 360: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 361: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 227
	i32 2320631194, ; 362: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 363: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 364: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 365: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 366: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 367: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 201
	i32 2371007202, ; 368: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 188
	i32 2378619854, ; 369: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 370: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 371: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 317
	i32 2401565422, ; 372: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 373: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 250
	i32 2421380589, ; 374: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 375: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 237
	i32 2427813419, ; 376: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 314
	i32 2435356389, ; 377: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 378: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 379: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 380: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 381: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 382: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 240
	i32 2471841756, ; 383: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 384: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 385: Microsoft.Maui.Controls => 0x93dba8a1 => 206
	i32 2483903535, ; 386: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 387: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 388: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 389: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 390: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 262
	i32 2522472828, ; 391: Xamarin.Android.Glide.dll => 0x9659e17c => 221
	i32 2538310050, ; 392: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 393: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 315
	i32 2562349572, ; 394: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 395: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 396: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 263
	i32 2581819634, ; 397: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 285
	i32 2585220780, ; 398: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 399: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 400: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 401: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 324
	i32 2605712449, ; 402: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 303
	i32 2615233544, ; 403: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 254
	i32 2616218305, ; 404: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 194
	i32 2617129537, ; 405: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 406: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 407: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 244
	i32 2624644809, ; 408: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 249
	i32 2626831493, ; 409: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 319
	i32 2627185994, ; 410: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 411: System.Memory.Data => 0x9ca74fdc => 216
	i32 2629843544, ; 412: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 413: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 258
	i32 2634653062, ; 414: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 184
	i32 2640290731, ; 415: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 201
	i32 2640706905, ; 416: Azure.Core => 0x9d65fd59 => 174
	i32 2660759594, ; 417: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 218
	i32 2663391936, ; 418: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 223
	i32 2663698177, ; 419: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 420: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 421: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 422: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 423: Azure.Identity.dll => 0x9f9148fa => 175
	i32 2686887180, ; 424: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 425: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 426: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 283
	i32 2715334215, ; 427: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 428: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 429: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 430: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 431: Xamarin.AndroidX.Activity => 0xa2e0939b => 225
	i32 2735172069, ; 432: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 433: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 231
	i32 2740051746, ; 434: Microsoft.Identity.Client => 0xa351df22 => 197
	i32 2740948882, ; 435: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 436: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 437: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 325
	i32 2755098380, ; 438: Microsoft.SqlServer.Server.dll => 0xa437770c => 211
	i32 2755643133, ; 439: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 185
	i32 2758225723, ; 440: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 207
	i32 2764765095, ; 441: Microsoft.Maui.dll => 0xa4caf7a7 => 208
	i32 2765824710, ; 442: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 443: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 297
	i32 2778768386, ; 444: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 288
	i32 2779977773, ; 445: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 276
	i32 2785988530, ; 446: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 331
	i32 2788224221, ; 447: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 254
	i32 2795666278, ; 448: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 212
	i32 2801831435, ; 449: Microsoft.Maui.Graphics => 0xa7008e0b => 210
	i32 2803228030, ; 450: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 451: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 310
	i32 2810250172, ; 452: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 241
	i32 2819470561, ; 453: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 454: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 455: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 276
	i32 2824502124, ; 456: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 457: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 323
	i32 2838993487, ; 458: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 265
	i32 2841355853, ; 459: System.Security.Permissions => 0xa95ba64d => 219
	i32 2847789619, ; 460: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 184
	i32 2849599387, ; 461: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 462: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 288
	i32 2855708567, ; 463: Xamarin.AndroidX.Transition => 0xaa36a797 => 284
	i32 2861098320, ; 464: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 465: Microsoft.Maui.Essentials => 0xaa8a4878 => 209
	i32 2867946736, ; 466: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 218
	i32 2868488919, ; 467: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 177
	i32 2870099610, ; 468: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 226
	i32 2875164099, ; 469: Jsr305Binding.dll => 0xab5f85c3 => 293
	i32 2875220617, ; 470: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 471: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 252
	i32 2887636118, ; 472: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 473: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 474: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 475: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 476: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 477: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 478: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 289
	i32 2919462931, ; 479: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 480: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 228
	i32 2936416060, ; 481: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 482: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 483: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 484: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 213
	i32 2959614098, ; 485: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 486: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 487: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 488: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 248
	i32 2987532451, ; 489: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 279
	i32 2996846495, ; 490: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 261
	i32 3012788804, ; 491: System.Configuration.ConfigurationManager => 0xb3938244 => 213
	i32 3016983068, ; 492: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 281
	i32 3023353419, ; 493: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 494: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 256
	i32 3033605958, ; 495: System.Memory.Data.dll => 0xb4d12746 => 216
	i32 3038032645, ; 496: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 338
	i32 3056245963, ; 497: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 278
	i32 3057625584, ; 498: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 269
	i32 3059408633, ; 499: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 500: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 501: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 186
	i32 3075834255, ; 502: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 503: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 316
	i32 3084678329, ; 504: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 204
	i32 3090735792, ; 505: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 506: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 507: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 508: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 509: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 510: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 511: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 512: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 513: GoogleGson.dll => 0xbba64c02 => 179
	i32 3159123045, ; 514: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 515: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 516: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 270
	i32 3192346100, ; 517: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 518: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 519: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 186
	i32 3204380047, ; 520: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 521: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 522: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 247
	i32 3213246214, ; 523: System.Security.Permissions.dll => 0xbf863f06 => 219
	i32 3220365878, ; 524: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 525: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 526: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 527: Xamarin.AndroidX.CardView => 0xc235e84d => 235
	i32 3265493905, ; 528: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 529: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 530: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 531: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 532: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 533: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 534: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 535: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 536: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 311
	i32 3312457198, ; 537: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 200
	i32 3316684772, ; 538: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 539: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 245
	i32 3317144872, ; 540: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 541: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 233
	i32 3345895724, ; 542: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 274
	i32 3346324047, ; 543: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 271
	i32 3357674450, ; 544: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 328
	i32 3358260929, ; 545: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 546: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 226
	i32 3362522851, ; 547: Xamarin.AndroidX.Core => 0xc86c06e3 => 242
	i32 3366347497, ; 548: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 549: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 202
	i32 3374999561, ; 550: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 275
	i32 3381016424, ; 551: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 307
	i32 3395150330, ; 552: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 553: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 554: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 246
	i32 3428513518, ; 555: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 190
	i32 3429136800, ; 556: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 557: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 558: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 249
	i32 3445260447, ; 559: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 560: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 205
	i32 3463511458, ; 561: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 315
	i32 3471940407, ; 562: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 563: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 564: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 328
	i32 3484440000, ; 565: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 327
	i32 3485117614, ; 566: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 567: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 568: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 238
	i32 3509114376, ; 569: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 570: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 571: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 572: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 573: Microsoft.Data.SqlClient => 0xd35114f1 => 181
	i32 3560100363, ; 574: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 575: Azure.Core.dll => 0xd44f0a73 => 174
	i32 3570554715, ; 576: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 577: System.Runtime.Caching.dll => 0xd4d3289f => 217
	i32 3580758918, ; 578: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 335
	i32 3597029428, ; 579: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 224
	i32 3598340787, ; 580: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 581: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 582: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 583: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 273
	i32 3633644679, ; 584: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 228
	i32 3638274909, ; 585: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 586: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 259
	i32 3643446276, ; 587: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 332
	i32 3643854240, ; 588: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 270
	i32 3645089577, ; 589: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 590: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 189
	i32 3660523487, ; 591: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 592: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 593: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 234
	i32 3684561358, ; 594: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 238
	i32 3689375977, ; 595: System.Drawing.Common => 0xdbe768e9 => 214
	i32 3697841164, ; 596: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 337
	i32 3700591436, ; 597: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 199
	i32 3700866549, ; 598: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 599: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 243
	i32 3716563718, ; 600: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 601: Xamarin.AndroidX.Annotation => 0xdda814c6 => 227
	i32 3724971120, ; 602: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 269
	i32 3732100267, ; 603: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 604: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 605: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 606: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 607: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 236
	i32 3792276235, ; 608: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 609: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 205
	i32 3802395368, ; 610: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 611: CommunityToolkit.Maui.dll => 0xe3886bf7 => 176
	i32 3819260425, ; 612: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 613: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 614: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 615: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 191
	i32 3844307129, ; 616: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 617: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 618: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 619: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 620: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 621: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 622: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 284
	i32 3888767677, ; 623: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 274
	i32 3889960447, ; 624: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 336
	i32 3896106733, ; 625: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 626: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 242
	i32 3901907137, ; 627: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 628: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 629: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 287
	i32 3928044579, ; 630: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 631: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 632: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 272
	i32 3945713374, ; 633: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3948071813, ; 634: ApartmentReservationApp.dll => 0xeb52cb85 => 0
	i32 3953953790, ; 635: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 636: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 230
	i32 3959773229, ; 637: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 261
	i32 3980434154, ; 638: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 331
	i32 3987592930, ; 639: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 313
	i32 4003436829, ; 640: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 641: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 229
	i32 4025784931, ; 642: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 643: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 207
	i32 4054681211, ; 644: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 645: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 646: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 647: Microsoft.Maui.Essentials.dll => 0xf40add04 => 209
	i32 4099507663, ; 648: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 649: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 650: Xamarin.AndroidX.Emoji2 => 0xf479582c => 250
	i32 4101842092, ; 651: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 187
	i32 4102112229, ; 652: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 326
	i32 4125707920, ; 653: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 321
	i32 4126470640, ; 654: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 190
	i32 4127667938, ; 655: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 656: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 657: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 658: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 333
	i32 4151237749, ; 659: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 660: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 661: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 662: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 663: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 664: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 266
	i32 4185676441, ; 665: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 666: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 185
	i32 4196529839, ; 667: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 668: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 669: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 243
	i32 4258378803, ; 670: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 265
	i32 4260525087, ; 671: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 672: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 215
	i32 4271975918, ; 673: Microsoft.Maui.Controls.dll => 0xfea12dee => 206
	i32 4274623895, ; 674: CommunityToolkit.Mvvm.dll => 0xfec99597 => 178
	i32 4274976490, ; 675: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 676: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 266
	i32 4294763496 ; 677: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 252
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [678 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 262, ; 3
	i32 296, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 212, ; 8
	i32 30, ; 9
	i32 337, ; 10
	i32 124, ; 11
	i32 210, ; 12
	i32 102, ; 13
	i32 280, ; 14
	i32 107, ; 15
	i32 280, ; 16
	i32 139, ; 17
	i32 300, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 236, ; 22
	i32 132, ; 23
	i32 282, ; 24
	i32 151, ; 25
	i32 334, ; 26
	i32 335, ; 27
	i32 18, ; 28
	i32 234, ; 29
	i32 26, ; 30
	i32 256, ; 31
	i32 1, ; 32
	i32 59, ; 33
	i32 42, ; 34
	i32 91, ; 35
	i32 239, ; 36
	i32 147, ; 37
	i32 258, ; 38
	i32 255, ; 39
	i32 306, ; 40
	i32 54, ; 41
	i32 69, ; 42
	i32 334, ; 43
	i32 225, ; 44
	i32 83, ; 45
	i32 211, ; 46
	i32 319, ; 47
	i32 257, ; 48
	i32 318, ; 49
	i32 131, ; 50
	i32 55, ; 51
	i32 149, ; 52
	i32 74, ; 53
	i32 145, ; 54
	i32 62, ; 55
	i32 146, ; 56
	i32 338, ; 57
	i32 165, ; 58
	i32 330, ; 59
	i32 240, ; 60
	i32 12, ; 61
	i32 253, ; 62
	i32 125, ; 63
	i32 152, ; 64
	i32 113, ; 65
	i32 166, ; 66
	i32 164, ; 67
	i32 255, ; 68
	i32 199, ; 69
	i32 268, ; 70
	i32 84, ; 71
	i32 317, ; 72
	i32 311, ; 73
	i32 196, ; 74
	i32 150, ; 75
	i32 300, ; 76
	i32 60, ; 77
	i32 192, ; 78
	i32 51, ; 79
	i32 103, ; 80
	i32 114, ; 81
	i32 180, ; 82
	i32 40, ; 83
	i32 293, ; 84
	i32 291, ; 85
	i32 120, ; 86
	i32 325, ; 87
	i32 176, ; 88
	i32 52, ; 89
	i32 44, ; 90
	i32 119, ; 91
	i32 245, ; 92
	i32 323, ; 93
	i32 251, ; 94
	i32 81, ; 95
	i32 136, ; 96
	i32 287, ; 97
	i32 232, ; 98
	i32 8, ; 99
	i32 73, ; 100
	i32 305, ; 101
	i32 155, ; 102
	i32 302, ; 103
	i32 154, ; 104
	i32 92, ; 105
	i32 297, ; 106
	i32 45, ; 107
	i32 320, ; 108
	i32 308, ; 109
	i32 301, ; 110
	i32 109, ; 111
	i32 129, ; 112
	i32 25, ; 113
	i32 222, ; 114
	i32 72, ; 115
	i32 55, ; 116
	i32 46, ; 117
	i32 329, ; 118
	i32 195, ; 119
	i32 246, ; 120
	i32 22, ; 121
	i32 260, ; 122
	i32 214, ; 123
	i32 86, ; 124
	i32 43, ; 125
	i32 160, ; 126
	i32 71, ; 127
	i32 273, ; 128
	i32 3, ; 129
	i32 42, ; 130
	i32 63, ; 131
	i32 16, ; 132
	i32 53, ; 133
	i32 332, ; 134
	i32 296, ; 135
	i32 105, ; 136
	i32 301, ; 137
	i32 294, ; 138
	i32 257, ; 139
	i32 34, ; 140
	i32 158, ; 141
	i32 85, ; 142
	i32 32, ; 143
	i32 12, ; 144
	i32 51, ; 145
	i32 56, ; 146
	i32 277, ; 147
	i32 36, ; 148
	i32 191, ; 149
	i32 307, ; 150
	i32 295, ; 151
	i32 230, ; 152
	i32 35, ; 153
	i32 58, ; 154
	i32 264, ; 155
	i32 198, ; 156
	i32 179, ; 157
	i32 17, ; 158
	i32 298, ; 159
	i32 164, ; 160
	i32 320, ; 161
	i32 263, ; 162
	i32 194, ; 163
	i32 181, ; 164
	i32 220, ; 165
	i32 290, ; 166
	i32 183, ; 167
	i32 326, ; 168
	i32 153, ; 169
	i32 286, ; 170
	i32 271, ; 171
	i32 183, ; 172
	i32 324, ; 173
	i32 232, ; 174
	i32 187, ; 175
	i32 29, ; 176
	i32 178, ; 177
	i32 52, ; 178
	i32 322, ; 179
	i32 291, ; 180
	i32 5, ; 181
	i32 306, ; 182
	i32 281, ; 183
	i32 285, ; 184
	i32 237, ; 185
	i32 302, ; 186
	i32 229, ; 187
	i32 248, ; 188
	i32 85, ; 189
	i32 290, ; 190
	i32 61, ; 191
	i32 112, ; 192
	i32 57, ; 193
	i32 336, ; 194
	i32 277, ; 195
	i32 99, ; 196
	i32 19, ; 197
	i32 241, ; 198
	i32 111, ; 199
	i32 101, ; 200
	i32 102, ; 201
	i32 304, ; 202
	i32 104, ; 203
	i32 294, ; 204
	i32 71, ; 205
	i32 38, ; 206
	i32 173, ; 207
	i32 32, ; 208
	i32 103, ; 209
	i32 73, ; 210
	i32 215, ; 211
	i32 310, ; 212
	i32 9, ; 213
	i32 123, ; 214
	i32 46, ; 215
	i32 231, ; 216
	i32 196, ; 217
	i32 9, ; 218
	i32 43, ; 219
	i32 4, ; 220
	i32 278, ; 221
	i32 314, ; 222
	i32 200, ; 223
	i32 309, ; 224
	i32 31, ; 225
	i32 138, ; 226
	i32 92, ; 227
	i32 93, ; 228
	i32 329, ; 229
	i32 0, ; 230
	i32 217, ; 231
	i32 49, ; 232
	i32 141, ; 233
	i32 112, ; 234
	i32 140, ; 235
	i32 175, ; 236
	i32 247, ; 237
	i32 115, ; 238
	i32 295, ; 239
	i32 157, ; 240
	i32 76, ; 241
	i32 79, ; 242
	i32 267, ; 243
	i32 37, ; 244
	i32 289, ; 245
	i32 203, ; 246
	i32 177, ; 247
	i32 251, ; 248
	i32 244, ; 249
	i32 64, ; 250
	i32 138, ; 251
	i32 15, ; 252
	i32 116, ; 253
	i32 283, ; 254
	i32 292, ; 255
	i32 239, ; 256
	i32 48, ; 257
	i32 70, ; 258
	i32 80, ; 259
	i32 126, ; 260
	i32 182, ; 261
	i32 94, ; 262
	i32 121, ; 263
	i32 299, ; 264
	i32 26, ; 265
	i32 260, ; 266
	i32 97, ; 267
	i32 28, ; 268
	i32 235, ; 269
	i32 327, ; 270
	i32 305, ; 271
	i32 149, ; 272
	i32 169, ; 273
	i32 4, ; 274
	i32 98, ; 275
	i32 33, ; 276
	i32 93, ; 277
	i32 282, ; 278
	i32 192, ; 279
	i32 21, ; 280
	i32 41, ; 281
	i32 170, ; 282
	i32 321, ; 283
	i32 253, ; 284
	i32 313, ; 285
	i32 197, ; 286
	i32 180, ; 287
	i32 267, ; 288
	i32 298, ; 289
	i32 292, ; 290
	i32 272, ; 291
	i32 2, ; 292
	i32 134, ; 293
	i32 111, ; 294
	i32 193, ; 295
	i32 220, ; 296
	i32 333, ; 297
	i32 222, ; 298
	i32 330, ; 299
	i32 58, ; 300
	i32 95, ; 301
	i32 203, ; 302
	i32 312, ; 303
	i32 39, ; 304
	i32 233, ; 305
	i32 25, ; 306
	i32 94, ; 307
	i32 89, ; 308
	i32 99, ; 309
	i32 10, ; 310
	i32 87, ; 311
	i32 100, ; 312
	i32 279, ; 313
	i32 188, ; 314
	i32 299, ; 315
	i32 224, ; 316
	i32 204, ; 317
	i32 309, ; 318
	i32 7, ; 319
	i32 264, ; 320
	i32 304, ; 321
	i32 173, ; 322
	i32 221, ; 323
	i32 198, ; 324
	i32 88, ; 325
	i32 259, ; 326
	i32 154, ; 327
	i32 308, ; 328
	i32 33, ; 329
	i32 116, ; 330
	i32 82, ; 331
	i32 20, ; 332
	i32 11, ; 333
	i32 162, ; 334
	i32 3, ; 335
	i32 208, ; 336
	i32 316, ; 337
	i32 195, ; 338
	i32 193, ; 339
	i32 84, ; 340
	i32 303, ; 341
	i32 64, ; 342
	i32 318, ; 343
	i32 286, ; 344
	i32 143, ; 345
	i32 268, ; 346
	i32 157, ; 347
	i32 182, ; 348
	i32 202, ; 349
	i32 41, ; 350
	i32 117, ; 351
	i32 189, ; 352
	i32 223, ; 353
	i32 312, ; 354
	i32 275, ; 355
	i32 131, ; 356
	i32 75, ; 357
	i32 66, ; 358
	i32 322, ; 359
	i32 172, ; 360
	i32 227, ; 361
	i32 143, ; 362
	i32 106, ; 363
	i32 151, ; 364
	i32 70, ; 365
	i32 156, ; 366
	i32 201, ; 367
	i32 188, ; 368
	i32 121, ; 369
	i32 127, ; 370
	i32 317, ; 371
	i32 152, ; 372
	i32 250, ; 373
	i32 141, ; 374
	i32 237, ; 375
	i32 314, ; 376
	i32 20, ; 377
	i32 14, ; 378
	i32 135, ; 379
	i32 75, ; 380
	i32 59, ; 381
	i32 240, ; 382
	i32 167, ; 383
	i32 168, ; 384
	i32 206, ; 385
	i32 15, ; 386
	i32 74, ; 387
	i32 6, ; 388
	i32 23, ; 389
	i32 262, ; 390
	i32 221, ; 391
	i32 91, ; 392
	i32 315, ; 393
	i32 1, ; 394
	i32 136, ; 395
	i32 263, ; 396
	i32 285, ; 397
	i32 134, ; 398
	i32 69, ; 399
	i32 146, ; 400
	i32 324, ; 401
	i32 303, ; 402
	i32 254, ; 403
	i32 194, ; 404
	i32 88, ; 405
	i32 96, ; 406
	i32 244, ; 407
	i32 249, ; 408
	i32 319, ; 409
	i32 31, ; 410
	i32 216, ; 411
	i32 45, ; 412
	i32 258, ; 413
	i32 184, ; 414
	i32 201, ; 415
	i32 174, ; 416
	i32 218, ; 417
	i32 223, ; 418
	i32 109, ; 419
	i32 158, ; 420
	i32 35, ; 421
	i32 22, ; 422
	i32 175, ; 423
	i32 114, ; 424
	i32 57, ; 425
	i32 283, ; 426
	i32 144, ; 427
	i32 118, ; 428
	i32 120, ; 429
	i32 110, ; 430
	i32 225, ; 431
	i32 139, ; 432
	i32 231, ; 433
	i32 197, ; 434
	i32 54, ; 435
	i32 105, ; 436
	i32 325, ; 437
	i32 211, ; 438
	i32 185, ; 439
	i32 207, ; 440
	i32 208, ; 441
	i32 133, ; 442
	i32 297, ; 443
	i32 288, ; 444
	i32 276, ; 445
	i32 331, ; 446
	i32 254, ; 447
	i32 212, ; 448
	i32 210, ; 449
	i32 159, ; 450
	i32 310, ; 451
	i32 241, ; 452
	i32 163, ; 453
	i32 132, ; 454
	i32 276, ; 455
	i32 161, ; 456
	i32 323, ; 457
	i32 265, ; 458
	i32 219, ; 459
	i32 184, ; 460
	i32 140, ; 461
	i32 288, ; 462
	i32 284, ; 463
	i32 169, ; 464
	i32 209, ; 465
	i32 218, ; 466
	i32 177, ; 467
	i32 226, ; 468
	i32 293, ; 469
	i32 40, ; 470
	i32 252, ; 471
	i32 81, ; 472
	i32 56, ; 473
	i32 37, ; 474
	i32 97, ; 475
	i32 166, ; 476
	i32 172, ; 477
	i32 289, ; 478
	i32 82, ; 479
	i32 228, ; 480
	i32 98, ; 481
	i32 30, ; 482
	i32 159, ; 483
	i32 213, ; 484
	i32 18, ; 485
	i32 127, ; 486
	i32 119, ; 487
	i32 248, ; 488
	i32 279, ; 489
	i32 261, ; 490
	i32 213, ; 491
	i32 281, ; 492
	i32 165, ; 493
	i32 256, ; 494
	i32 216, ; 495
	i32 338, ; 496
	i32 278, ; 497
	i32 269, ; 498
	i32 170, ; 499
	i32 16, ; 500
	i32 186, ; 501
	i32 144, ; 502
	i32 316, ; 503
	i32 204, ; 504
	i32 125, ; 505
	i32 118, ; 506
	i32 38, ; 507
	i32 115, ; 508
	i32 47, ; 509
	i32 142, ; 510
	i32 117, ; 511
	i32 34, ; 512
	i32 179, ; 513
	i32 95, ; 514
	i32 53, ; 515
	i32 270, ; 516
	i32 129, ; 517
	i32 153, ; 518
	i32 186, ; 519
	i32 24, ; 520
	i32 161, ; 521
	i32 247, ; 522
	i32 219, ; 523
	i32 148, ; 524
	i32 104, ; 525
	i32 89, ; 526
	i32 235, ; 527
	i32 60, ; 528
	i32 142, ; 529
	i32 100, ; 530
	i32 5, ; 531
	i32 13, ; 532
	i32 122, ; 533
	i32 135, ; 534
	i32 28, ; 535
	i32 311, ; 536
	i32 200, ; 537
	i32 72, ; 538
	i32 245, ; 539
	i32 24, ; 540
	i32 233, ; 541
	i32 274, ; 542
	i32 271, ; 543
	i32 328, ; 544
	i32 137, ; 545
	i32 226, ; 546
	i32 242, ; 547
	i32 168, ; 548
	i32 202, ; 549
	i32 275, ; 550
	i32 307, ; 551
	i32 101, ; 552
	i32 123, ; 553
	i32 246, ; 554
	i32 190, ; 555
	i32 163, ; 556
	i32 167, ; 557
	i32 249, ; 558
	i32 39, ; 559
	i32 205, ; 560
	i32 315, ; 561
	i32 17, ; 562
	i32 171, ; 563
	i32 328, ; 564
	i32 327, ; 565
	i32 137, ; 566
	i32 150, ; 567
	i32 238, ; 568
	i32 155, ; 569
	i32 130, ; 570
	i32 19, ; 571
	i32 65, ; 572
	i32 181, ; 573
	i32 147, ; 574
	i32 174, ; 575
	i32 47, ; 576
	i32 217, ; 577
	i32 335, ; 578
	i32 224, ; 579
	i32 79, ; 580
	i32 61, ; 581
	i32 106, ; 582
	i32 273, ; 583
	i32 228, ; 584
	i32 49, ; 585
	i32 259, ; 586
	i32 332, ; 587
	i32 270, ; 588
	i32 14, ; 589
	i32 189, ; 590
	i32 68, ; 591
	i32 171, ; 592
	i32 234, ; 593
	i32 238, ; 594
	i32 214, ; 595
	i32 337, ; 596
	i32 199, ; 597
	i32 78, ; 598
	i32 243, ; 599
	i32 108, ; 600
	i32 227, ; 601
	i32 269, ; 602
	i32 67, ; 603
	i32 63, ; 604
	i32 27, ; 605
	i32 160, ; 606
	i32 236, ; 607
	i32 10, ; 608
	i32 205, ; 609
	i32 11, ; 610
	i32 176, ; 611
	i32 78, ; 612
	i32 126, ; 613
	i32 83, ; 614
	i32 191, ; 615
	i32 66, ; 616
	i32 107, ; 617
	i32 65, ; 618
	i32 128, ; 619
	i32 122, ; 620
	i32 77, ; 621
	i32 284, ; 622
	i32 274, ; 623
	i32 336, ; 624
	i32 8, ; 625
	i32 242, ; 626
	i32 2, ; 627
	i32 44, ; 628
	i32 287, ; 629
	i32 156, ; 630
	i32 128, ; 631
	i32 272, ; 632
	i32 23, ; 633
	i32 0, ; 634
	i32 133, ; 635
	i32 230, ; 636
	i32 261, ; 637
	i32 331, ; 638
	i32 313, ; 639
	i32 29, ; 640
	i32 229, ; 641
	i32 62, ; 642
	i32 207, ; 643
	i32 90, ; 644
	i32 87, ; 645
	i32 148, ; 646
	i32 209, ; 647
	i32 36, ; 648
	i32 86, ; 649
	i32 250, ; 650
	i32 187, ; 651
	i32 326, ; 652
	i32 321, ; 653
	i32 190, ; 654
	i32 50, ; 655
	i32 6, ; 656
	i32 90, ; 657
	i32 333, ; 658
	i32 21, ; 659
	i32 162, ; 660
	i32 96, ; 661
	i32 50, ; 662
	i32 113, ; 663
	i32 266, ; 664
	i32 130, ; 665
	i32 185, ; 666
	i32 76, ; 667
	i32 27, ; 668
	i32 243, ; 669
	i32 265, ; 670
	i32 7, ; 671
	i32 215, ; 672
	i32 206, ; 673
	i32 178, ; 674
	i32 110, ; 675
	i32 266, ; 676
	i32 252 ; 677
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
