.class public Lsgcam/Shamim;
.super Ljava/lang/Object;


# static fields
.field public static Aemode:I

.field public static Aemodef:I

.field public static AppsPhotosGallery:Ljava/lang/String;

.field public static AutoNs:I

.field public static Cam:I

.field public static Color:I

.field public static ColorTransformFront:I

.field public static Date:I

.field public static Directory:Ljava/lang/String;

.field public static EraseDots:I

.field public static Exynos:I

.field public static FileName:I

.field public static FocusTracking:I

.field public static Front:I

.field public static GeometricCalibration:I

.field public static Get48Mp:I

.field public static GetISO:I

.field public static GetISOsystem:I

.field public static GetInstance:Landroid/hardware/camera2/CameraCharacteristics;

.field public static GetInstance:Landroid/hardware/camera2/CameraDevice;

.field public static GetInstance:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

.field public static GetInstance:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

.field public static GetInstance:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;

.field public static GetInstance:Ldit;

.field public static GetInstance:Lika;

.field public static GetInstance:Lkli;

.field public static GetInstance:Lkou;

.field public static GetMode:I

.field public static GetRegister:I

.field public static GetSensorSize:I

.field public static GetSettingTrack:I

.field public static GetSubjectPortrait:I

.field public static GetSunlightFix:I

.field public static GetTargetFile:Ljava/io/File;

.field public static HdrProcessing:I

.field public static Hexagon:I

.field public static LibDirectory:Ljava/lang/String;

.field public static NonRestartVfB:I

.field public static OriginalReso:I

.field public static P3:I

.field public static Prefix:Ljava/lang/String;

.field public static Resolution:I

.field public static RestartFront:I

.field public static RestartSetting:I

.field public static SunlightFix:I

.field public static ValueOfFarToggle:F

.field public static ValueOfInfinityToggle:F

.field public static ValueOfNearToggle:F

.field public static VideoPrefix:Ljava/lang/String;

.field public static Zoom:F

.field public static ZoomUi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lsgcam/Shamim;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lsgcam/Shamim;->GetPreferenceKey()V

    invoke-static {}, Lsgcam/Shamim;->createAutoPath()V

    new-instance v0, Lsgcam/NoiseModels;

    invoke-direct {v0}, Lsgcam/NoiseModels;-><init>()V

    return-void
.end method

.method public static AddSignatures()Ljava/lang/String;
    .locals 11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TUQ1"

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lsgcam/Shamim;->GetSignatureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "U0hBLTE="

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lsgcam/Shamim;->GetSignatureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "U0hBLTIyNA=="

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lsgcam/Shamim;->GetSignatureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "U0hBLTI1Ng=="

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lsgcam/Shamim;->GetSignatureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "U0hBLTM4NA=="

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lsgcam/Shamim;->GetSignatureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "U0hBLTUxMg=="

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lsgcam/Shamim;->GetSignatureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static AllFileAccess(Landroid/content/Context;)V
    .locals 11

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v7, "Permission is required to access the memory!"

    invoke-static {v7}, Lsgcam/Shamim;->ShowToastDirect(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static AllFileAccess(Levz;)V
    .locals 9

    sget-object v1, Lsgcam/devsettoptions/Pref;->permi:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v7, "Permission is required to access the memory!"

    invoke-static {v7}, Lsgcam/Shamim;->ShowToastDirect(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Levz;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static ArrayLogInteger([I)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-eq v2, v3, :cond_0

    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-eq v2, v3, :cond_0

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static AwbGainSelections()I
    .locals 1

    sget v0, Lsgcam/Shamim;->Front:I

    if-eqz v0, :cond_0

    const-string v0, "pref_fix_awbgains_key_1"

    goto :goto_0

    :cond_0
    const-string v0, "pref_aux_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "pref_fix_awbgains_key_0"

    goto :goto_0

    :pswitch_0
    const-string v0, "pref_fix_awbgains_key_0"

    goto :goto_0

    :pswitch_1
    const-string v0, "pref_fix_awbgains_key_2"

    goto :goto_0

    :pswitch_2
    const-string v0, "pref_fix_awbgains_key_3"

    goto :goto_0

    :pswitch_3
    const-string v0, "pref_fix_awbgains_key_4"

    goto :goto_0

    :pswitch_4
    const-string v0, "pref_fix_awbgains_key_5"

    :goto_0
    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static CaptureResultSwich()I
    .locals 10

    sget-object v0, Lsgcam/devsettoptions/Pref;->capres:Ldhk;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v0

    const v1, 0x0

    if-lt v0, v1, :cond_1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->SkipCaptureResult()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v5, 0x0

    return v5

    :cond_1
    const/16 v5, 0x1

    return v5
.end method

.method public static CheckRawSupport(Lkli;)Z
    .locals 8

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static ConcatArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static ConvertArrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static ConvertCstToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)[F
    .locals 4

    const/16 v0, 0x9

    new-array v1, v0, [Landroid/util/Rational;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([Landroid/util/Rational;I)V

    new-array p0, v0, [F

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v3

    aput v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static ConvertFArrayToFArray4([FLcom/google/googlex/gcam/FloatArray4;)Lcom/google/googlex/gcam/FloatArray4;
    .locals 8

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p0, v2

    invoke-virtual {p1, v2, v4}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static ConvertFArrayToFArray9([FLcom/google/googlex/gcam/FloatArray9;)Lcom/google/googlex/gcam/FloatArray9;
    .locals 8

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p0, v2

    invoke-virtual {p1, v2, v4}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static ConvertStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v2, 0x0

    aput-object p0, v3, v2

    return-object v3
.end method

.method public static DetectPhysicalLens(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "(physical)"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    const-string v4, " + "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(logical)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static DeviceInfo()V
    .locals 10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "* * * * * * * * DEVICE INFO * * * * * * * *\n\n\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DEVICE_RAM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsgcam/crash/CrashHandler;->getInstance()Lsgcam/crash/CrashHandler;

    move-result-object v4

    invoke-virtual {v4}, Lsgcam/crash/CrashHandler;->GetTotalRAM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SYSTEM_LANGUAGE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsgcam/crash/CrashHandler;->getInstance()Lsgcam/crash/CrashHandler;

    move-result-object v4

    invoke-virtual {v4}, Lsgcam/crash/CrashHandler;->GetSystemLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DISPLAY_RESOLUTION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsgcam/crash/CrashHandler;->getInstance()Lsgcam/crash/CrashHandler;

    move-result-object v4

    invoke-virtual {v4}, Lsgcam/crash/CrashHandler;->GetResolationStrings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.os.Build"

    invoke-static {v2}, Lsgcam/Shamim;->GetBuildPropInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.os.Build$VERSION"

    invoke-static {v2}, Lsgcam/Shamim;->GetBuildPropInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HARDWARE_LEVEL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lsgcam/Shamim;->GetInstance:Lkli;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v5}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nSAVED_ON = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x0

    invoke-static {v5, v5}, Lsgcam/Shamim;->GetTimeStamp(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NOTES:- If the apk gets crashed, then send this log with the crash log to the developer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "DEVICE_INFO.PROP"

    invoke-static {v0, v1}, Lsgcam/Shamim;->LogWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Exynos()I
    .locals 10

    const-string v0, "pref_exynosfix_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const v1, 0x0

    if-lt v0, v1, :cond_1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->IdentifyExynos()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v5, 0x0

    return v5

    :cond_1
    const/16 v5, 0x1

    return v5
.end method

.method public static FIX_SCALER_CROP_REGION(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lsgcam/Shamim;->GetRealmeDevice()I

    move-result v5

    if-nez v5, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    :cond_1
    return-object p0

    :cond_2
    return-object p0
.end method

.method public static FIX_SENSOR_INFO_ACTIVE_ARRAY(Landroid/graphics/Rect;Lkli;)Landroid/graphics/Rect;
    .locals 8

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lsgcam/Shamim;->GetRealmeDevice()I

    move-result v5

    if-nez v5, :cond_0

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v6}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    return-object v6

    :cond_0
    return-object p0
.end method

.method public static GetAeCompension(I)I
    .locals 9

    const-string v0, "auto_exp_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v1, Lika;->g:Lika;

    if-ne v0, v1, :cond_0

    const-string v0, "pref_exposure_portrait_option_available_key"

    goto :goto_0

    :cond_0
    sget-object v0, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v1, Lika;->m:Lika;

    if-ne v0, v1, :cond_1

    const-string v0, "pref_exposure_ns_option_available_key"

    goto :goto_0

    :cond_1
    const-string v0, "pref_exposure_option_available_key"

    :goto_0
    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    return p0
.end method

.method public static GetAemode()V
    .locals 15

    sget-object v6, Lsgcam/Shamim;->GetInstance:Lkli;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    sput v0, Lsgcam/aemode/HdrPlusEnh;->shotMaxTime:F

    sput v0, Lsgcam/aemode/HdrPlus;->shotMaxTime:F

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    sput v1, Lsgcam/aemode/HdrPlusEnh;->shotMaxISO:F

    sput v1, Lsgcam/aemode/HdrPlus;->shotMaxISO:F

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v1, v0

    sput v1, Lsgcam/aemode/HdrPlusEnh;->iso10000:F

    sput v1, Lsgcam/aemode/HdrPlus;->iso10000:F

    const v1, 0x44c80000    # 1600.0f

    div-float/2addr v1, v0

    sput v1, Lsgcam/aemode/HdrPlusEnh;->iso1600:F

    sput v1, Lsgcam/aemode/HdrPlus;->iso1600:F

    const v1, 0x44480000    # 800.0f

    div-float/2addr v1, v0

    sput v1, Lsgcam/aemode/HdrPlusEnh;->iso800:F

    sput v1, Lsgcam/aemode/HdrPlus;->iso800:F

    const v1, 0x43fa0000    # 500.0f

    div-float/2addr v1, v0

    sput v1, Lsgcam/aemode/HdrPlusEnh;->iso500:F

    sput v1, Lsgcam/aemode/HdrPlus;->iso500:F

    const v1, 0x43c80000    # 400.0f

    div-float/2addr v1, v0

    sput v1, Lsgcam/aemode/HdrPlusEnh;->iso400:F

    sput v1, Lsgcam/aemode/HdrPlus;->iso400:F

    const v1, 0x43960000    # 300.0f

    div-float/2addr v1, v0

    sput v1, Lsgcam/aemode/HdrPlusEnh;->iso300:F

    sput v1, Lsgcam/aemode/HdrPlus;->iso300:F

    const v1, 0x43480000    # 200.0f

    div-float/2addr v1, v0

    sput v1, Lsgcam/aemode/HdrPlusEnh;->iso200:F

    sput v1, Lsgcam/aemode/HdrPlus;->iso200:F

    const v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    sput v1, Lsgcam/aemode/HdrPlusEnh;->iso100:F

    sput v1, Lsgcam/aemode/HdrPlus;->iso100:F

    return-void
.end method

.method public static GetAutoAuxTxt(Lcom/mdmitriev/auxlenses/AuxButtonsLayout;)V
    .locals 15

    const-string v0, "1.0x"

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameMain:Ljava/lang/String;

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameTele:Ljava/lang/String;

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameWide:Ljava/lang/String;

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameInfinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonName5:Ljava/lang/String;

    sget-object v0, Lsgcam/lens/IdentifyIds;->Get35mmFocalLength:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    if-eqz v2, :cond_3

    const v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    const v7, 0x2

    if-lt v2, v7, :cond_0

    const v3, 0x1

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v8, v4}, Lsgcam/Shamim;->GetAutoAuxTxtFormat(FF)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameTele:Ljava/lang/String;

    :cond_0
    const v7, 0x3

    if-lt v2, v7, :cond_1

    const v3, 0x2

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v8, v4}, Lsgcam/Shamim;->GetAutoAuxTxtFormat(FF)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameWide:Ljava/lang/String;

    :cond_1
    const v7, 0x4

    if-lt v2, v7, :cond_2

    const v3, 0x3

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v8, v4}, Lsgcam/Shamim;->GetAutoAuxTxtFormat(FF)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameInfinity:Ljava/lang/String;

    :cond_2
    const v7, 0x5

    if-lt v2, v7, :cond_3

    const v3, 0x4

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v8, v4}, Lsgcam/Shamim;->GetAutoAuxTxtFormat(FF)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonName5:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static GetAutoAuxTxtFormat(FF)Ljava/lang/String;
    .locals 11

    div-float v5, p0, p1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v4, "%.1f"

    invoke-static {v5, v4}, Lsgcam/Shamim;->GetTextFormat(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "x"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static GetAwbGain(Lkoq;Lcom/google/googlex/gcam/FloatArray4;)Lcom/google/googlex/gcam/FloatArray4;
    .locals 10

    const/4 v2, 0x4

    new-array v3, v2, [F

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Rational;

    if-eqz v4, :cond_0

    const v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/util/Rational;->floatValue()F

    move-result v5

    div-float v5, v2, v5

    aput v5, v3, v1

    const/4 v1, 0x1

    aput v2, v3, v1

    const/4 v1, 0x2

    aput v2, v3, v1

    const/4 v1, 0x2

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/util/Rational;->floatValue()F

    move-result v5

    div-float v5, v2, v5

    const/4 v1, 0x3

    aput v5, v3, v1

    const-string v1, "COLOR_CORRECTION_GAINS_NEUTRAL"

    invoke-static {v1, v3}, Lsgcam/logcat/LogcatGenerator;->GetAllArrayTypeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "ngi"

    const-string v2, "CaptureResult missing COLOR_CORRECTION_GAINS Fix."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([FF)V

    :goto_0
    invoke-static {v3, p1}, Lsgcam/Shamim;->ConvertFArrayToFArray4([FLcom/google/googlex/gcam/FloatArray4;)Lcom/google/googlex/gcam/FloatArray4;

    move-result-object v3

    return-object v3
.end method

.method public static GetAwbModeValue(I)I
    .locals 9

    const/16 v2, 0x8

    const/4 v1, 0x5

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    move v0, v2

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    move v0, v2

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public static GetAwbSliderValue(Lgll;)Lmwn;
    .locals 14

    iget-object v0, p0, Lgll;->b:Lmvv;

    invoke-virtual {v0}, Lmvv;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lsgcam/Shamim;->GetAwbModeValue(I)I

    move-result v1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0
.end method

.method public static GetBackPressedRestart(Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;)V
    .locals 7

    sget v1, Lsgcam/Shamim;->RestartSetting:I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->v:Levz;

    invoke-virtual {v0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefscreen_top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-static {}, Lsgcam/Shamim;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Lsgcam/Shamim;->GetEachModeIndividually(Landroid/content/Intent;)V

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public static GetBitRate(I)I
    .locals 4

    sget-object v0, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v1, Lika;->n:Lika;

    if-ne v0, v1, :cond_0

    const-string v2, "pref_bitrate_time_lapse_key"

    goto :goto_0

    :cond_0
    sget-object v0, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v1, Lika;->f:Lika;

    if-ne v0, v1, :cond_1

    const-string v2, "pref_bitrate_slow_motion_key"

    goto :goto_0

    :cond_1
    const-string v2, "pref_bitrate_option_available_key"

    :goto_0
    invoke-static {v2}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    return v2

    :cond_2
    return p0
.end method

.method public static GetBlackLevel(Lkli;Lkou;)[F
    .locals 10

    const-string v0, "pref_black_level_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/BlackLevelPattern;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    new-array v3, v2, [F

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    rem-int/lit8 v2, v6, 0x2

    div-int/lit8 v4, v6, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/params/BlackLevelPattern;->getOffsetForIndex(II)I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    return-object v0

    :pswitch_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/BlackLevelPattern;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    new-array v3, v2, [F

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_2

    rem-int/lit8 v2, v6, 0x2

    div-int/lit8 v4, v6, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/params/BlackLevelPattern;->getOffsetForIndex(II)I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    return-object v0

    :pswitch_1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_BLACK_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/BlackLevelPattern;

    if-eqz v1, :cond_6

    const/4 v2, 0x4

    new-array v3, v2, [F

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_5

    rem-int/lit8 v2, v6, 0x2

    div-int/lit8 v4, v6, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/params/BlackLevelPattern;->getOffsetForIndex(II)I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x4

    goto :goto_2

    :cond_5
    return-object v3

    :cond_6
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    return-object v0

    :pswitch_2
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :pswitch_3
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    return-object v0

    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    return-object v0

    :pswitch_5
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    return-object v0

    :pswitch_6
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    return-object v0

    :pswitch_7
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    return-object v0

    :pswitch_8
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_6

    return-object v0

    :pswitch_9
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_7

    return-object v0

    :pswitch_a
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    return-object v0

    :pswitch_b
    const/4 v0, 0x4

    new-array v0, v0, [F

    const-string v1, "pref_manual_black_level_1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "64.0"

    invoke-static {v1, v3}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    const/16 v2, 0x0

    aput v1, v0, v2

    const-string v1, "pref_manual_black_level_2_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "64.0"

    invoke-static {v1, v3}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    const/16 v2, 0x1

    aput v1, v0, v2

    const-string v1, "pref_manual_black_level_3_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "64.0"

    invoke-static {v1, v3}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    const/16 v2, 0x2

    aput v1, v0, v2

    const-string v1, "pref_manual_black_level_4_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "64.0"

    invoke-static {v1, v3}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    const/16 v2, 0x3

    aput v1, v0, v2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x41800000    # 16.0f
        0x41800000    # 16.0f
        0x41800000    # 16.0f
        0x41800000    # 16.0f
    .end array-data

    :array_2
    .array-data 4
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42800000    # 64.0f
    .end array-data

    :array_3
    .array-data 4
        0x42a00000    # 80.0f
        0x42a00000    # 80.0f
        0x42a00000    # 80.0f
        0x42a00000    # 80.0f
    .end array-data

    :array_4
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_5
    .array-data 4
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x43800000    # 256.0f
    .end array-data

    :array_6
    .array-data 4
        0x427f70a4    # 63.86f
        0x427fb852    # 63.93f
        0x427fb852    # 63.93f
        0x428047ae    # 64.14f
    .end array-data

    :array_7
    .array-data 4
        0x42800000    # 64.0f
        0x42806666    # 64.2f
        0x42803333    # 64.1f
        0x42800000    # 64.0f
    .end array-data

    :array_8
    .array-data 4
        0x4281999a    # 64.8f
        0x427ccccd    # 63.2f
        0x427ccccd    # 63.2f
        0x42793333    # 62.3f
    .end array-data
.end method

.method public static GetBuildPropInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    aget-object v1, v2, v0

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lsgcam/strings/ConvertToStr;->ObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static GetC2api()I
    .locals 10

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v0, "pref_c2a_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const v1, 0x0

    if-lt v0, v1, :cond_1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->ForGettingC2api()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static GetC2apiPref(Lkkr;)Lkkr;
    .locals 13

    sget-object v1, Lsgcam/devsettoptions/Pref;->ois:Ldhk;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lsgcam/devsettoptions/Pref;->oisdata:Ldhk;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "samsung"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v2, Lsgcam/devsettoptions/Pref;->livehdr:Ldhk;

    invoke-static {v2}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v3, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/CameraAPI2Keys;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/CameraAPI2Keys;->CONTROL_LIVE_HDR_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    const v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :goto_0
    sget-object v2, Lsgcam/devsettoptions/Pref;->metering:Ldhk;

    invoke-static {v2}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v5, Lcom/CameraAPI2Keys;->CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    sget-object v5, Lcom/CameraAPI2Keys;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lsgcam/Shamim;->setAperture()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Lsgcam/devsettoptions/Pref;->apertu:Ldhk;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v5, Lcom/CameraAPI2Keys;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_6

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_1

    :cond_6
    const v0, 0x4019999a    # 2.4f

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_7
    const-string v1, "pref_shading_mode_key"

    invoke-static {v1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    sget-object v1, Lsgcam/devsettoptions/Pref;->shade:Ldhk;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_9
    sget-object v1, Lsgcam/devsettoptions/Pref;->antiba:Ldhk;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_a
    sget-object v1, Lsgcam/devsettoptions/Pref;->hotp:Ldhk;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_b
    sget-object v1, Lsgcam/devsettoptions/Pref;->ccam:Ldhk;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_c
    sget-object v1, Lsgcam/devsettoptions/Pref;->discm:Ldhk;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v1

    if-eqz v1, :cond_d

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_d
    sget-object v1, Lsgcam/devsettoptions/Pref;->coloco:Ldhk;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_e
    sget-object v1, Lsgcam/devsettoptions/Pref;->tonmod:Ldhk;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v1

    if-eqz v1, :cond_f

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_f
    return-object p0
.end method

.method public static GetCamcorderLevelFix(I)I
    .locals 7

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lsgcam/devsettoptions/Pref;->ab:Ldhk;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v4

    return v4

    :cond_0
    return p0
.end method

.method public static GetCameraStamp()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera Lens:- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lsgcam/Shamim;->Front:I

    if-eqz v2, :cond_0

    const-string v1, "Front"

    sget v3, Lsgcam/lens/IdentifyIds;->GetFrontId_Main:I

    goto :goto_0

    :cond_0
    const-string v2, "pref_aux_key"

    invoke-static {v2}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v1, "Main"

    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    goto :goto_0

    :pswitch_1
    const-string v1, "Camera 2"

    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    goto :goto_0

    :pswitch_2
    const-string v1, "Camera 3"

    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    goto :goto_0

    :pswitch_3
    const-string v1, "Camera 4"

    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    goto :goto_0

    :pswitch_4
    const-string v1, "Camera 5"

    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (ID= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static GetColorTune(Lkou;)V
    .locals 13

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x3

    new-array v1, v0, [F

    check-cast v3, [Landroid/util/Rational;

    const/4 v0, 0x0

    aget-object v7, v3, v0

    invoke-virtual {v7}, Landroid/util/Rational;->floatValue()F

    move-result v7

    aput v7, v1, v0

    const/4 v0, 0x1

    aget-object v8, v3, v0

    invoke-virtual {v8}, Landroid/util/Rational;->floatValue()F

    move-result v8

    aput v8, v1, v0

    const/4 v0, 0x2

    aget-object v9, v3, v0

    invoke-virtual {v9}, Landroid/util/Rational;->floatValue()F

    move-result v9

    aput v9, v1, v0

    sput v7, Lcom/juliantsependa/ColorTune;->WB1:F

    sput v8, Lcom/juliantsependa/ColorTune;->WB2:F

    sput v9, Lcom/juliantsependa/ColorTune;->WB3:F

    return-void
.end method

.method public static GetCorrectionDBL([F[F)[F
    .locals 6

    const/4 v0, 0x4

    const-string v1, "pref_dbl_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    new-array v2, v0, [F

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget v3, p1, v0

    aget v4, p0, v0

    aget v5, p0, v0

    sub-float v3, v4, v3

    mul-float/2addr v3, v1

    sub-float v3, v5, v3

    aput v3, v2, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static GetCustomExposureTimeIso(Lcom/google/googlex/gcam/FrameMetadata;)V
    .locals 14

    const-string v8, "pref_aemode_actual_key"

    invoke-static {v8}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v8}, Lsgcam/aemode/HdrPlus;->isoTimeParametrs(I)V

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    sget v4, Lsgcam/aemode/HdrPlus;->sGetActual_exposure_time_ms:F

    invoke-static {v4}, Lsgcam/Shamim;->GetExposureSlider(F)F

    move-result v4

    invoke-static {v0, v1, p0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_exposure_time_ms_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    sget v5, Lsgcam/aemode/HdrPlus;->sGetActual_analog_gain:F

    sput v5, Loverwhelmer/simplified_lol;->sGainAE:F

    invoke-static {}, Loverwhelmer/simplified_lol;->setManualIsoSlider()V

    sget v5, Loverwhelmer/simplified_lol;->sManualIsoGain:F

    invoke-static {v0, v1, p0, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_analog_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    sget v6, Lsgcam/aemode/HdrPlus;->sGetApplied_digital_gain:F

    invoke-static {v0, v1, p0, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_applied_digital_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    :cond_0
    return-void
.end method

.method public static GetDefaultDeviceInfo()Ljava/lang/String;
    .locals 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetDefaultDouble(Ljava/lang/String;D)V
    .locals 7

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static GetDefaultFloat(Ljava/lang/String;F)V
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static GetDefaultInteger(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static GetDefaultStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static GetDevSettBooleanValue(Ldhj;)Z
    .locals 8

    sget-object v7, Lsgcam/Shamim;->GetInstance:Ldit;

    invoke-virtual {v7, p0}, Ldit;->k(Ldhj;)Z

    move-result v7

    return v7
.end method

.method public static GetDevSettFloatValue(Ldhj;)F
    .locals 8

    sget-object v7, Lsgcam/Shamim;->GetInstance:Ldit;

    invoke-virtual {v7, p0}, Ldit;->g(Ldhj;)Lj$/util/Optional;

    move-result-object v7

    invoke-virtual {v7}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    return v7
.end method

.method public static GetDevSettIntValue(Ldhk;)I
    .locals 8

    sget-object v7, Lsgcam/Shamim;->GetInstance:Ldit;

    invoke-virtual {v7, p0}, Ldit;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v7

    invoke-virtual {v7}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    return v7
.end method

.method public static GetDevSettStringValue(Ldhj;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lsgcam/Shamim;->GetInstance:Ldit;

    invoke-virtual {v0, p0}, Ldit;->j(Ldhj;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static GetDeviceSavedInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v1, "220333QAG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "REDMI 10C"

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static GetEachModeIndividually(Landroid/content/Intent;)V
    .locals 6

    sget v0, Lsgcam/Shamim;->GetMode:I

    sparse-switch v0, :sswitch_data_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :sswitch_0
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :sswitch_1
    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :sswitch_2
    const-string v1, "android.media.action.PORTRAIT"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :sswitch_3
    const-string v1, "android.media.action.NIGHTSIGHT"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :sswitch_4
    const-string v1, "android.media.action.TIME_LAPSE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
    .end sparse-switch

    :goto_0
    return-void
.end method

.method public static GetExpectedApiKey()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 5

    sget-object v0, Lsgcam/devsettoptions/Pref;->bssss1:Ldhk;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/CameraAPI2Keys;->SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/CameraAPI2Keys;->SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/CameraAPI2Keys;->ISO_VALUE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/CameraAPI2Keys;->CONTRAST:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/CameraAPI2Keys;->SHARPNESS:Landroid/hardware/camera2/CaptureRequest$Key;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static GetExposureSlider(F)F
    .locals 14

    invoke-static {}, Lcom/custom/slider;->getEXPTGT()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-float v6, v6

    float-to-int v7, v6

    if-eqz v7, :cond_0

    const v5, 0x49742400    # 1000000.0f

    move v4, v6

    div-float/2addr v4, v5

    return v4

    :cond_0
    return p0
.end method

.method public static GetExposureSliderDesired(Lcom/google/googlex/gcam/FrameRequest;)V
    .locals 14

    invoke-static {}, Lcom/custom/slider;->getEXPTGT()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-float v6, v6

    float-to-int v7, v6

    if-eqz v7, :cond_0

    const v5, 0x49742400    # 1000000.0f

    move v4, v6

    div-float/2addr v4, v5

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    invoke-static {v0, v1, p0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_exposure_time_ms_set(JLcom/google/googlex/gcam/FrameRequest;F)V

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_analog_gain_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v5

    sput v5, Loverwhelmer/simplified_lol;->sGainAE:F

    invoke-static {}, Loverwhelmer/simplified_lol;->setManualIsoSlider()V

    sget v5, Loverwhelmer/simplified_lol;->sManualIsoGain:F

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    invoke-static {v0, v1, p0, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_analog_gain_set(JLcom/google/googlex/gcam/FrameRequest;F)V

    return-void
.end method

.method public static GetFpsPreference()I
    .locals 10

    const-string v0, "pref_slowmo_fps_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetFrontCam()V
    .locals 9

    sget-object v0, Lsgcam/Shamim;->GetInstance:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_1

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v4, 0x0

    sput v4, Lsgcam/Shamim;->Front:I

    const/4 v4, 0x1

    sput v4, Lsgcam/Shamim;->Cam:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    sput v4, Lsgcam/Shamim;->Front:I

    const/4 v4, 0x0

    sput v4, Lsgcam/Shamim;->Cam:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static GetIdFromResources(Ljava/lang/String;I)I
    .locals 12

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v5, "drawable"

    goto :goto_0

    :pswitch_1
    const-string v5, "layout"

    goto :goto_0

    :pswitch_2
    const-string v5, "array"

    goto :goto_0

    :pswitch_3
    const-string v5, "color"

    goto :goto_0

    :pswitch_4
    const-string v5, "id"

    goto :goto_0

    :pswitch_5
    const-string v5, "raw"

    goto :goto_0

    :pswitch_6
    const-string v5, "string"

    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static GetLensSummary(I)Ljava/lang/String;
    .locals 14

    const-string v1, "System ID = "

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_1
    sget v3, Lsgcam/lens/IdentifyIds;->GetFrontId_Main:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_3
    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_4
    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_5
    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :goto_0
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static GetLensTittle(I)Ljava/lang/String;
    .locals 14

    sget-object v7, Lsgcam/Shamim;->GetInstance:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    if-eqz v7, :cond_0

    iget-object v6, v7, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameMain:Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string v4, "Main cam ("

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Main cam"

    :goto_0
    const-string v2, "pref_screen_tittle_lens_key_0"

    invoke-static {v2, v1}, Lsgcam/lens/SharedPrefValues;->GetSharedPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    goto/16 :goto_c

    :pswitch_1
    if-eqz v7, :cond_2

    iget-object v6, v7, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameMain:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v4, "Front cam ("

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, "Front cam"

    :goto_2
    const-string v2, "pref_screen_tittle_lens_key_1"

    invoke-static {v2, v1}, Lsgcam/lens/SharedPrefValues;->GetSharedPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v1

    :goto_3
    goto/16 :goto_c

    :pswitch_2
    if-eqz v7, :cond_4

    iget-object v6, v7, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameTele:Ljava/lang/String;

    if-eqz v6, :cond_4

    const-string v4, "Camera 2 ("

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    const-string v1, "Camera 2"

    :goto_4
    const-string v2, "pref_screen_tittle_lens_key_2"

    invoke-static {v2, v1}, Lsgcam/lens/SharedPrefValues;->GetSharedPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v1

    :goto_5
    goto :goto_c

    :pswitch_3
    if-eqz v7, :cond_6

    iget-object v6, v7, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameWide:Ljava/lang/String;

    if-eqz v6, :cond_6

    const-string v4, "Camera 3 ("

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    const-string v1, "Camera 3"

    :goto_6
    const-string v2, "pref_screen_tittle_lens_key_3"

    invoke-static {v2, v1}, Lsgcam/lens/SharedPrefValues;->GetSharedPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    move-object v5, v1

    :goto_7
    goto :goto_c

    :pswitch_4
    if-eqz v7, :cond_8

    iget-object v6, v7, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameInfinity:Ljava/lang/String;

    if-eqz v6, :cond_8

    const-string v4, "Camera 4 ("

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_8
    const-string v1, "Camera 4"

    :goto_8
    const-string v2, "pref_screen_tittle_lens_key_4"

    invoke-static {v2, v1}, Lsgcam/lens/SharedPrefValues;->GetSharedPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    move-object v5, v1

    :goto_9
    goto :goto_c

    :pswitch_5
    if-eqz v7, :cond_a

    iget-object v6, v7, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonName5:Ljava/lang/String;

    if-eqz v6, :cond_a

    const-string v4, "Camera 5 ("

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_a
    const-string v1, "Camera 5"

    :goto_a
    const-string v2, "pref_screen_tittle_lens_key_5"

    invoke-static {v2, v1}, Lsgcam/lens/SharedPrefValues;->GetSharedPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_b

    :cond_b
    move-object v5, v1

    :goto_b
    goto :goto_c

    :goto_c
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static GetLibpatcherLog(Ljava/lang/String;I)V
    .locals 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  Selected Value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "PATCHER.txt"

    invoke-static {v0, v1}, Lsgcam/Shamim;->LogWriteToFileLoop(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static GetLongClickInternal(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;)V
    .locals 10

    invoke-static {p1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    const v1, 0x8

    if-eq v0, v1, :cond_8

    const v1, 0x9

    if-eq v0, v1, :cond_9

    const v1, 0xa

    if-eq v0, v1, :cond_a

    const v1, 0xb

    if-eq v0, v1, :cond_b

    invoke-static {p0}, Lcom/longtab/Settings/switch;->setLongClickListener(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/longtab/Settings/switch;->setLongClickListener(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/longtab/Awb/switch;->setLongClickListener(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p2}, Lcom/longtab/lib/switch;->setLongClickListener(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/eclipse/switchMaxb;->setLongClickListener(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, p2}, Lcom/longtab/Exposure/switch;->setLongClickListener(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    invoke-static {p0, p2}, Lcom/longtab/videoRes/switch;->setLongClickListener(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/longtab/miui/switch;->setLongClickListener(Landroid/view/View;)V

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcom/longtab/custom/AdditionalSetting;->setLongClickListener(Landroid/view/View;)V

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/longtab/custom/DeveloperSetting;->setLongClickListener(Landroid/view/View;)V

    goto :goto_0

    :cond_9
    invoke-static {p0}, Lcom/longtab/custom/AdvanceSetting;->setLongClickListener(Landroid/view/View;)V

    goto :goto_0

    :cond_a
    invoke-static {p0, p2}, Lcom/longtab/hiRes/switch;->setLongClickListener(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    :cond_b
    invoke-static {p0}, Lcom/longtab/custom/Libpatcher;->setLongClickListener(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public static GetMaximumFocus()F
    .locals 9

    sget-object v6, Lsgcam/Shamim;->GetInstance:Lkli;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v2}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    return v2
.end method

.method public static GetMinimumFocus()F
    .locals 9

    sget-object v6, Lsgcam/Shamim;->GetInstance:Lkli;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v2}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    return v2
.end method

.method public static GetMotionPreference()I
    .locals 9

    const-string v0, "pref_mv_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetMultiplicationMethod()I
    .locals 12

    sget v1, Lsgcam/Shamim;->GetRegister:I

    invoke-static {}, Lsgcam/Shamim;->GetUpscalingPreference()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    goto :goto_0

    :pswitch_1
    mul-int/lit16 v1, v1, 0x3

    div-int/lit16 v1, v1, 0x2

    goto :goto_0

    :pswitch_2
    mul-int/lit16 v1, v1, 0xe

    div-int/lit16 v1, v1, 0x8

    goto :goto_0

    :pswitch_3
    mul-int/lit16 v1, v1, 0x2

    div-int/lit16 v1, v1, 0x1

    goto :goto_0

    :pswitch_4
    mul-int/lit16 v1, v1, 0x12

    div-int/lit16 v1, v1, 0x8

    goto :goto_0

    :pswitch_5
    mul-int/lit16 v1, v1, 0x14

    div-int/lit16 v1, v1, 0x8

    goto :goto_0

    :pswitch_6
    mul-int/lit16 v1, v1, 0x16

    div-int/lit16 v1, v1, 0x8

    goto :goto_0

    :pswitch_7
    mul-int/lit16 v1, v1, 0x3

    div-int/lit16 v1, v1, 0x1

    goto :goto_0

    :pswitch_8
    mul-int/lit16 v1, v1, 0x1a

    div-int/lit16 v1, v1, 0x8

    goto :goto_0

    :pswitch_9
    mul-int/lit16 v1, v1, 0x1c

    div-int/lit16 v1, v1, 0x8

    goto :goto_0

    :pswitch_a
    mul-int/lit16 v1, v1, 0x1d

    div-int/lit16 v1, v1, 0x8

    goto :goto_0

    :pswitch_b
    mul-int/lit16 v1, v1, 0x1e

    div-int/lit16 v1, v1, 0x8

    goto :goto_0

    :pswitch_c
    mul-int/lit16 v1, v1, 0x4

    div-int/lit16 v1, v1, 0x1

    goto :goto_0

    :pswitch_d
    mul-int/lit16 v1, v1, 0x22

    div-int/lit16 v1, v1, 0x8

    goto :goto_0

    :pswitch_e
    invoke-static {}, Lsgcam/Shamim;->GetUpscaling7Preference()I

    move-result v0

    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0x8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static GetNightMode()I
    .locals 10

    sget-object v0, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v1, Lika;->m:Lika;

    if-ne v0, v1, :cond_0

    const v5, 0x1

    goto :goto_0

    :cond_0
    const v5, 0x0

    :goto_0
    return v5
.end method

.method public static GetNoiseModelFile()V
    .locals 9

    invoke-static {}, Lsgcam/noisemodel/Internal;->SecondPair()[Landroid/util/Pair;

    move-result-object v1

    invoke-static {}, Lsgcam/noisemodel/Internal;->FirstPair()[Landroid/util/Pair;

    move-result-object v0

    sput-object v1, Lsgcam/NoiseModels;->NM_OFF:[Landroid/util/Pair;

    sput-object v0, Lsgcam/NoiseModels;->NM_SC:[Landroid/util/Pair;

    return-void
.end method

.method public static GetNoiseModelPref(Ljava/lang/Object;Lkli;Lkoq;)Ljava/lang/Object;
    .locals 10

    move-object v3, p0

    const-string v2, "pref_noise_modeler_key"

    invoke-static {v2}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v1, ".C"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsgcam/Shamim;->GetNoiseModelFile()V

    invoke-static {p1, p2}, Lsgcam/NoiseModels;->j(Lkli;Lkoq;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lsgcam/NoiseModels;->NoiseModelSelector()I

    move-result v6

    invoke-static {v6}, Lsgcam/NoiseModels;->mode(I)V

    if-eqz v6, :cond_1

    invoke-static {p1, p2}, Lsgcam/NoiseModels;->j(Lkli;Lkoq;)Ljava/lang/Object;

    move-result-object v3

    :cond_1
    :goto_0
    return-object v3
.end method

.method public static GetOpmodeIntValue()I
    .locals 9

    const-string v1, "pref_enable_operation_mode_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lsgcam/Shamim;->GetOpmodePref()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const v0, 0x0

    return v0
.end method

.method public static GetOpmodePref()Ljava/lang/String;
    .locals 9

    const-string v1, "pref_enable_custom_operation_mode_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    sget-object v2, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v3, Lika;->b:Lika;

    if-ne v2, v3, :cond_0

    const-string v5, "pref_operation_mode_normal_key"

    goto :goto_0

    :cond_0
    sget-object v2, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v3, Lika;->c:Lika;

    if-ne v2, v3, :cond_1

    const-string v5, "pref_operation_mode_video_key"

    goto :goto_0

    :cond_1
    sget-object v2, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v3, Lika;->f:Lika;

    if-ne v2, v3, :cond_2

    const-string v5, "pref_operation_mode_motion_key"

    goto :goto_0

    :cond_2
    sget-object v2, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v3, Lika;->m:Lika;

    if-ne v2, v3, :cond_3

    const-string v5, "pref_operation_mode_night_key"

    goto :goto_0

    :cond_3
    sget-object v2, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v3, Lika;->g:Lika;

    if-ne v2, v3, :cond_4

    const-string v5, "pref_operation_mode_portrait_key"

    goto :goto_0

    :cond_4
    const-string v5, "pref_operation_mode_key"

    :goto_0
    return-object v5

    :cond_5
    sget-object v2, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v3, Lika;->b:Lika;

    if-ne v2, v3, :cond_6

    const-string v5, "pref_custom_operation_mode_normal_key"

    goto :goto_1

    :cond_6
    sget-object v2, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v3, Lika;->c:Lika;

    if-ne v2, v3, :cond_7

    const-string v5, "pref_custom_operation_mode_video_key"

    goto :goto_1

    :cond_7
    sget-object v2, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v3, Lika;->f:Lika;

    if-ne v2, v3, :cond_8

    const-string v5, "pref_custom_operation_mode_motion_key"

    goto :goto_1

    :cond_8
    sget-object v2, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v3, Lika;->m:Lika;

    if-ne v2, v3, :cond_9

    const-string v5, "pref_custom_operation_mode_night_key"

    goto :goto_1

    :cond_9
    sget-object v2, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v3, Lika;->g:Lika;

    if-ne v2, v3, :cond_a

    const-string v5, "pref_custom_operation_mode_portrait_key"

    goto :goto_1

    :cond_a
    const-string v5, "pref_custom_operation_mode_key"

    :goto_1
    return-object v5
.end method

.method public static GetPictureSavedInfo()Ljava/lang/String;
    .locals 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsgcam/Shamim;->GetDeviceSavedInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetPreferenceKey()V
    .locals 10

    const-string v0, "pref_non_restart_vf_button_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->NonRestartVfB:I

    const-string v0, "pref_zoom_ui_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->ZoomUi:I

    const-string v0, "pref_focus_tracking_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->FocusTracking:I

    const-string v0, "pref_sunbugFix_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->GetSunlightFix:I

    const-string v0, "pref_erasedots_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->EraseDots:I

    const-string v0, "pref_48m_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->Get48Mp:I

    const-string v0, "pref_aemode_key_1"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->Aemodef:I

    const-string v0, "pref_max_zoom_key"

    invoke-static {v0}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v0

    sput v0, Lsgcam/Shamim;->Zoom:F

    const-string v0, "pref_disable_front_lib_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->RestartFront:I

    const-string v0, "pref_sunlight_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->SunlightFix:I

    const-string v0, "pref_auto_ns_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->AutoNs:I

    const-string v0, "pref_color_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->Color:I

    const-string v0, "pref_p3_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->P3:I

    const-string/jumbo v0, "pref_hexagon_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->Hexagon:I

    const-string/jumbo v0, "pref_subjectportrait_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsgcam/Shamim;->GetSubjectPortrait:I

    const-string v0, "prefix_key"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/Shamim;->Prefix:Ljava/lang/String;

    const-string v0, "videoprefix_key"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/Shamim;->VideoPrefix:Ljava/lang/String;

    const-string v0, "pref_con_key"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/Shamim;->Directory:Ljava/lang/String;

    const-string v0, "pref_libdirectory_key"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/Shamim;->LibDirectory:Ljava/lang/String;

    return-void
.end method

.method public static GetProcIndicator(I)V
    .locals 7

    sget-object v0, Lsgcam/Shamim;->GetInstance:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    const-string v1, "proc_indecator"

    const v3, 0x4

    invoke-static {v1, v3}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static GetProcIndicatorSwitch(I)V
    .locals 5

    invoke-static {}, Lsgcam/Shamim;->GetNightMode()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lsgcam/Shamim;->GetInstance:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    if-eqz p0, :cond_0

    const v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->h(Z)V

    invoke-static {v2}, Lsgcam/Shamim;->GetProcIndicator(I)V

    goto :goto_0

    :cond_0
    sget v2, Lsgcam/Shamim;->GetSettingTrack:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->h(Z)V

    const v2, 0x8

    invoke-static {v2}, Lsgcam/Shamim;->GetProcIndicator(I)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lsgcam/Shamim;->GetInstance:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    if-eqz p0, :cond_2

    const v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->h(Z)V

    invoke-static {v2}, Lsgcam/Shamim;->GetProcIndicator(I)V

    goto :goto_1

    :cond_2
    const v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->h(Z)V

    const v2, 0x8

    invoke-static {v2}, Lsgcam/Shamim;->GetProcIndicator(I)V

    :goto_1
    return-void
.end method

.method public static GetRawFormatFix([I)[I
    .locals 8

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "pref_raw_key"

    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput v2, v0, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput v2, v0, v1

    :goto_0
    const-string v5, "HDR+ Raw Format"

    invoke-static {v5, v0}, Lsgcam/logcat/LogcatGenerator;->GetAllArrayTypeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v5, "HDR+ Raw Format"

    invoke-static {v5, p0}, Lsgcam/logcat/LogcatGenerator;->GetAllArrayTypeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :array_0
    .array-data 4
        0x25
        0x26
        0x20
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static GetRealmeDevice()I
    .locals 5

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "RMX1921"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v1, Lika;->m:Lika;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static GetResolation([Landroid/util/Size;[Landroid/util/Size;)Ljava/util/List;
    .locals 7

    if-eqz p0, :cond_7

    array-length v2, p0

    array-length v0, p1

    add-int v2, v2, v0

    new-array v5, v2, [Landroid/util/Size;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    goto/32 :goto_2

    :cond_0
    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto/32 :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    sput v6, Lsgcam/Shamim;->Resolution:I

    aput-object v2, v5, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :goto_2
    array-length v2, p0

    if-lt v0, v2, :cond_2

    goto/32 :goto_4

    :cond_2
    aget-object v2, p0, v0

    if-nez v2, :cond_3

    goto/32 :goto_3

    :cond_3
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    sget v6, Lsgcam/Shamim;->Resolution:I

    if-gt v6, v4, :cond_4

    goto/32 :goto_3

    :cond_4
    aput-object v2, v5, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :goto_4
    array-length v0, v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_5
    array-length v2, v5

    if-lt v0, v2, :cond_5

    goto/32 :goto_7

    :cond_5
    aget-object v2, v5, v0

    if-nez v2, :cond_6

    goto/32 :goto_6

    :cond_6
    new-instance v3, Lkaf;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lkaf;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :goto_7
    return-object v1

    :cond_7
    sget p0, Lmvv;->d:I

    sget-object p0, Lmyu;->a:Lmvv;

    return-object p0
.end method

.method public static GetRestartMethodFront()V
    .locals 5

    sget v0, Lsgcam/Shamim;->HdrProcessing:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v3, Lsgcam/Shamim;->Front:I

    if-nez v3, :cond_0

    const-string v3, "android.intent.extra.USE_FRONT_CAMERA"

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-static {v0}, Lsgcam/Shamim;->GetEachModeIndividually(Landroid/content/Intent;)V

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_1
    const-string v1, "HDR is processing. Try again shortly."

    invoke-static {v1}, Lsgcam/Shamim;->ShowToastDirect(Ljava/lang/String;)V

    return-void
.end method

.method public static GetSignatureName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    :try_start_0
    invoke-static {}, Lsgcam/Shamim;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x40

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    const/4 v0, 0x2

    invoke-static {v5, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v8, 0x0

    :goto_0
    return-object v8
.end method

.method public static GetSimpleDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static GetStartActivityUrl(Lhqt;)V
    .locals 13

    new-instance v1, Lsgcam/urllaunch/Pref;

    invoke-direct {v1}, Lsgcam/urllaunch/Pref;-><init>()V

    const v2, 0x7f0b04a3

    invoke-virtual {p0, v2}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lsgcam/urllaunch/Pref$;

    invoke-direct {v1}, Lsgcam/urllaunch/Pref$;-><init>()V

    const v2, 0x7f0b04a4

    invoke-virtual {p0, v2}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static GetStringOpenPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lsgcam/Shamim;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static GetTargetFps()Landroid/util/Range;
    .locals 11

    new-instance v5, Landroid/util/Range;

    const-string v4, "pref_aetarget_fps_range_lower_key"

    invoke-static {v4}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "15"

    invoke-static {v4, v3}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v6, "pref_aetarget_fps_range_upper_key"

    invoke-static {v6}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "30"

    invoke-static {v6, v3}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v5
.end method

.method public static GetTextFormat(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static GetTimeStamp(II)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0, p1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetUpscaling7Preference()I
    .locals 10

    const-string v0, "pref_manual_upscale_type_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-static {v0, v3}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetUpscalingPreference()I
    .locals 10

    const-string v0, "pref_upscale_type_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-static {v0, v3}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetVideoPreference()I
    .locals 10

    const-string v0, "pref_video_resolation_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetViewfinderFormate()I
    .locals 10

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "pref_img_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v3, "pref_c2a_key"

    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v3

    const v1, 0x0

    if-lt v3, v1, :cond_1

    if-gt v3, v1, :cond_0

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->ForGettingC2api()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v5, 0x23

    goto :goto_0

    :cond_1
    const/16 v5, 0x100

    :goto_0
    :pswitch_0
    const-string v3, "pref_c2a_key"

    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v3

    const v1, 0x0

    if-lt v3, v1, :cond_3

    if-gt v3, v1, :cond_2

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->ForGettingC2api()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/16 v5, 0x23

    goto :goto_1

    :cond_3
    const/16 v5, 0x100

    :goto_1
    goto :goto_2

    :pswitch_1
    const/16 v5, 0x23

    goto :goto_2

    :pswitch_2
    const/16 v5, 0x100

    goto :goto_2

    :pswitch_3
    const/16 v5, 0x22

    :goto_2
    return v5

    :cond_4
    const/16 v2, 0x23

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static GoudaDefaultZoom(F)F
    .locals 8

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v3

    if-nez v3, :cond_0

    const v1, 0x3f800000    # 1.0f

    return v1

    :cond_0
    return p0
.end method

.method public static HDRenhFames(I)I
    .locals 9

    sget-object v0, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v1, Lika;->g:Lika;

    if-ne v0, v1, :cond_0

    const-string v0, "pref_frames_p_key"

    goto :goto_0

    :cond_0
    sget-object v0, Lsgcam/Shamim;->GetInstance:Lika;

    sget-object v1, Lika;->m:Lika;

    if-ne v0, v1, :cond_1

    const-string v0, "pref_frames_ns_key"

    goto :goto_0

    :cond_1
    const-string v0, "pref_frames_hdr_key"

    :goto_0
    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "-1"

    invoke-static {v0, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    return v0

    :cond_2
    return p0
.end method

.method public static HdrRawFixFirst()I
    .locals 9

    const-string v0, "pref_samsungfix_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const v1, 0x0

    if-lt v0, v1, :cond_1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->HdrRawFix()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v5, 0x26

    return v5

    :cond_1
    const/16 v5, 0x20

    return v5
.end method

.method public static HdrRawFixSecond()I
    .locals 9

    const-string v0, "pref_samsungfix_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const v1, 0x0

    if-lt v0, v1, :cond_1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->HdrRawFix()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v5, 0x20

    return v5

    :cond_1
    const/16 v5, 0x23

    return v5
.end method

.method public static LogWriteToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lsgcam/devsettoptions/Pref;->LOG1:Ldhj;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SGCAM/8.8.224/LOG/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static LogWriteToFileLoop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lsgcam/devsettoptions/Pref;->LOG1:Ldhj;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SGCAM/8.8.224/LOG/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MenuValue(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static NightFocusCorrection()V
    .locals 10

    sget-object v1, Lsgcam/devsettoptions/Pref;->FMIN:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lsgcam/Shamim;->GetMinimumFocus()F

    move-result v1

    const-string v5, "Near focus distance"

    invoke-static {v5, v1}, Lsgcam/logcat/LogcatGenerator;->GetFloatTypeValue(Ljava/lang/String;F)V

    sput v1, Lsgcam/Shamim;->ValueOfNearToggle:F

    goto :goto_0

    :cond_0
    const-string v1, "pref_mf_near_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "14.29"

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lsgcam/Shamim;->ValueOfNearToggle:F

    :goto_0
    sget-object v1, Lsgcam/devsettoptions/Pref;->FFAR:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lsgcam/Shamim;->GetMaximumFocus()F

    move-result v1

    const-string v5, "Far focus distance"

    invoke-static {v5, v1}, Lsgcam/logcat/LogcatGenerator;->GetFloatTypeValue(Ljava/lang/String;F)V

    sput v1, Lsgcam/Shamim;->ValueOfFarToggle:F

    goto :goto_1

    :cond_2
    const-string v1, "pref_mf_far_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "1.52"

    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lsgcam/Shamim;->ValueOfFarToggle:F

    :goto_1
    sget-object v1, Lsgcam/devsettoptions/Pref;->FMAX:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lsgcam/Shamim;->GetMaximumFocus()F

    move-result v1

    const-string v5, "Infinity focus distance"

    invoke-static {v5, v1}, Lsgcam/logcat/LogcatGenerator;->GetFloatTypeValue(Ljava/lang/String;F)V

    sput v1, Lsgcam/Shamim;->ValueOfInfinityToggle:F

    goto :goto_2

    :cond_4
    const-string v1, "pref_mf_infinity_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "0.45"

    :cond_5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lsgcam/Shamim;->ValueOfInfinityToggle:F

    :goto_2
    return-void
.end method

.method public static PreventEmptyOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;I)[Landroid/util/Size;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :catchall_0
    const v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static PreventEmptySummery(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "auto"

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static ProcessWatermark(Ljava/io/File;)V
    .locals 10

    sput-object p0, Lsgcam/Shamim;->GetTargetFile:Ljava/io/File;

    sget v7, Lsgcam/Shamim;->HdrProcessing:I

    if-eqz v7, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lsgcam/watermark/PostProcessing;

    invoke-direct {v3}, Lsgcam/watermark/PostProcessing;-><init>()V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static SetDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v0, "taimen"

    goto :goto_0

    :pswitch_0
    const-string v0, "taimen"

    goto :goto_0

    :pswitch_1
    const-string v0, "marlin"

    goto :goto_0

    :pswitch_2
    const-string v0, "walleye"

    goto :goto_0

    :pswitch_3
    const-string v0, "sailfish"

    goto :goto_0

    :pswitch_4
    const-string v0, "blueline"

    goto :goto_0

    :pswitch_5
    const-string v0, "crosshatch"

    goto :goto_0

    :pswitch_6
    const-string v0, "sargo"

    goto :goto_0

    :pswitch_7
    const-string v0, "bonito"

    goto :goto_0

    :pswitch_8
    const-string v0, "flame"

    goto :goto_0

    :pswitch_9
    const-string v0, "coral"

    goto :goto_0

    :pswitch_a
    const-string v0, "sunfish"

    goto :goto_0

    :pswitch_b
    const-string v0, "bramble"

    goto :goto_0

    :pswitch_c
    const-string v0, "redfin"

    goto :goto_0

    :pswitch_d
    const-string v0, "barbet"

    goto :goto_0

    :pswitch_e
    const-string v0, "oriole"

    goto :goto_0

    :pswitch_f
    const-string v0, "raven"

    goto :goto_0

    :pswitch_10
    const-string v0, "bluejay"

    goto :goto_0

    :pswitch_11
    const-string v0, "panther"

    goto :goto_0

    :pswitch_12
    const-string v0, "cheetah"

    goto :goto_0

    :pswitch_13
    const-string v0, "pipit"

    goto :goto_0

    :pswitch_14
    const-string v0, "tangor"

    goto :goto_0

    :pswitch_15
    const-string v0, "shiba"

    goto :goto_0

    :pswitch_16
    const-string v0, "husky"

    goto :goto_0

    :pswitch_17
    const-string v0, "lynx"

    goto :goto_0

    :pswitch_18
    const-string v0, "felix"

    goto :goto_0

    :pswitch_19
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public static SetDevice1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v0, "raven"

    goto :goto_0

    :pswitch_0
    const-string v0, "taimen"

    goto :goto_0

    :pswitch_1
    const-string v0, "marlin"

    goto :goto_0

    :pswitch_2
    const-string v0, "walleye"

    goto :goto_0

    :pswitch_3
    const-string v0, "sailfish"

    goto :goto_0

    :pswitch_4
    const-string v0, "blueline"

    goto :goto_0

    :pswitch_5
    const-string v0, "crosshatch"

    goto :goto_0

    :pswitch_6
    const-string v0, "sargo"

    goto :goto_0

    :pswitch_7
    const-string v0, "bonito"

    goto :goto_0

    :pswitch_8
    const-string v0, "flame"

    goto :goto_0

    :pswitch_9
    const-string v0, "coral"

    goto :goto_0

    :pswitch_a
    const-string v0, "sunfish"

    goto :goto_0

    :pswitch_b
    const-string v0, "bramble"

    goto :goto_0

    :pswitch_c
    const-string v0, "redfin"

    goto :goto_0

    :pswitch_d
    const-string v0, "barbet"

    goto :goto_0

    :pswitch_e
    const-string v0, "oriole"

    goto :goto_0

    :pswitch_f
    const-string v0, "raven"

    goto :goto_0

    :pswitch_10
    const-string v0, "bluejay"

    goto :goto_0

    :pswitch_11
    const-string v0, "panther"

    goto :goto_0

    :pswitch_12
    const-string v0, "cheetah"

    goto :goto_0

    :pswitch_13
    const-string v0, "pipit"

    goto :goto_0

    :pswitch_14
    const-string v0, "tangor"

    goto :goto_0

    :pswitch_15
    const-string v0, "shiba"

    goto :goto_0

    :pswitch_16
    const-string v0, "husky"

    goto :goto_0

    :pswitch_17
    const-string v0, "lynx"

    goto :goto_0

    :pswitch_18
    const-string v0, "felix"

    goto :goto_0

    :pswitch_19
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public static SetHDRInterface()Ljava/lang/String;
    .locals 12

    const-string v6, "pref_frontcam_value_restart_key"

    invoke-static {v6}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, "pref_model_key_1"

    goto :goto_0

    :cond_0
    const-string v1, "pref_model_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lsgcam/Shamim;->SetDevice1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static SetInterface()Ljava/lang/String;
    .locals 12

    const-string v6, "pref_frontcam_value_restart_key"

    invoke-static {v6}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, "pref_device_key_1"

    goto :goto_0

    :cond_0
    const-string v1, "pref_device_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lsgcam/Shamim;->SetDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ShowNicknameAndChangelog(Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;)V
    .locals 9

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_config_show"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "pref_config_nickname_key"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v2, "Config XML"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "pref_config_nickname_key"

    const v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML created by : <b>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "</b><br>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "pref_config_changelog_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<br><b>ChangeLog :</b><br>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "pref_config_changelog_key"

    const v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v4, "<br>"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\S+://\\S+"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_config_show"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public static ShowToastDirect(Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static SkipResizePreference()Z
    .locals 5

    sget v2, Lsgcam/Shamim;->Front:I

    if-eqz v2, :cond_0

    sget-object v0, Lsgcam/devsettoptions/Pref;->upscf:Ldhj;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v1, "pref_aux_key"

    invoke-static {v1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lsgcam/devsettoptions/Pref;->upsc:Ldhj;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lsgcam/devsettoptions/Pref;->upsct:Ldhj;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lsgcam/devsettoptions/Pref;->upscw:Ldhj;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lsgcam/devsettoptions/Pref;->upsc4:Ldhj;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lsgcam/devsettoptions/Pref;->upsc5:Ldhj;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v0

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static SlowMotion4x()I
    .locals 10

    const-string v0, "pref_4xslowmotion_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const v1, 0x0

    if-lt v0, v1, :cond_1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->SlowMotion4x()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v5, 0x78

    return v5

    :cond_1
    const/16 v5, 0xf0

    return v5
.end method

.method public static SlowMotion8x()I
    .locals 10

    const-string v0, "pref_8xslowmotion_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const v1, 0x0

    if-lt v0, v1, :cond_1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->SlowMotion8x()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v5, 0xf0

    return v5

    :cond_1
    const/16 v5, 0x78

    return v5
.end method

.method public static VerifySignatureCrash()V
    .locals 11

    invoke-static {}, Lsgcam/Shamim;->AddSignatures()Ljava/lang/String;

    move-result-object v6

    const-string v0, "yzNjNIQUsFg8gwKUwnLhDw==knykSUnXeIqob51/BNf9rOzR37k=MrvrUYpw9sNHm90uICtunzUhmAiYifL3U28uUw==YhXwC6pL8YurV5L8eWv8VVWRckDxT3x+Zy2VaIjXXJY=1f1eFTTweAc1oF11zeIYP38WBBDjPNRO8Nqnqiuhu4O7C2F5qKxzYPiZoJcRoAouxjy65zYgHXTtYOC6HyUtWYKC/qHWTbDuIwoegP7ywOJe+n+mFU5dz+1PXsUl5LlZG0dlQHjb5n89HrxtKD5+mg=="

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v0, "Apk signature is cursed."

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    goto :goto_0

    :cond_0
    :goto_0
    return-void
.end method

.method public static VerifySignatureExit()V
    .locals 11

    invoke-static {}, Lsgcam/Shamim;->AddSignatures()Ljava/lang/String;

    move-result-object v6

    const-string v0, "yzNjNIQUsFg8gwKUwnLhDw==knykSUnXeIqob51/BNf9rOzR37k=MrvrUYpw9sNHm90uICtunzUhmAiYifL3U28uUw==YhXwC6pL8YurV5L8eWv8VVWRckDxT3x+Zy2VaIjXXJY=1f1eFTTweAc1oF11zeIYP38WBBDjPNRO8Nqnqiuhu4O7C2F5qKxzYPiZoJcRoAouxjy65zYgHXTtYOC6HyUtWYKC/qHWTbDuIwoegP7ywOJe+n+mFU5dz+1PXsUl5LlZG0dlQHjb5n89HrxtKD5+mg=="

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_0
    const-string v1, "SignatureCheck"

    const-string v0, "Signature check ok"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static createAutoPath()V
    .locals 4

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lsgcam/Shamim;->LibDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lsgcam/Shamim;->Directory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/SGCAM/8.8.224/PATCHED-LIB-SAVED/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/SGCAM/8.8.224/AWB/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/SGCAM/8.8.224/NOISE MODELER/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_4
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getAwbLog([F[FI)V
    .locals 11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsgcam/Shamim;->GetCameraStamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\nArray length= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n\nR_G=\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    aget v4, p0, v3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-ge v3, p2, :cond_0

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v6, "\n\n\nArray length= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n\nB_G=\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_1

    aget v4, p1, v3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-ge v3, p2, :cond_1

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v6, "\n\nGB/GR= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/SDE/Awb;->awbArr_GR_GB:F

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "AWB"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValueLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lsgcam/Shamim;->LogWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getBackVideoResolations()I
    .locals 1

    invoke-static {}, Lsgcam/Shamim;->GetVideoPreference()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x438

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x90

    goto :goto_0

    :pswitch_1
    const v0, 0x120

    goto :goto_0

    :pswitch_2
    const v0, 0x1e0

    goto :goto_0

    :pswitch_3
    const v0, 0x2d0

    goto :goto_0

    :pswitch_4
    const v0, 0x438

    goto :goto_0

    :pswitch_5
    const v0, 0x870

    goto :goto_0

    :pswitch_6
    const v0, 0x10e0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getCctLog(Ljava/lang/String;[FLcom/google/googlex/gcam/FloatArray9;)V
    .locals 12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsgcam/Shamim;->GetCameraStamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "System Cct:-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    new-array v2, v7, [F

    const/4 v3, 0x0

    :goto_0
    if-eq v7, v3, :cond_0

    iget-wide v5, p2, Lcom/google/googlex/gcam/FloatArray9;->a:J

    invoke-static {v5, v6, p2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FloatArray9_get(JLcom/google/googlex/gcam/FloatArray9;I)F

    move-result v5

    aput v5, v2, v3

    aget v5, v2, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-eq v7, v3, :cond_0

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Working Cct:-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_1

    aget v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-eq v2, v3, :cond_1

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lsgcam/Shamim;->LogWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getEdgeMode(I)I
    .locals 1

    sget-object v0, Lsgcam/devsettoptions/Pref;->dddE:Ldhk;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static getFrontVideoResolations()I
    .locals 1

    const-string v0, "pref_video_resolation_key_1"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x438

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x90

    goto :goto_0

    :pswitch_1
    const v0, 0x120

    goto :goto_0

    :pswitch_2
    const v0, 0x1e0

    goto :goto_0

    :pswitch_3
    const v0, 0x2d0

    goto :goto_0

    :pswitch_4
    const v0, 0x438

    goto :goto_0

    :pswitch_5
    const v0, 0x870

    goto :goto_0

    :pswitch_6
    const v0, 0x10e0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getISONm(Lkoq;)I
    .locals 14

    const-string v5, "pref_iso_noise_key"

    invoke-static {v5}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v5}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    :pswitch_0
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v5}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    :pswitch_1
    const/16 v5, 0x64

    return v5

    :pswitch_2
    const/16 v5, 0xc8

    return v5

    :pswitch_3
    const/16 v5, 0x12c

    return v5

    :pswitch_4
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v5}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const v1, 0x42480000    # 50.0f

    sub-float/2addr v5, v1

    const-string v3, "pref_iso_noise_coeff_key"

    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "0.5"

    invoke-static {v3, v8}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    float-to-int v5, v5

    return v5

    :pswitch_5
    const-string v5, "pref_manual_iso_noise_key"

    invoke-static {v5}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "6400"

    invoke-static {v5, v8}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getJPGQuality()I
    .locals 5

    const-string v0, "pref_qjpg_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v3, 0x5f

    return v3
.end method

.method public static getMerge()I
    .locals 10

    const-string v0, "pref_merge_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMotionHeight()I
    .locals 10

    invoke-static {}, Lsgcam/Shamim;->GetMotionPreference()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x1e0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x1e0

    goto :goto_0

    :pswitch_1
    const v0, 0x2d0

    goto :goto_0

    :pswitch_2
    const v0, 0x438

    goto :goto_0

    :pswitch_3
    const v0, 0x870

    goto :goto_0

    :pswitch_4
    const-string v0, "pref_getreso_motion1"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "480"

    invoke-static {v0, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMotionWeight()I
    .locals 10

    invoke-static {}, Lsgcam/Shamim;->GetMotionPreference()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x280

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x280

    goto :goto_0

    :pswitch_1
    const v0, 0x500

    goto :goto_0

    :pswitch_2
    const v0, 0x780

    goto :goto_0

    :pswitch_3
    const v0, 0xf00

    goto :goto_0

    :pswitch_4
    const-string v0, "pref_getreso_motion"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "640"

    invoke-static {v0, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getNoiseMode(I)I
    .locals 1

    sget-object v0, Lsgcam/devsettoptions/Pref;->dddN:Ldhk;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static getNoiseModelerLog([Landroid/util/Pair;Lkou;)V
    .locals 12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsgcam/Shamim;->GetCameraStamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_NOISE_PROFILE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v6}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/util/Pair;

    const-string v0, "System Noise modeler:-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "First Pair values:- \n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v4, v6, v5

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_0

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "\n\nSecond Pair values:- \n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v4, v6, v5

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_1

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "System ISO:- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lsgcam/Shamim;->GetISOsystem:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n\n\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Working Noise modeler:-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "First Pair values:- \n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    aget-object v4, p0, v5

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_2

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    sget-object v2, Lsgcam/NoiseModels;->NM_SC:[Landroid/util/Pair;

    if-eqz v2, :cond_3

    array-length v3, v2

    if-eqz v3, :cond_3

    const-string v0, "\n\nArray length = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_3

    aget-object v4, v2, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_3

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string v0, "\n\nSecond Pair values:- \n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_4

    aget-object v4, p0, v5

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_4

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    sget-object v2, Lsgcam/NoiseModels;->NM_OFF:[Landroid/util/Pair;

    if-eqz v2, :cond_5

    array-length v3, v2

    if-eqz v3, :cond_5

    const-string v0, "\n\nArray length = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_5

    aget-object v4, v2, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_5

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Working ISO:- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lsgcam/Shamim;->GetISO:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NOISE_MODELER"

    invoke-static {v2}, Lsgcam/lens/LensValue;->SetLensValueLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lsgcam/Shamim;->LogWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getNoiseVfMode(I)I
    .locals 1

    sget-object v0, Lsgcam/devsettoptions/Pref;->dddNF:Ldhk;

    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static getSensorInfoColorFilter(I)I
    .locals 1

    sget v0, Lsgcam/Shamim;->Front:I

    if-eqz v0, :cond_0

    sget-object v0, Lsgcam/devsettoptions/Pref;->aaaf:Ldhk;

    goto :goto_0

    :cond_0
    const-string v0, "pref_aux_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lsgcam/devsettoptions/Pref;->aaa:Ldhk;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lsgcam/devsettoptions/Pref;->aaa:Ldhk;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lsgcam/devsettoptions/Pref;->aaat:Ldhk;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lsgcam/devsettoptions/Pref;->aaaw:Ldhk;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lsgcam/devsettoptions/Pref;->aaa4:Ldhk;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lsgcam/devsettoptions/Pref;->aaa5:Ldhk;

    :goto_0
    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v0

    if-ltz v0, :cond_1

    return v0

    :cond_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSlowmoFps()I
    .locals 1

    invoke-static {}, Lsgcam/Shamim;->GetFpsPreference()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x0

    goto :goto_0

    :pswitch_1
    const v0, 0x1e

    goto :goto_0

    :pswitch_2
    const v0, 0x3c

    goto :goto_0

    :pswitch_3
    const v0, 0x78

    goto :goto_0

    :pswitch_4
    const v0, 0xf0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getVisibityButtons()V
    .locals 10

    const-string v1, "pref_aux_button_layout_key"

    invoke-static {v1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const v1, 0x8

    const v2, 0x7f0b048d

    invoke-static {v2, v1}, Lsgcam/Shamim;->getVisibleByFrameLayoutId(II)V

    const v1, 0x0

    const v2, 0x7f0b048e

    invoke-static {v2, v1}, Lsgcam/Shamim;->getVisibleByFrameLayoutId(II)V

    goto/16 :goto_0

    :pswitch_1
    const v1, 0x0

    const v2, 0x7f0b048d

    invoke-static {v2, v1}, Lsgcam/Shamim;->getVisibleByFrameLayoutId(II)V

    const v1, 0x8

    const v2, 0x7f0b048e

    invoke-static {v2, v1}, Lsgcam/Shamim;->getVisibleByFrameLayoutId(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getVisibleByFrameLayoutId(II)V
    .locals 7

    sget-object v1, Lsgcam/Shamim;->GetInstance:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public static getWhiteLevel(I)I
    .locals 1

    sget v0, Lsgcam/Shamim;->Front:I

    if-eqz v0, :cond_0

    sget-object v0, Lsgcam/devsettoptions/Pref;->bbbf:Ldhk;

    goto :goto_0

    :cond_0
    const-string v0, "pref_aux_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lsgcam/devsettoptions/Pref;->bbb:Ldhk;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lsgcam/devsettoptions/Pref;->bbb:Ldhk;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lsgcam/devsettoptions/Pref;->bbbt:Ldhk;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lsgcam/devsettoptions/Pref;->bbbw:Ldhk;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lsgcam/devsettoptions/Pref;->bbb4:Ldhk;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lsgcam/devsettoptions/Pref;->bbb5:Ldhk;

    :goto_0
    invoke-static {v0}, Lsgcam/Shamim;->GetDevSettIntValue(Ldhk;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static onRestart()V
    .locals 5

    sget v0, Lsgcam/Shamim;->HdrProcessing:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lsgcam/Shamim;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Lsgcam/Shamim;->GetEachModeIndividually(Landroid/content/Intent;)V

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    const-string v1, "HDR is processing. Try again shortly."

    invoke-static {v1}, Lsgcam/Shamim;->ShowToastDirect(Ljava/lang/String;)V

    return-void
.end method

.method public static readLine(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    const-string v1, ""

    return-object v1
.end method

.method public static setAperture()F
    .locals 3

    const-string v2, "pref_aperture"

    invoke-static {v2}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const v0, 0x4019999a    # 2.4f

    :goto_0
    return v0
.end method

.method public static setColorTransform()I
    .locals 2

    const-string v0, "pref_color_transform_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setSabre(I)I
    .locals 9

    const-string v0, "pref_sabre_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "-1"

    invoke-static {v0, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static writeLine(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error writing line to file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
