; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [116 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 6
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 36
	i64 702024105029695270, ; 2: System.Drawing.Common => 0x9be17343c0e7726 => 55
	i64 720058930071658100, ; 3: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 30
	i64 872800313462103108, ; 4: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 28
	i64 939843279080724073, ; 5: ExpandCalculator => 0xd0afe7b9a251669 => 3
	i64 996343623809489702, ; 6: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 44
	i64 1000557547492888992, ; 7: Mono.Security.dll => 0xde2b1c9cba651a0 => 57
	i64 1120440138749646132, ; 8: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 46
	i64 1425944114962822056, ; 9: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1507091876539346714, ; 10: Plugin.SimpleAudioPlayer.Abstractions => 0x14ea4413a9012f1a => 10
	i64 1624659445732251991, ; 11: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 20
	i64 1785689246005058196, ; 12: Xamanimation => 0x18c80ae8835dda94 => 18
	i64 1795316252682057001, ; 13: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 21
	i64 1836611346387731153, ; 14: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 36
	i64 1981742497975770890, ; 15: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 33
	i64 1986553961460820075, ; 16: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 39
	i64 2064708342624596306, ; 17: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 51
	i64 2165725771938924357, ; 18: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 22
	i64 2262844636196693701, ; 19: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 28
	i64 2270042405631800781, ; 20: Plugin.MaterialDesignControls.Android.dll => 0x1f80cf8a6cc1b5cd => 8
	i64 2329709569556905518, ; 21: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 32
	i64 2470498323731680442, ; 22: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 24
	i64 2547086958574651984, ; 23: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 19
	i64 2592350477072141967, ; 24: System.Xml.dll => 0x23f9e10627330e8f => 17
	i64 2624866290265602282, ; 25: mscorlib.dll => 0x246d65fbde2db8ea => 7
	i64 2960931600190307745, ; 26: Xamarin.Forms.Core => 0x2917579a49927da1 => 42
	i64 3017704767998173186, ; 27: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 46
	i64 3217125683692548758, ; 28: SegmentedControl.FormsPlugin.Abstractions => 0x2ca586c3a647b296 => 12
	i64 3289520064315143713, ; 29: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 31
	i64 3344514922410554693, ; 30: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 54
	i64 3366202020615461163, ; 31: ExpandCalculator.Android.dll => 0x2eb726e720fc992b => 0
	i64 3522470458906976663, ; 32: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 37
	i64 3531994851595924923, ; 33: System.Numerics => 0x31042a9aade235bb => 16
	i64 3727469159507183293, ; 34: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 35
	i64 4424758928462204584, ; 35: Xamanimation.dll => 0x3d67e6cd53ba4ea8 => 18
	i64 4525561845656915374, ; 36: System.ServiceModel.Internals => 0x3ece06856b710dae => 56
	i64 4794310189461587505, ; 37: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 19
	i64 4795410492532947900, ; 38: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 37
	i64 5037027636527892517, ; 39: Plugin.MaterialDesignControls.Android => 0x45e71df2b7120825 => 8
	i64 5142919913060024034, ; 40: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 43
	i64 5203618020066742981, ; 41: Xamarin.Essentials => 0x4836f704f0e652c5 => 41
	i64 5507995362134886206, ; 42: System.Core.dll => 0x4c705499688c873e => 14
	i64 6085203216496545422, ; 43: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 44
	i64 6086316965293125504, ; 44: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6401687960814735282, ; 45: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 32
	i64 6504860066809920875, ; 46: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 22
	i64 6548213210057960872, ; 47: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 27
	i64 6659513131007730089, ; 48: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 30
	i64 7143619849089632573, ; 49: SegmentedControl.FormsPlugin.Abstractions.dll => 0x63233c677b6ac93d => 12
	i64 7635363394907363464, ; 50: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 42
	i64 7637365915383206639, ; 51: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 41
	i64 7654504624184590948, ; 52: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7735352534559001595, ; 53: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 50
	i64 7836164640616011524, ; 54: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 20
	i64 8083354569033831015, ; 55: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 31
	i64 8084909493235303812, ; 56: Plugin.MaterialDesignControls.dll => 0x70335e5931794584 => 9
	i64 8086960272581648811, ; 57: Plugin.MaterialDesignControls => 0x703aa78577ece1ab => 9
	i64 8147553157842326134, ; 58: Xamarin.CommunityToolkit.Markup.dll => 0x7111ec6df1cdd276 => 40
	i64 8167236081217502503, ; 59: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 5
	i64 8187640529827139739, ; 60: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 53
	i64 8537064613166331693, ; 61: Plugin.SimpleAudioPlayer.dll => 0x7679bf08cc56372d => 11
	i64 8626175481042262068, ; 62: Java.Interop => 0x77b654e585b55834 => 5
	i64 8853378295825400934, ; 63: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 49
	i64 9324707631942237306, ; 64: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 21
	i64 9459989154142670598, ; 65: ExpandCalculator.dll => 0x8348a203b7b8cf06 => 3
	i64 9662334977499516867, ; 66: System.Numerics.dll => 0x8617827802b0cfc3 => 16
	i64 9678050649315576968, ; 67: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 24
	i64 9808709177481450983, ; 68: Mono.Android.dll => 0x881f890734e555e7 => 6
	i64 9998632235833408227, ; 69: Mono.Security => 0x8ac2470b209ebae3 => 57
	i64 10038780035334861115, ; 70: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10226222362177979215, ; 71: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 51
	i64 10229024438826829339, ; 72: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 27
	i64 10303118382221642606, ; 73: Plugin.SimpleAudioPlayer.Abstractions.dll => 0x8efc0794931e4b6e => 10
	i64 10321854143672141184, ; 74: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 48
	i64 10406448008575299332, ; 75: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 54
	i64 10430153318873392755, ; 76: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 25
	i64 11023048688141570732, ; 77: System.Core => 0x98f9bc61168392ac => 14
	i64 11037814507248023548, ; 78: System.Xml => 0x992e31d0412bf7fc => 17
	i64 11122995063473561350, ; 79: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 39
	i64 11162124722117608902, ; 80: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 38
	i64 11340910727871153756, ; 81: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 26
	i64 11529969570048099689, ; 82: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 38
	i64 11905597049721158984, ; 83: ExpandCalculator.Android => 0xa5392d702b917d48 => 0
	i64 12237608131790351668, ; 84: Xamarin.CommunityToolkit.Markup => 0xa9d4b7c21bcbad34 => 40
	i64 12451044538927396471, ; 85: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 29
	i64 12466513435562512481, ; 86: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 34
	i64 12538491095302438457, ; 87: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 23
	i64 12828192437253469131, ; 88: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 52
	i64 12963446364377008305, ; 89: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 55
	i64 13080579342871293080, ; 90: SegmentedControl.FormsPlugin.Android => 0xb5878d9bc427ec98 => 13
	i64 13370592475155966277, ; 91: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13454009404024712428, ; 92: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 47
	i64 13465488254036897740, ; 93: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 50
	i64 13572454107664307259, ; 94: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 35
	i64 13828521679616088467, ; 95: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 49
	i64 13959074834287824816, ; 96: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 29
	i64 13967638549803255703, ; 97: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 43
	i64 14124974489674258913, ; 98: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 23
	i64 14693486184709846151, ; 99: Plugin.SimpleAudioPlayer => 0xcbe9bfd5e7bd7487 => 11
	i64 14792063746108907174, ; 100: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 47
	i64 14852515768018889994, ; 101: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 26
	i64 14926761318275026526, ; 102: SegmentedControl.FormsPlugin.Android.dll => 0xcf26825566d30e5e => 13
	i64 15279429628684179188, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 53
	i64 15370334346939861994, ; 104: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 25
	i64 15609085926864131306, ; 105: System.dll => 0xd89e9cf3334914ea => 15
	i64 15810740023422282496, ; 106: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 45
	i64 16154507427712707110, ; 107: System => 0xe03056ea4e39aa26 => 15
	i64 16423015068819898779, ; 108: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 52
	i64 16833383113903931215, ; 109: mscorlib => 0xe99c30c1484d7f4f => 7
	i64 17704177640604968747, ; 110: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 34
	i64 17710060891934109755, ; 111: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 33
	i64 17882897186074144999, ; 112: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17891337867145587222, ; 113: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 48
	i64 17892495832318972303, ; 114: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 45
	i64 18129453464017766560 ; 115: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 56
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [116 x i32] [
	i32 6, i32 36, i32 55, i32 30, i32 28, i32 3, i32 44, i32 57, ; 0..7
	i32 46, i32 2, i32 10, i32 20, i32 18, i32 21, i32 36, i32 33, ; 8..15
	i32 39, i32 51, i32 22, i32 28, i32 8, i32 32, i32 24, i32 19, ; 16..23
	i32 17, i32 7, i32 42, i32 46, i32 12, i32 31, i32 54, i32 0, ; 24..31
	i32 37, i32 16, i32 35, i32 18, i32 56, i32 19, i32 37, i32 8, ; 32..39
	i32 43, i32 41, i32 14, i32 44, i32 4, i32 32, i32 22, i32 27, ; 40..47
	i32 30, i32 12, i32 42, i32 41, i32 1, i32 50, i32 20, i32 31, ; 48..55
	i32 9, i32 9, i32 40, i32 5, i32 53, i32 11, i32 5, i32 49, ; 56..63
	i32 21, i32 3, i32 16, i32 24, i32 6, i32 57, i32 1, i32 51, ; 64..71
	i32 27, i32 10, i32 48, i32 54, i32 25, i32 14, i32 17, i32 39, ; 72..79
	i32 38, i32 26, i32 38, i32 0, i32 40, i32 29, i32 34, i32 23, ; 80..87
	i32 52, i32 55, i32 13, i32 2, i32 47, i32 50, i32 35, i32 49, ; 88..95
	i32 29, i32 43, i32 23, i32 11, i32 47, i32 26, i32 13, i32 53, ; 96..103
	i32 25, i32 15, i32 45, i32 15, i32 52, i32 7, i32 34, i32 33, ; 104..111
	i32 4, i32 48, i32 45, i32 56 ; 112..115
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
