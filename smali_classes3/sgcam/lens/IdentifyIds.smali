.class public Lsgcam/lens/IdentifyIds;
.super Ljava/lang/Object;


# static fields
.field public static Get35mmFocalLength:Ljava/util/Set;

.field public static GetAllCameraID:Ljava/util/Set;

.field public static GetBackCameraIDStringEntries:Ljava/lang/String;

.field public static GetBackCameraIDStringValues:Ljava/lang/String;

.field public static GetBackId_2:I

.field public static GetBackId_3:I

.field public static GetBackId_4:I

.field public static GetBackId_5:I

.field public static GetBackId_Main:I

.field public static GetCameraBackID:Ljava/util/Set;

.field public static GetCameraFrontID:Ljava/util/Set;

.field public static GetFrontCameraIDStringEntries:Ljava/lang/String;

.field public static GetFrontCameraIDStringValues:Ljava/lang/String;

.field public static GetFrontId_2:I

.field public static GetFrontId_3:I

.field public static GetFrontId_4:I

.field public static GetFrontId_5:I

.field public static GetFrontId_Main:I

.field public static GetInstance:Lsgcam/lens/IdentifyIds;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lsgcam/lens/IdentifyIds;->GetInstance:Lsgcam/lens/IdentifyIds;

    invoke-static {p1}, Lsgcam/lens/IdentifyIds;->StartScanningCamerasLog(Landroid/hardware/camera2/CameraManager;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lsgcam/lens/IdentifyIds;->GetAllCameraID:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lsgcam/lens/IdentifyIds;->GetCameraFrontID:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lsgcam/lens/IdentifyIds;->GetCameraBackID:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lsgcam/lens/IdentifyIds;->Get35mmFocalLength:Ljava/util/Set;

    const-string v2, "pref_get_enable_camera_key"

    invoke-static {v2}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lsgcam/lens/IdentifyIds;->StartScanningCameras(Landroid/hardware/camera2/CameraManager;)V

    invoke-static {}, Lsgcam/lens/IdentifyIds;->SaveLensInfo()V

    goto/32 :goto_0

    :cond_0
    invoke-static {}, Lsgcam/lens/IdentifyIds;->GetSavedLensInfo()V

    :goto_0
    invoke-static {}, Lsgcam/lens/IdentifyIds;->DetectLensIdsBack()V

    invoke-static {}, Lsgcam/lens/IdentifyIds;->DetectLensIdsFront()V

    invoke-static {}, Lsgcam/lens/IdentifyIds;->getAutoLensIDFix()V

    invoke-static {}, Lsgcam/lens/IdentifyIds;->GetManualLensId()V

    invoke-static {}, Lsgcam/lens/IdentifyIds;->SaveLensLogInLogcat()V

    return-void
.end method

.method public static CheckDifference(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static DetectLensIdsBack()V
    .locals 15

    sget-object v0, Lsgcam/lens/IdentifyIds;->GetCameraBackID:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    const v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    const v5, 0x2

    if-lt v2, v5, :cond_0

    const v3, 0x1

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const-string v6, "pref_visible_button_1_key"

    const-string v7, "1"

    invoke-static {v6, v7}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "pref_visible_button_2_key"

    const-string v7, "1"

    invoke-static {v6, v7}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v5, 0x3

    if-lt v2, v5, :cond_1

    const v3, 0x2

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    const-string v6, "pref_visible_button_3_key"

    const-string v7, "1"

    invoke-static {v6, v7}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v5, 0x4

    if-lt v2, v5, :cond_2

    const v3, 0x3

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    const-string v6, "pref_visible_button_4_key"

    const-string v7, "1"

    invoke-static {v6, v7}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const v5, 0x5

    if-lt v2, v5, :cond_3

    const v3, 0x4

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    const-string v6, "pref_visible_button_5_key"

    const-string v7, "1"

    invoke-static {v6, v7}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static DetectLensIdsFront()V
    .locals 15

    sget-object v0, Lsgcam/lens/IdentifyIds;->GetCameraFrontID:Ljava/util/Set;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v2, v0

    const v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_Main:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_2:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_3:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_4:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_5:I

    sget-object v7, Lsgcam/devsettoptions/Pref;->auxf:Ldhj;

    invoke-static {v7}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v5, 0x2

    if-lt v2, v5, :cond_0

    const v3, 0x1

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_2:I

    :cond_0
    const v5, 0x3

    if-lt v2, v5, :cond_1

    const v3, 0x2

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_3:I

    :cond_1
    const v5, 0x4

    if-lt v2, v5, :cond_2

    const v3, 0x3

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_4:I

    :cond_2
    const v5, 0x5

    if-lt v2, v5, :cond_3

    const v3, 0x4

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_5:I

    :cond_3
    goto :goto_0

    :cond_4
    const v4, 0x1

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_Main:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_2:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_3:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_4:I

    sput v4, Lsgcam/lens/IdentifyIds;->GetFrontId_5:I

    :goto_0
    return-void
.end method

.method public static DivideBackFrontIds(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    :cond_0
    sget-object v0, Lsgcam/lens/IdentifyIds;->GetCameraBackID:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lsgcam/lens/IdentifyIds;->Get35mmFocalLength:Ljava/util/Set;

    invoke-static {p0}, Lsgcam/lens/IdentifyIds;->getFocallenthCalculation(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v3, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringEntries:Ljava/lang/String;

    invoke-static {p2, v3}, Lsgcam/lens/IdentifyIds;->getCameraIdEntries(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringEntries:Ljava/lang/String;

    sget-object v3, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringValues:Ljava/lang/String;

    invoke-static {p1, v3}, Lsgcam/lens/IdentifyIds;->getCameraIdEntryValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringValues:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p3, :cond_4

    :cond_3
    sget-object v0, Lsgcam/lens/IdentifyIds;->GetCameraFrontID:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v3, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringEntries:Ljava/lang/String;

    invoke-static {p2, v3}, Lsgcam/lens/IdentifyIds;->getCameraIdEntries(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringEntries:Ljava/lang/String;

    sget-object v3, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringValues:Ljava/lang/String;

    invoke-static {p1, v3}, Lsgcam/lens/IdentifyIds;->getCameraIdEntryValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringValues:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static GetManualLensId()V
    .locals 10

    const v1, -0x1

    const v2, -0x2

    const-string v0, "pref_manual_camera_id_key_main"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    const-string v0, "pref_cameramanual_id_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    sput v0, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    :cond_1
    const-string v0, "pref_manual_camera_id_key_2"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    const-string v0, "pref_cameramanual_id_key_2"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    :cond_2
    sput v0, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    :cond_3
    const-string v0, "pref_manual_camera_id_key_3"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_5

    if-ne v0, v2, :cond_4

    const-string v0, "pref_cameramanual_id_key_3"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    :cond_4
    sput v0, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    :cond_5
    const-string v0, "pref_manual_camera_id_key_4"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_6

    const-string v0, "pref_cameramanual_id_key_4"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    :cond_6
    sput v0, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    :cond_7
    const-string v0, "pref_manual_camera_id_key_5"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_9

    if-ne v0, v2, :cond_8

    const-string v0, "pref_cameramanual_id_key_5"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    :cond_8
    sput v0, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    :cond_9
    const-string v0, "pref_get_enable_camera_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "pref_manual_camera_id_key_front"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_b

    if-ne v0, v2, :cond_a

    const-string v0, "pref_cameramanual_id_key_front"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    :cond_a
    sput v0, Lsgcam/lens/IdentifyIds;->GetFrontId_Main:I

    :cond_b
    const-string v0, "pref_get_enable_camera_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "pref_manual_camera_idtele_key_front"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_c

    const-string v0, "pref_cameramanual_idtele_key_front"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    :cond_c
    sput v0, Lsgcam/lens/IdentifyIds;->GetFrontId_2:I

    :cond_d
    const-string v0, "pref_get_enable_camera_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "pref_manual_camera_idwide_key_front"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_f

    if-ne v0, v2, :cond_e

    const-string v0, "pref_cameramanual_idwide_key_front"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_f

    :cond_e
    sput v0, Lsgcam/lens/IdentifyIds;->GetFrontId_3:I

    :cond_f
    const-string v0, "pref_get_enable_camera_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "pref_manual_camera_idid4_key_front"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_11

    if-ne v0, v2, :cond_10

    const-string v0, "pref_cameramanual_idid4_key_front"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_11

    :cond_10
    sput v0, Lsgcam/lens/IdentifyIds;->GetFrontId_4:I

    :cond_11
    const-string v0, "pref_get_enable_camera_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "pref_manual_camera_idid5_key_front"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_13

    if-ne v0, v2, :cond_12

    const-string v0, "pref_cameramanual_idid5_key_front"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    :cond_12
    sput v0, Lsgcam/lens/IdentifyIds;->GetFrontId_5:I

    :cond_13
    return-void
.end method

.method public static GetSavedLensInfo()V
    .locals 10

    const-string v2, "pref_getbackid_stringentries_key"

    invoke-static {v2}, Lsgcam/lens/IdentifyIds;->GetStringSavedInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringEntries:Ljava/lang/String;

    const-string v2, "pref_getbackid_stringvalues_key"

    invoke-static {v2}, Lsgcam/lens/IdentifyIds;->GetStringSavedInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringValues:Ljava/lang/String;

    const-string v2, "pref_getfrontid_stringentries_key"

    invoke-static {v2}, Lsgcam/lens/IdentifyIds;->GetStringSavedInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringEntries:Ljava/lang/String;

    const-string v2, "pref_getfrontid_stringvalues_key"

    invoke-static {v2}, Lsgcam/lens/IdentifyIds;->GetStringSavedInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringValues:Ljava/lang/String;

    const-string v2, "pref_list_camera_key"

    invoke-static {v2}, Lsgcam/lens/IdentifyIds;->GetSetSavedInfo(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsgcam/lens/IdentifyIds;->GetAllCameraID:Ljava/util/Set;

    const-string v2, "pref_list_front_camera_key"

    invoke-static {v2}, Lsgcam/lens/IdentifyIds;->GetSetSavedInfo(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lsgcam/lens/IdentifyIds;->GetCameraFrontID:Ljava/util/Set;

    :cond_0
    const-string v2, "pref_list_back_camera_key"

    invoke-static {v2}, Lsgcam/lens/IdentifyIds;->GetSetSavedInfo(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    sput-object v0, Lsgcam/lens/IdentifyIds;->GetCameraBackID:Ljava/util/Set;

    :cond_1
    const-string v2, "pref_35mm_focal_length_key"

    invoke-static {v2}, Lsgcam/lens/IdentifyIds;->GetSetSavedInfo(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    sput-object v0, Lsgcam/lens/IdentifyIds;->Get35mmFocalLength:Ljava/util/Set;

    :cond_2
    return-void
.end method

.method public static GetSetSavedInfo(Ljava/lang/String;)Ljava/util/Set;
    .locals 9

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

    const/4 v0, 0x0

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static GetStringSavedInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

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

    const/4 v0, 0x0

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static PreventRepeatedIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
    .locals 15

    move-object v4, p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "front"

    goto/32 :goto_0

    :cond_0
    const-string v7, "back"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lsgcam/Shamim;->DetectPhysicalLens(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/4 v9, 0x0

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "focal length"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "aperture"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lsgcam/lens/IdentifyIds;->getCalculateAngleOfView(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "angle"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "sensor sensitivity"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    const v7, 0x0

    goto/32 :goto_1

    :cond_1
    const v7, 0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "flash"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lsgcam/lens/IdentifyIds;->getHardwareLevelName(I)Ljava/lang/String;

    move-result-object v7

    const-string v12, "hardware level"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static SaveLensInfo()V
    .locals 9

    const-string v1, "pref_get_enable_camera_key"

    const-string v2, "1"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_getbackid_stringentries_key"

    sget-object v2, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringEntries:Ljava/lang/String;

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_getbackid_stringvalues_key"

    sget-object v2, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringValues:Ljava/lang/String;

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_getfrontid_stringentries_key"

    sget-object v2, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringEntries:Ljava/lang/String;

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_getfrontid_stringvalues_key"

    sget-object v2, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringValues:Ljava/lang/String;

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_list_back_camera_key"

    sget-object v2, Lsgcam/lens/IdentifyIds;->GetCameraBackID:Ljava/util/Set;

    invoke-static {v1, v2}, Lsgcam/Shamim;->GetDefaultStringSet(Ljava/lang/String;Ljava/util/Set;)V

    const-string v1, "pref_list_front_camera_key"

    sget-object v2, Lsgcam/lens/IdentifyIds;->GetCameraFrontID:Ljava/util/Set;

    invoke-static {v1, v2}, Lsgcam/Shamim;->GetDefaultStringSet(Ljava/lang/String;Ljava/util/Set;)V

    sget-object v0, Lsgcam/lens/IdentifyIds;->GetAllCameraID:Ljava/util/Set;

    const-string v2, "pref_list_camera_key"

    invoke-static {v2, v0}, Lsgcam/Shamim;->GetDefaultStringSet(Ljava/lang/String;Ljava/util/Set;)V

    const-string v1, "pref_35mm_focal_length_key"

    sget-object v2, Lsgcam/lens/IdentifyIds;->Get35mmFocalLength:Ljava/util/Set;

    invoke-static {v1, v2}, Lsgcam/Shamim;->GetDefaultStringSet(Ljava/lang/String;Ljava/util/Set;)V

    const-string v2, "-1"

    const-string v1, "pref_manual_camera_id_key_main"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_manual_camera_id_key_2"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_manual_camera_id_key_3"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_manual_camera_id_key_4"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_manual_camera_id_key_5"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_manual_camera_id_key_front"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_manual_camera_idtele_key_front"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_manual_camera_idwide_key_front"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_manual_camera_idid4_key_front"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_manual_camera_idid5_key_front"

    invoke-static {v1, v2}, Lsgcam/lens/IdentifyIds;->SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SaveLensLogInLogcat()V
    .locals 14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Back Cam ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Main: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Tele: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Wide: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ID4: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ID5: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")\nFront Cam ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Main: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetFrontId_Main:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Tele: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetFrontId_2:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Wide: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetFrontId_3:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ID4: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetFrontId_4:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ID5: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetFrontId_5:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "IdentifyIds"

    invoke-static {v5, v6}, Lsgcam/logcat/LogcatGenerator;->GetStringTypeValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SetStringInSharedPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

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

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static StartScanningCameras(Landroid/hardware/camera2/CameraManager;)V
    .locals 15

    const-string v6, "Manual,Auto,"

    sput-object v6, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringEntries:Ljava/lang/String;

    sput-object v6, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringEntries:Ljava/lang/String;

    const-string v6, "-2,-1,"

    sput-object v6, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringValues:Ljava/lang/String;

    sput-object v6, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringValues:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x79

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lsgcam/lens/IdentifyIds;->PreventRepeatedIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lsgcam/lens/IdentifyIds;->CheckDifference(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v3, v7}, Lsgcam/lens/IdentifyIds;->getCameraCharacteristicsInfo(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lsgcam/lens/IdentifyIds;->GetAllCameraID:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v3, v5, v7}, Lsgcam/lens/IdentifyIds;->DivideBackFrontIds(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v4

    :goto_2
    goto/16 :goto_1

    :catch_1
    move-exception v2

    :cond_2
    return-void
.end method

.method public static StartScanningCamerasLog(Landroid/hardware/camera2/CameraManager;)V
    .locals 15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   * * * * * * * * ALL LENS INFO * * * * * * * *\n\n\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "              GENERATED BY SGCAM\n\n\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x79

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    if-eqz v4, :cond_2

    sput-object v4, Lsgcam/Shamim;->GetInstance:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v4}, Lsgcam/lens/IdentifyIds;->PreventRepeatedIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lsgcam/lens/IdentifyIds;->CheckDifference(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v3, v7}, Lsgcam/lens/IdentifyIds;->getCameraCharacteristicsInfo(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lsgcam/devsettoptions/Pref;->LOG:Ldhj;

    invoke-static {v7}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v4}, Lsgcam/lens/LensInfo;->formatAvailableCapabilities(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lsgcam/lens/LensInfo;->formatOutputSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lsgcam/lens/LensInfo;->formatCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lsgcam/lens/LensInfo;->formatRequestKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lsgcam/lens/LensInfo;->formatResultKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v12, "\n\n============================\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "============================\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v4

    :goto_2
    goto/16 :goto_1

    :catch_1
    move-exception v2

    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v1, "LENS_INFO.CSS"

    invoke-static {v1, v12}, Lsgcam/Shamim;->LogWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getAutoLensIDFix()V
    .locals 10

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Xiaomi13U()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x8

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x3

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    const v4, 0x4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Xiaomi13()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x3

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Xiaomi13Pro()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x3

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->VivoPD2227()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x3

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x5

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    const v4, 0x6

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    const v4, 0x3

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->SamsungUnknown1()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x0

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x34

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Samsungs22UExynos()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x38

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x36

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    const v4, 0x34

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    const v4, 0x38

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Samsungs22USnapdragon()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x38

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x34

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    const v4, 0x36

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    const v4, 0x38

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Iqoo9Pro()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x0

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x3

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    const v4, 0x0

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Iqoo9()Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    const v4, 0x4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    const v4, 0x4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    goto :goto_0

    :cond_8
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->RedmiNote8()Z

    move-result v4

    if-eqz v4, :cond_9

    const v4, 0x0

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x14

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x15

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    const v4, 0x16

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    const v4, 0x3d

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    goto :goto_0

    :cond_9
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->SamsungS23Ultra()Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x38

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x34

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    const v4, 0x36

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    const v4, 0x38

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    goto :goto_0

    :cond_a
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Xiaomi12sUltra()Z

    move-result v4

    if-eqz v4, :cond_b

    const v4, 0x8

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x3

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    goto :goto_0

    :cond_b
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GetRandomDevices()Z

    move-result v4

    if-eqz v4, :cond_c

    const v4, 0x0

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    const v4, 0x3

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    const v4, 0x2

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    const v4, 0x4

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    const v4, 0x5

    sput v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    :cond_c
    :goto_0
    return-void
.end method

.method public static getCalculateAngleOfView(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 7

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    const/4 v4, 0x0

    aget p0, p0, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr p0, v4

    float-to-double v4, p0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-int v2, v0

    return v2
.end method

.method public static getCameraCharacteristicsInfo(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;I)Ljava/lang/String;
    .locals 14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nCamera ID= "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " (repeated)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-static {p0}, Lsgcam/Shamim;->DetectPhysicalLens(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/4 v9, 0x0

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v12, "%.2f"

    invoke-static {v7, v12}, Lsgcam/Shamim;->GetTextFormat(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "\nFocal length= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    const-string v12, "mm\nAperture= f/"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lsgcam/lens/IdentifyIds;->getCalculateAngleOfView(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v12, "\nAngle= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\u00b0\nSensitivity range= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " - "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\nAe compensation range= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " - "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lsgcam/lens/IdentifyIds;->getPixelSizeCalculations(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v12, "%.2f"

    invoke-static {v7, v12}, Lsgcam/Shamim;->GetTextFormat(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "\nPixel size= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lsgcam/lens/IdentifyIds;->getFocallenthCalculation(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v12, "%.2f"

    invoke-static {v7, v12}, Lsgcam/Shamim;->GetTextFormat(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "\u00b5m\n35mm eqv focal length= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "false"

    goto/32 :goto_1

    :cond_1
    const-string v7, "true"

    :goto_1
    const-string v12, "mm\nFlash= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lsgcam/lens/IdentifyIds;->getHardwareLevelName(I)Ljava/lang/String;

    move-result-object v7

    const-string v12, "\nHardware level= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getCameraIdEntries(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCameraIdEntryValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFocallenthCalculation(Landroid/hardware/camera2/CameraCharacteristics;)F
    .locals 7

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SizeF;

    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    const/4 v0, 0x0

    aget p0, p0, v0

    const/high16 v0, 0x42100000    # 36.0f

    div-float/2addr v0, v5

    mul-float/2addr v0, p0

    return v0
.end method

.method public static getHardwareLevelName(I)Ljava/lang/String;
    .locals 7

    packed-switch p0, :pswitch_data_0

    const-string v0, "Null (limited)"

    goto :goto_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "1 (full)"

    goto :goto_0

    :pswitch_2
    const-string v0, "2 (legacy)"

    goto :goto_0

    :pswitch_3
    const-string v0, "3"

    goto :goto_0

    :pswitch_4
    const-string v0, "4 (external)"

    :goto_0
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

.method public static getPixelSizeCalculations(Landroid/hardware/camera2/CameraCharacteristics;)F
    .locals 7

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SizeF;

    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v4

    return v5
.end method


# virtual methods
.method public getCameraIdList()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lsgcam/lens/IdentifyIds;->GetAllCameraID:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "CameraManager2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GotArray: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
