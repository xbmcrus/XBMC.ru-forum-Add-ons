.class public Lcom/SDE/getToneCurve;
.super Ljava/lang/Object;


# static fields
.field public static tonePresetName:Ljava/lang/String;

.field public static tonePresetName_2:Ljava/lang/String;

.field public static tonePresetName_3:Ljava/lang/String;

.field public static tonePresetName_4:Ljava/lang/String;

.field public static tonePresetName_5:Ljava/lang/String;

.field public static tonePresetName_front:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Default"

    sput-object v0, Lcom/SDE/getToneCurve;->tonePresetName:Ljava/lang/String;

    sput-object v0, Lcom/SDE/getToneCurve;->tonePresetName_front:Ljava/lang/String;

    sput-object v0, Lcom/SDE/getToneCurve;->tonePresetName_2:Ljava/lang/String;

    sput-object v0, Lcom/SDE/getToneCurve;->tonePresetName_3:Ljava/lang/String;

    sput-object v0, Lcom/SDE/getToneCurve;->tonePresetName_4:Ljava/lang/String;

    sput-object v0, Lcom/SDE/getToneCurve;->tonePresetName_5:Ljava/lang/String;

    return-void
.end method

.method public static SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    const-string v1, ""

    goto/32 :goto_0

    :pswitch_0
    const-string v1, ""

    goto/32 :goto_0

    :pswitch_1
    const-string v1, "_front"

    goto/32 :goto_0

    :pswitch_2
    const-string v1, "_2"

    goto/32 :goto_0

    :pswitch_3
    const-string v1, "_3"

    goto/32 :goto_0

    :pswitch_4
    const-string v1, "_4"

    goto/32 :goto_0

    :pswitch_5
    const-string v1, "_5"

    goto/32 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SetPresetToneName(Ljava/lang/String;I)V
    .locals 2

    if-ltz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    sput-object p0, Lcom/SDE/getToneCurve;->tonePresetName:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_0
    sput-object p0, Lcom/SDE/getToneCurve;->tonePresetName:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_1
    sput-object p0, Lcom/SDE/getToneCurve;->tonePresetName_front:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_2
    sput-object p0, Lcom/SDE/getToneCurve;->tonePresetName_2:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_3
    sput-object p0, Lcom/SDE/getToneCurve;->tonePresetName_3:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_4
    sput-object p0, Lcom/SDE/getToneCurve;->tonePresetName_4:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_5
    sput-object p0, Lcom/SDE/getToneCurve;->tonePresetName_5:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    nop

    :cond_0
    sput-object p0, Lcom/SDE/LibPatcher;->tonePresetName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static getToneCurve(I)[D
    .locals 14

    const-string v0, "pref_tone_curve_mode_key"

    if-ltz p0, :cond_0

    invoke-static {v0, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    if-gtz v0, :cond_7

    const-string v0, "lib_curve_pdarks_key"

    if-ltz p0, :cond_1

    invoke-static {v0, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/SDE/GetMenuValues;->getFloatValue(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const-string v2, "lib_curve_pwhites_key"

    if-ltz p0, :cond_2

    invoke-static {v2, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lcom/SDE/GetMenuValues;->getFloatValue(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v1

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v0, v0, v1

    mul-float v2, v2, v1

    add-float/2addr v2, v1

    const-string v1, "lib_curve_darks_key"

    if-ltz p0, :cond_3

    invoke-static {v1, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lcom/SDE/GetMenuValues;->getFloatValue(Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v1, v1, v3

    const-string v4, "lib_curve_whites_key"

    if-ltz p0, :cond_4

    invoke-static {v4, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    invoke-static {v4}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-static {v4}, Lcom/SDE/GetMenuValues;->getFloatValue(Ljava/lang/String;)F

    move-result v4

    mul-float v4, v4, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v4, v4, v3

    nop

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/high16 v6, 0x41880000    # 17.0f

    invoke-static {v5, v5, v6}, Lcom/SmootherChaikin;->P2F(FFF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v1, v6}, Lcom/SmootherChaikin;->P2F(FFF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v4, v6}, Lcom/SmootherChaikin;->P2F(FFF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0, v5, v6}, Lcom/SmootherChaikin;->P2F(FFF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x3f333333    # 0.7f

    const/16 v1, 0x8

    invoke-static {v3, v0, v1, v6}, Lcom/SmootherChaikin;->getCurveSmoothingChaikin(Ljava/util/List;FIF)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/SmootherChaikin;->convertToDoubleList(Ljava/util/List;F)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/SmootherChaikin;->convertToDoubleArray(Ljava/util/List;)[D

    move-result-object v1

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_5

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5

    :cond_5
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/32 :goto_6

    :cond_6
    invoke-static {v0}, Lcom/SmootherChaikin;->convertToDoubleArray(Ljava/util/List;)[D

    move-result-object v0

    const-string v2, "Tone Curve - Parametric Mode"

    goto/32 :goto_9

    :cond_7
    const-string v2, "lib_user_curve_key"

    if-ltz p0, :cond_8

    invoke-static {v2, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    invoke-static {v2}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    const/16 v4, 0x11

    new-array v0, v4, [D

    const/16 v5, 0x0

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/SDE/GetMenuValues;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    add-int/lit16 v5, v5, 0x1

    if-lt v5, v4, :cond_9

    const-string v2, "Tone Curve - Manual Mode"

    goto/32 :goto_9

    :cond_a
    const-string v0, "pref_tonecurve_preset_key"

    if-ltz p0, :cond_b

    invoke-static {v0, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_b
    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v3

    const/16 v1, 0x11

    new-array v0, v1, [D

    packed-switch v3, :pswitch_data_0

    fill-array-data v0, :array_0

    const-string v2, "Tone Curve Preset name - Google Stock"

    goto/32 :goto_9

    :pswitch_0
    fill-array-data v0, :array_0

    const-string v2, "Tone Curve Preset name - Google Stock"

    goto/32 :goto_9

    :pswitch_1
    fill-array-data v0, :array_1

    const-string v2, "Tone Curve Preset name - STRAIGHT"

    goto/32 :goto_9

    :pswitch_2
    fill-array-data v0, :array_2

    const-string v2, "Tone Curve Preset name - GMMW12"

    goto/32 :goto_9

    :pswitch_3
    fill-array-data v0, :array_3

    const-string v2, "Tone Curve Preset name - GMMR5"

    goto/32 :goto_9

    :pswitch_4
    fill-array-data v0, :array_4

    const-string v2, "Tone Curve Preset name - GMMU6"

    goto/32 :goto_9

    :pswitch_5
    fill-array-data v0, :array_5

    const-string v2, "Tone Curve Preset name - GMMX4"

    goto/32 :goto_9

    :pswitch_6
    fill-array-data v0, :array_6

    const-string v2, "Tone Curve Preset name - GMMX7"

    goto/32 :goto_9

    :pswitch_7
    fill-array-data v0, :array_7

    const-string v2, "Tone Curve Preset name - GMMU3"

    goto/32 :goto_9

    :pswitch_8
    fill-array-data v0, :array_8

    const-string v2, "Tone Curve Preset name - GMM-X2"

    goto/32 :goto_9

    :pswitch_9
    fill-array-data v0, :array_9

    const-string v2, "Tone Curve Preset name - GMMu5g4"

    goto/32 :goto_9

    :pswitch_a
    fill-array-data v0, :array_a

    const-string v2, "Tone Curve Preset name - GMMW8"

    goto/32 :goto_9

    :pswitch_b
    fill-array-data v0, :array_b

    const-string v2, "Tone Curve Preset name - GMMR2"

    goto/32 :goto_9

    :pswitch_c
    fill-array-data v0, :array_c

    const-string v2, "Tone Curve Preset name - GMMw9"

    goto/32 :goto_9

    :pswitch_d
    fill-array-data v0, :array_d

    const-string v2, "Tone Curve Preset name - HDRQuality"

    goto/32 :goto_9

    :pswitch_e
    fill-array-data v0, :array_e

    const-string v2, "Tone Curve Preset name - ALICE"

    goto/32 :goto_9

    :pswitch_f
    fill-array-data v0, :array_f

    const-string v2, "Tone Curve Preset name - IQ"

    goto/32 :goto_9

    :pswitch_10
    fill-array-data v0, :array_10

    const-string v2, "Tone Curve Preset name - TapTapLDR"

    goto/32 :goto_9

    :pswitch_11
    fill-array-data v0, :array_11

    const-string v2, "Tone Curve Preset name - TN2505"

    goto/32 :goto_9

    :pswitch_12
    fill-array-data v0, :array_12

    const-string v2, "Tone Curve Preset name - TN0606"

    goto/32 :goto_9

    :pswitch_13
    fill-array-data v0, :array_13

    const-string v2, "Tone Curve Preset name - Sunset"

    goto/32 :goto_9

    :pswitch_14
    fill-array-data v0, :array_14

    const-string v2, "Tone Curve Preset name - FriggAndSo"

    goto/32 :goto_9

    :pswitch_15
    fill-array-data v0, :array_15

    const-string v2, "Tone Curve Preset name - N04W15T26"

    goto/32 :goto_9

    :pswitch_16
    fill-array-data v0, :array_16

    const-string v2, "Tone Curve Preset name - User_X - T10"

    goto/32 :goto_9

    :pswitch_17
    fill-array-data v0, :array_17

    const-string v2, "Tone Curve Preset name - User_X - T12"

    goto/32 :goto_9

    :pswitch_18
    fill-array-data v0, :array_18

    const-string v2, "Tone Curve Preset name - User_X - T27A"

    goto/32 :goto_9

    :pswitch_19
    fill-array-data v0, :array_19

    const-string v2, "Tone Curve Preset name - User_X - T27B"

    goto/32 :goto_9

    :pswitch_1a
    fill-array-data v0, :array_1a

    const-string v2, "Tone Curve Preset name - User_X - F05W17T18"

    goto/32 :goto_9

    :pswitch_1b
    fill-array-data v0, :array_1b

    const-string v2, "Tone Curve Preset name - User_X - N05W17T22"

    goto/32 :goto_9

    :pswitch_1c
    fill-array-data v0, :array_1c

    const-string v2, "Tone Curve Preset name - User_X - N06W17T25"

    goto/32 :goto_9

    :pswitch_1d
    fill-array-data v0, :array_1d

    const-string v2, "Tone Curve Preset name - User_X - T17"

    goto/32 :goto_9

    :pswitch_1e
    fill-array-data v0, :array_1e

    const-string v2, "Tone Curve Preset name - User_X - T27C"

    goto/32 :goto_9

    :pswitch_1f
    fill-array-data v0, :array_1f

    const-string v2, "Tone Curve Preset name - User_X - T28"

    goto/32 :goto_9

    :pswitch_20
    fill-array-data v0, :array_20

    const-string v2, "Tone Curve Preset name - User_X - T34"

    goto/32 :goto_9

    :pswitch_21
    fill-array-data v0, :array_21

    const-string v2, "Tone Curve Preset name - domonikNF - D.S01.v2.n"

    goto/32 :goto_9

    :pswitch_22
    fill-array-data v0, :array_22

    const-string v2, "Tone Curve Preset name - xHDRv2"

    goto/32 :goto_9

    :pswitch_23
    fill-array-data v0, :array_23

    const-string v2, "Tone Curve Preset name - r0m10 - Etalon"

    goto/32 :goto_9

    :pswitch_24
    fill-array-data v0, :array_24

    const-string v2, "Tone Curve Preset name - r0m10 - Etalon E"

    goto/32 :goto_9

    :pswitch_25
    fill-array-data v0, :array_25

    const-string v2, "Tone Curve Preset name - r0m10 - Etalon e2"

    goto/32 :goto_9

    :pswitch_26
    fill-array-data v0, :array_26

    const-string v2, "Tone Curve Preset name - r0m10 - Etalon b"

    goto/32 :goto_9

    :pswitch_27
    fill-array-data v0, :array_27

    const-string v2, "Tone Curve Preset name - r0m10 - R1"

    goto/32 :goto_9

    :pswitch_28
    fill-array-data v0, :array_28

    const-string v2, "Tone Curve Preset name - R1_01_1.94"

    goto/32 :goto_9

    :pswitch_29
    fill-array-data v0, :array_29

    const-string v2, "Tone Curve Preset name - R1_01_1.9"

    goto/32 :goto_9

    :pswitch_2a
    fill-array-data v0, :array_2a

    const-string v2, "Tone Curve Preset name - r0m10 - R1_01_Final"

    goto/32 :goto_9

    :pswitch_2b
    fill-array-data v0, :array_2b

    const-string v2, "Tone Curve Preset name - R1_02_JoyA-B-C-D-X"

    goto/32 :goto_9

    :pswitch_2c
    fill-array-data v0, :array_2c

    const-string v2, "Tone Curve Preset name - Odin 2"

    goto/32 :goto_9

    :pswitch_2d
    fill-array-data v0, :array_2d

    const-string v2, "Tone Curve Preset name - Odin"

    goto/32 :goto_9

    :pswitch_2e
    fill-array-data v0, :array_2e

    const-string v2, "Tone Curve Preset name - Ateist"

    goto/32 :goto_9

    :pswitch_2f
    fill-array-data v0, :array_2f

    const-string v2, "Tone Curve Preset name - Zeta 2e"

    goto/32 :goto_9

    :pswitch_30
    fill-array-data v0, :array_30

    const-string v2, "Tone Curve Preset name - Zeta 2g"

    goto/32 :goto_9

    :pswitch_31
    fill-array-data v0, :array_31

    const-string v2, "Tone Curve Preset name - Discovery"

    goto/32 :goto_9

    :pswitch_32
    fill-array-data v0, :array_32

    const-string v2, "Tone Curve Preset name - Rtemkich - RHv3.0"

    goto/32 :goto_9

    :pswitch_33
    fill-array-data v0, :array_33

    const-string v2, "Tone Curve Preset name - tgRHv17_FINAL_(v7)"

    goto/32 :goto_9

    :pswitch_34
    fill-array-data v0, :array_34

    const-string v2, "Tone Curve Preset name - tgRHv21_FINAL_(v1)"

    goto/32 :goto_9

    :pswitch_35
    fill-array-data v0, :array_35

    const-string v2, "Tone Curve Preset name - DPS"

    goto/32 :goto_9

    :pswitch_36
    fill-array-data v0, :array_36

    const-string v2, "Tone Curve Preset name - Burial"

    goto/32 :goto_9

    :pswitch_37
    fill-array-data v0, :array_37

    const-string v2, "Tone Curve Preset name - Hasli"

    goto/32 :goto_9

    :pswitch_38
    fill-array-data v0, :array_38

    const-string v2, "Tone Curve Preset name - Arcide"

    goto/32 :goto_9

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
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
    .end packed-switch

    :array_0
    .array-data 8
        0x0
        0x3f8a9fbe76c8b439L    # 0.013
        0x3fac28f5c28f5c29L    # 0.055
        0x3fbd2f1a9fbe76c9L    # 0.114
        0x3fc78d4fdf3b645aL    # 0.184
        0x3fd0d4fdf3b645a2L    # 0.263
        0x3fd645a1cac08312L    # 0.348
        0x3fdbc6a7ef9db22dL    # 0.434
        0x3fe09ba5e353f7cfL    # 0.519
        0x3fe33b645a1cac08L    # 0.601
        0x3fe5b22d0e560419L    # 0.678
        0x3fe8083126e978d5L    # 0.751
        0x3fea1cac083126e9L    # 0.816
        0x3fec000000000000L    # 0.875
        0x3feda1cac083126fL    # 0.926
        0x3fef020c49ba5e35L    # 0.969
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x3f60624dd2f1a9fcL    # 0.002
        0x3f947ae147ae147bL    # 0.02
        0x3fb70a3d70a3d70aL    # 0.09
        0x3fc47ae147ae147bL    # 0.16
        0x3fcd70a3d70a3d71L    # 0.23
        0x3fd3333333333333L    # 0.3
        0x3fd7ae147ae147aeL    # 0.37
        0x3fdc28f5c28f5c29L    # 0.44
        0x3fe051eb851eb852L    # 0.51
        0x3fe28f5c28f5c28fL    # 0.58
        0x3fe4cccccccccccdL    # 0.65
        0x3fe70a3d70a3d70aL    # 0.72
        0x3fe947ae147ae148L    # 0.79
        0x3feb851eb851eb85L    # 0.86
        0x3fedc28f5c28f5c3L    # 0.93
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x3f8d708e3db7eac7L    # 0.014374839075562374
        0x3fabfdfb76426aa0L    # 0.054672105966536266
        0x3fbbd748a5d12177L    # 0.10875371979012081
        0x3fc60ec37f8bd172L    # 0.17232555129852362
        0x3fcf5005afa56297L    # 0.2446295840880068
        0x3fd4da4879415100L    # 0.32582294312784654
        0x3fda9b850ae6fe86L    # 0.4157421690433484
        0x3fe05e15d1ba7111L    # 0.5114850136047001
        0x3fe36b95c22dcd73L    # 0.6068829338604885
        0x3fe637aaff9b9493L    # 0.6942954056109037
        0x3fe893997bb0955eL    # 0.7680175224128722
        0x3fea7a3c51220c0aL    # 0.827421339476474
        0x3fec03e397e47f55L    # 0.875474735894367
        0x3fed591be0af5282L    # 0.9171275509239225
        0x3feea38cfc6c52bdL    # 0.957464688314381
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x3f9607fc68d53db9L    # 0.021514839075562373
        0x3fad723a0c802f26L    # 0.05751210596653626
        0x3fbab05f2cfc2382L    # 0.1042537197901208
        0x3fc48f60c8dd541cL    # 0.16062555129852363
        0x3fcd047df1d65f8fL    # 0.2266995840880068
        0x3fd36490663fec7cL    # 0.30301294312784655
        0x3fd8ef3def9f7a63L    # 0.3896021690433484
        0x3fdeff823a5a6c54L    # 0.48434501360470006
        0x3fe29697ce7787d0L    # 0.5808829338604884
        0x3fe57b5579574253L    # 0.6713054056109037
        0x3fe7fbb848fb366cL    # 0.7494775224128722
        0x3fea0ba4c3d22cceL    # 0.8139213394764739
        0x3febbdc3f8e2c6edL    # 0.8669147358943669
        0x3fed35e21fc36488L    # 0.9128275509239225
        0x3fee97c1164f52d3L    # 0.9560246883143811
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x3f91c33d1c23b43fL    # 0.017346339075562375
        0x3faa5a17d6cb4174L    # 0.05146860596653627
        0x3fb86661b2e8612eL    # 0.0953122197901208
        0x3fc2f961ee774199L    # 0.14823555129852364
        0x3fcb2268be6873faL    # 0.21198758408800683
        0x3fd2541f6a544e33L    # 0.28638444312784656
        0x3fd7b2b1e2b65dd5L    # 0.3702816690433484
        0x3fdd826685c8ffb1L    # 0.46108401360470014
        0x3fe1af8464377816L    # 0.5526754338604885
        0x3fe45efa2eadd0d5L    # 0.6365939056109037
        0x3fe6b290b7bcb527L    # 0.7092975224128723
        0x3fe8b336025371dfL    # 0.7718763394764742
        0x3fea840a640122f8L    # 0.8286182358943668
        0x3fec4a6ed4722d5dL    # 0.8840860509239225
        0x3fee1cbd344282e2L    # 0.9410081883143813
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x3f95ed8cfc47864bL    # 0.02141399659911362
        0x3fafc58c653d7f0dL    # 0.06205404983370331
        0x3fbcd755b12beaa4L    # 0.11266074729420922
        0x3fc62247d5c5b735L    # 0.17292116106130498
        0x3fcf04262c0ace3eL    # 0.2423141207742549
        0x3fd47d6a9060708cL    # 0.32015480136193086
        0x3fd9fcbde31b315bL    # 0.40605113199560144
        0x3fdffa0e12185d1bL    # 0.49963714377504836
        0x3fe2f53e890c608cL    # 0.5924370457387496
        0x3fe58dd52d61208cL    # 0.6735635649029219
        0x3fe7bcaaffa4b5beL    # 0.7417807572398301
        0x3fe9a00bcf8bd582L    # 0.8007868817937125
        0x3feb4fe68ebfa99dL    # 0.8535034931240265
        0x3fecdb8ba7ed4da0L    # 0.9017999915908383
        0x3fee69f6b6230b73L    # 0.950435024009819
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x3f946455b080de5bL    # 0.01991399659911362
        0x3faef3d54de49cf4L    # 0.06045404983370331
        0x3fbc8a0093c32411L    # 0.11148074729420922
        0x3fc61cb5c58d5acdL    # 0.17275116106130498
        0x3fcf300ee8216a62L    # 0.2436541207742549
        0x3fd4b1069f1f5030L    # 0.32330480136193085
        0x3fda4a90d4c52d42L    # 0.4108011319956014
        0x3fe02a7e3a9bf392L    # 0.5051871437750484
        0x3fe324c2045683c6L    # 0.5982370457387496
        0x3fe5b1e0a5646768L    # 0.6779635649029219
        0x3fe7cddf048f004aL    # 0.74388075723983
        0x3fe9a0dd86a32e64L    # 0.8008868817937125
        0x3feb439cd461745eL    # 0.8520034931240266
        0x3feccb295a1a5bf6L    # 0.8997999915908383
        0x3fee58c2b138c0e7L    # 0.9483350240098191
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x3f9644ac1c8c8fcaL    # 0.021746339075562372
        0x3fac59461fb3e892L    # 0.05536860596653627
        0x3fb95f6b1ea1edacL    # 0.0991122197901208
        0x3fc3815ea79ae435L    # 0.15238555129852363
        0x3fcb8b444a14e506L    # 0.2151875840880068
        0x3fd266f6dd6d4a83L    # 0.28753444312784654
        0x3fd796d7919c8fceL    # 0.36858166904334844
        0x3fdd2b90b61e3212L    # 0.4557840136047001
        0x3fe169e29976f503L    # 0.5441754338604884
        0x3fe417b4f5be9bffL    # 0.6278939056109037
        0x3fe68098172c8747L    # 0.7031975224128723
        0x3fe8a201fd692752L    # 0.7697763394764741
        0x3fea8d0d4201f4afL    # 0.8297182358943668
        0x3fec5ba2d95c77e9L    # 0.8861860509239224
        0x3fee283537895f3fL    # 0.9424081883143812
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x3f98626f60e0eb68L    # 0.023813
        0x3fb08d2a1f8e3ac1L    # 0.064654
        0x3fbd3996fa82e87dL    # 0.11416
        0x3fc611e42e126202L    # 0.172421
        0x3fced98bf7f06706L    # 0.241014
        0x3fd46d04e618ce2dL    # 0.319154
        0x3fd9f0739b024f66L    # 0.405301
        0x3fdfc743201040c0L    # 0.496537
        0x3fe2cb76f6d76252L    # 0.587337
        0x3fe57127f5e84f09L    # 0.670063
        0x3fe7bdf8f4730404L    # 0.74194
        0x3fe9ba40d90e23afL    # 0.803986
        0x3feb7dc5931ca7d6L    # 0.859103
        0x3fed1a9da597d49dL    # 0.909499
        0x3fee9b1d92b7fe09L    # 0.956435
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x3f9294f4337c9658L    # 0.018146339075562373
        0x3faaa8bc7f8c963eL    # 0.05206860596653627
        0x3fb859464172d30cL    # 0.0951122197901208
        0x3fc2d20f9a169734L    # 0.14703555129852364
        0x3fcac9ef808ef497L    # 0.20928758408800682
        0x3fd20a650c1f0eb6L    # 0.28188444312784655
        0x3fd7589536ae2caeL    # 0.3647816690433484
        0x3fdd307b00aa475fL    # 0.45608401360470013
        0x3fe18f917fa8eda4L    # 0.5487754338604884
        0x3fe44a7f4d6622c1L    # 0.6340939056109037
        0x3fe6ada66d309fdaL    # 0.7086975224128722
        0x3fe8bf7fbcb1a71eL    # 0.7733763394764741
        0x3fea9a28b37782d1L    # 0.8313182358943668
        0x3fec5ee9b5b9db71L    # 0.8865860509239224
        0x3fee2906eea0b821L    # 0.9425081883143812
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_a
    .array-data 8
        0x0
        0x3f90b4395810624eL    # 0.0163125
        0x3fafbe76c8b43958L    # 0.062
        0x3fbf71758e219654L    # 0.12282500000000002
        0x3fc8a305532617c2L    # 0.192475
        0x3fd13295e9e1b08aL    # 0.2687125
        0x3fd67b7e90ff9724L    # 0.3512875
        0x3fdc24f765fd8adbL    # 0.43975625
        0x3fe0ff06f6944673L    # 0.5311312499999999
        0x3fe3db8bac710cb2L    # 0.6205499999999999
        0x3fe67c779a6b50b1L    # 0.70269375
        0x3fe8c26809d49518L    # 0.77373125
        0x3feaaa2b1704ff42L    # 0.8332724999999999
        0x3fec44d013a92a30L    # 0.8834
        0x3fedaa161e4f7660L    # 0.9270125
        0x3feee8e8a71de69aL    # 0.9659312499999999
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x3f9584e9fa3db069L    # 0.021014839075562373
        0x3fad7f557df5bd48L    # 0.057612105966536264
        0x3fbb39ff544e77e3L    # 0.1063537197901208
        0x3fc5439a20edb66aL    # 0.16612555129852363
        0x3fce511650dd5623L    # 0.2368495840880068
        0x3fd45e6b8910d1dcL    # 0.31826294312784653
        0x3fda2d176f023112L    # 0.4090021690433484
        0x3fe02c9b056b7885L    # 0.5054450136047001
        0x3fe33db5b5125bfdL    # 0.6012829338604885
        0x3fe60d65b1b3aa33L    # 0.6891354056109037
        0x3fe86d96b2a87930L    # 0.7633775224128723
        0x3fea5977b57c28b6L    # 0.823421339476474
        0x3febea0097cf869fL    # 0.8723147358943669
        0x3fed471624adaf14L    # 0.9149275509239225
        0x3fee9a363b955d79L    # 0.9563246883143811
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_c
    .array-data 8
        0x0
        0x3f90b4395810624eL    # 0.0163125
        0x3faf559b3d07c84bL    # 0.0612
        0x3fbf573eab367a11L    # 0.12242500000000002
        0x3fc890ff97247454L    # 0.191925
        0x3fd122339c0ebee0L    # 0.2677125
        0x3fd66978d4fdf3b6L    # 0.3501875
        0x3fdc1e69ad42c3caL    # 0.43935625
        0x3fe109ad42c3c9eeL    # 0.5324312499999999
        0x3fe3f765fd8adab9L    # 0.6239499999999999
        0x3fe6a49ba5e353f8L    # 0.70759375
        0x3fe8edd2f1a9fbe7L    # 0.77903125
        0x3feacc154c985f06L    # 0.8374124999999999
        0x3fec4c985f06f694L    # 0.88435
        0x3fed8d2b2bfdb4ccL    # 0.9234825
        0x3feeb7c1bda5119cL    # 0.9599312499999999
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x3f8a9fbe76c8b439L    # 0.013
        0x3fb1eb851eb851ecL    # 0.07
        0x3fc0f5c28f5c28f6L    # 0.1325
        0x3fc999999999999aL    # 0.2
        0x3fd199999999999aL    # 0.275
        0x3fd6666666666666L    # 0.35
        0x3fdb333333333333L    # 0.425
        0x3fe010624dd2f1aaL    # 0.502
        0x3fe276c8b4395810L    # 0.577
        0x3fe4e5604189374cL    # 0.653
        0x3fe74bc6a7ef9db2L    # 0.728
        0x3fe999999999999aL    # 0.8
        0x3febb645a1cac083L    # 0.866
        0x3fed810624dd2f1bL    # 0.922
        0x3feee147ae147ae1L    # 0.965
        0x3fefd70a3d70a3d7L    # 0.995
    .end array-data

    :array_e
    .array-data 8
        0x0
        0x3f99a462fedb705cL    # 0.025041148
        0x3fa7275e00000000L    # 0.04522222280502319
        0x3fb4bc9800000000L    # 0.08100271224975586
        0x3fc409ae00000000L    # 0.15654540061950684
        0x3fceaf6100000000L    # 0.23972713947296143
        0x3fd44e3200000000L    # 0.3172726631164551
        0x3fd94f2000000000L    # 0.39545440673828125
        0x3fde353e00000000L    # 0.4719996452331543
        0x3fe13bc300000000L    # 0.5385451316833496
        0x3fe3244d00000000L    # 0.5981812477111816
        0x3fe4f14900000000L    # 0.6544537544250488
        0x3fe6b85200000000L    # 0.7100000381469727
        0x3fe8831300000000L    # 0.7660002708435059
        0x3fea67e300000000L    # 0.8251814842224121
        0x3fec312600000000L    # 0.8809995651245117
        0x3fedfec500000000L    # 0.937349796295166
    .end array-data

    :array_f
    .array-data 8
        0x0
        0x3f8eecbfb15b573fL    # 0.0151
        0x3fa990e92479e57dL    # 0.049933706
        0x3fbbf44eed8a17d8L    # 0.109196599
        0x3fc70a4666270c9aL    # 0.180001068
        0x3fd09c0304b10387L    # 0.259522204
        0x3fd60df0555f7a5bL    # 0.344600757
        0x3fdba9909f4170b0L    # 0.432224422
        0x3fe09379eb8f96c8L    # 0.518002472
        0x3fe32b242907bec4L    # 0.599016266
        0x3fe5a2daabbb37d8L    # 0.676129661
        0x3fe7fd1f5f04b70eL    # 0.749648748
        0x3fea3b2c313eefddL    # 0.819723221
        0x3fec51696bcbcd6bL    # 0.884937964
        0x3fee397fa5491ca1L    # 0.944518874
        0x3fef000000000000L    # 0.96875
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_10
    .array-data 8
        0x0
        0x3f9c9d61cb6b7b33L    # 0.0279441147239325
        0x3fb99774de1aca53L    # 0.099967293
        0x3fc6b88d4393c814L    # 0.177507074352946
        0x3fd0480b9cec3471L    # 0.2543973
        0x3fd618960519a782L    # 0.345250611286808
        0x3fdbeaa6a28fd03aL    # 0.436196955444078
        0x3fe0c2d8b2dcc5faL    # 0.523784970608346
        0x3fe35da74ace5a46L    # 0.605182310205074
        0x3fe5b5c9f0241b04L    # 0.678441018128837
        0x3fe7c428dddaa93eL    # 0.742695267971875
        0x3fe98adb79fd11f3L    # 0.798200357684037
        0x3feb13d39189c71fL    # 0.846170219663893
        0x3fec6e0f4cf4b3eeL    # 0.888435030273852
        0x3fedaa0fea1ac0feL    # 0.927009541735998
        0x3feed6bf28374826L    # 0.963714197680251
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_11
    .array-data 8
        0x0
        0x3f9374bc6a7ef9dbL    # 0.019
        0x3fa1b9a800000000L    # 0.03461956977844238
        0x3fb2d43b80000000L    # 0.07355090975761414
        0x3fbe2573570fb14eL    # 0.11775895
        0x3fc540cf60000000L    # 0.1660403460264206
        0x3fcbff14c0000000L    # 0.21872195601463318
        0x3fd17b0660000000L    # 0.2731338441371918
        0x3fd54d7320000000L
        0x3fd9adff20000000L    # 0.4012449085712433
        0x3fdeb21e1fd0aad3L    # 0.47962144
        0x3fe1bba66ffcf94cL    # 0.554156512
        0x3fe44ac18aacf54aL    # 0.634125491
        0x3fe69f206af07beaL    # 0.7069246376667
        0x3fe888f9b8e359fdL    # 0.7667206393333
        0x3fe9de4f0e38b07eL    # 0.808387306
        0x3feafd076249f71aL    # 0.84338731
    .end array-data

    :array_12
    .array-data 8
        0x0
        0x3f8a9fbe76c8b439L    # 0.013
        0x3fa6ef3d3a1d3240L    # 0.044794
        0x3fb8726d04e618ceL    # 0.095496
        0x3fc27d45a5fc7e6bL    # 0.144448
        0x3fc9b4f61672324dL    # 0.200835
        0x3fd0d2e514c22ee4L    # 0.262872
        0x3fd51815a07b352bL    # 0.329595
        0x3fd99795b35b0bbfL    # 0.399877
        0x3fde9210385c67e0L    # 0.477665
        0x3fe21ee675147f13L    # 0.566272
        0x3fe50c8472c0e7bcL    # 0.657778
        0x3fe7fe542e557de1L    # 0.749796
        0x3fea87f023e9ea14L    # 0.829094
        0x3fecb44c37e6f71aL    # 0.897009
        0x3fee7049a9973d9fL    # 0.951207
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_13
    .array-data 8
        0x0
        0x3f8a9fbe76c8b439L    # 0.013
        0x3fac28f5c28f5c29L    # 0.055
        0x3fbd2f1a9fbe76c9L    # 0.114
        0x3fc78d4fdf3b645aL    # 0.184
        0x3fd0d4fdf3b645a2L    # 0.263
        0x3fd645a1cac08312L    # 0.348
        0x3fdbc6a7ef9db22dL    # 0.434
        0x3fe09ba5e353f7cfL    # 0.519
        0x3fe33b645a1cac08L    # 0.601
        0x3fe5b22d0e560419L    # 0.678
        0x3fe8083126e978d5L    # 0.751
        0x3fea1cac083126e9L    # 0.816
        0x3fec000000000000L    # 0.875
        0x3feda1cac083126fL    # 0.926
        0x3fef020c49ba5e35L    # 0.969
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_14
    .array-data 8
        0x0
        0x3f9c9d5a187a4a49L    # 0.027944
        0x3fb9976ff3ade226L    # 0.099967
        0x3fc6b88ca3e7d135L    # 0.177507
        0x3fd0480a5accd530L    # 0.254397
        0x3fd6189374bc6a7fL    # 0.34525
        0x3fdbeaa2a0a95853L    # 0.436196
        0x3fe0c2d6a9c560c8L    # 0.523784
        0x3fe35da6a4441787L    # 0.605182
        0x3fe5b5c9e6687f45L    # 0.678441
        0x3fe7c4284dfce315L    # 0.742695
        0x3fe98adab9f559b4L    # 0.7982
        0x3feb13d31b9b66f9L    # 0.84617
        0x3fec6e0f3cb3e575L    # 0.888435
        0x3fedaa0ec7432010L    # 0.927009
        0x3feed6bebe1650a4L    # 0.963714
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_15
    .array-data 8
        0x0
        0x0
        0x3fafa9ce280968d9L    # 0.06184238661508496
        0x3fbd520c1bead97dL    # 0.11453319245888412
        0x3fc4ad10c628b979L    # 0.16153154063927014
        0x3fca8b18c93a7284L    # 0.20736989808655804
        0x3fd080c76b3f914eL    # 0.25786004518001426
        0x3fd444e3ac8535d0L    # 0.3167046723145548
        0x3fd85eea504ca7bbL    # 0.3807931694196857
        0x3fdd21c4260c71f2L    # 0.45518592563328675
        0x3fe1661e728a1a00L    # 0.5437156903361142
        0x3fe47dfdbc0fd1d0L    # 0.640379779155916
        0x3fe78d5bbcacd8f9L    # 0.736005657678816
        0x3fe8e699c2680916L    # 0.7781494900703219
        0x3fe9a743bc72f96dL    # 0.8016680412909359
        0x3feb51b676493279L    # 0.8537247
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_16
    .array-data 8
        0x0
        0x3f68288051c9f72fL    # 0.002949
        0x3fa9d3671ac14c66L    # 0.050441
        0x3fba4712e40852b5L    # 0.102647
        0x3fc431ceaf251c19L    # 0.15777
        0x3fcc76534373f317L    # 0.222361
        0x3fd242c3c9eecbfbL    # 0.285325
        0x3fd6fee6fb4c3c19L    # 0.359308
        0x3fdc01de26916441L    # 0.437614
        0x3fe08f2170931013L    # 0.517472
        0x3fe353868fd199bbL    # 0.603946
        0x3fe6087ebf22c01eL    # 0.688537
        0x3fe868a0d349be90L    # 0.762772
        0x3fea4299d883ba34L    # 0.82063
        0x3feb4968943e1006L    # 0.852711
        0x3fec9899bf5946c3L    # 0.893628
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_17
    .array-data 8
        0x0
        0x3f9b56fb8f57f738L    # 0.026699
        0x3fb0bc48f10a99b7L    # 0.065373
        0x3fbb14db59578a2bL    # 0.105787
        0x3fc328b6d86ec17fL    # 0.14968
        0x3fc96f2a5a469d73L    # 0.198705
        0x3fd0376d5497310aL    # 0.253383
        0x3fd46cb10342aa9fL    # 0.319134
        0x3fd97f38c5436b90L    # 0.39839
        0x3fdf242d05f28848L    # 0.486583
        0x3fe265fb71fbc5dfL    # 0.574949
        0x3fe4f8c21e1d2179L    # 0.655366
        0x3fe6f574f722e1acL    # 0.717463
        0x3fe865a57646ae3aL    # 0.762408
        0x3fe9ed3b6cbd987cL    # 0.810209
        0x3fec7cfa26a22b39L    # 0.890256
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_18
    .array-data 8
        0x0
        0x3f86872b020c49baL    # 0.011
        0x3fb0a3d70a3d70a4L    # 0.065
        0x3fc0c49ba5e353f8L    # 0.131
        0x3fc851eb851eb852L    # 0.19
        0x3fcf5c28f5c28f5cL    # 0.245
        0x3fd3020c49ba5e35L    # 0.297
        0x3fd69a1fd1569f49L    # 0.353157
        0x3fda9a133c1ce6c1L    # 0.415654
        0x3fdededaec4a4096L    # 0.482352
        0x3fe1dd334c5da6a4L    # 0.558252
        0x3fe4bce4217d284aL    # 0.648058
        0x3fe7e15a8deb0faeL    # 0.746259
        0x3feaab6d00b45ae6L    # 0.833426
        0x3fec849667b5f1bfL    # 0.891185
        0x3fedf7fae3608d09L    # 0.936521
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_19
    .array-data 8
        0x0
        0x3f826e978d4fdf3bL    # 0.009
        0x3fb0a3d70a3d70a4L    # 0.065
        0x3fc0c49ba5e353f8L    # 0.131
        0x3fc851eb851eb852L    # 0.19
        0x3fcf5c28f5c28f5cL    # 0.245
        0x3fd3020c49ba5e35L    # 0.297
        0x3fd69a1fd1569f49L    # 0.353157
        0x3fda9a133c1ce6c1L    # 0.415654
        0x3fdededaec4a4096L    # 0.482352
        0x3fe1dd334c5da6a4L    # 0.558252
        0x3fe4bce4217d284aL    # 0.648058
        0x3fe7e15a8deb0faeL    # 0.746259
        0x3feaab6d00b45ae6L    # 0.833426
        0x3fec9374bc6a7efaL    # 0.893
        0x3fee3d70a3d70a3dL    # 0.945
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1a
    .array-data 8
        0x0
        0x3fa31183b60285ecL    # 0.037243
        0x3fb1e2ac322291fbL    # 0.069865
        0x3fbab7564302b40fL    # 0.10436
        0x3fc240e1719f7f8dL    # 0.142605
        0x3fc807a28bb0a2cbL    # 0.187733
        0x3fce90364388ebccL    # 0.238776
        0x3fd2e5c0b9991362L    # 0.295273
        0x3fd6aa4fca42aed1L    # 0.354145
        0x3fdabff04577d955L    # 0.417965
        0x3fdf0b1bbcf4e875L    # 0.485053
        0x3fe1bf01322f2735L    # 0.554566
        0x3fe40f5c28f5c28fL    # 0.626875
        0x3fe67ffbce4217d3L    # 0.703123
        0x3fe903968d759ee9L    # 0.781688
        0x3febb599aa60913aL    # 0.865918
        0x3fee89aaa3ad18d2L    # 0.954305
    .end array-data

    :array_1b
    .array-data 8
        0x0
        0x0
        0x3fafa9c12f09d8c7L    # 0.061842
        0x3fbd5208e1501190L    # 0.114533
        0x3fc4ad0c3d25247dL    # 0.161531
        0x3fca8b11409a2403L    # 0.207369
        0x3fd080c73abc9470L    # 0.25786
        0x3fd444e0daa0cae6L    # 0.316704
        0x3fd85ee99a62ed35L    # 0.380793
        0x3fdd21c044284dfdL    # 0.455185
        0x3fe1661cffeb074aL    # 0.543715
        0x3fe4610f0e90bc7bL    # 0.636848
        0x3fe75dbfceb78898L    # 0.730194
        0x3feafc32ebe596c8L    # 0.843286
        0x3fede238da3c2118L    # 0.933865
        0x3fef3c89f40a2878L    # 0.97614
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1c
    .array-data 8
        0x0
        0x0
        0x3fada4484944ed70L    # 0.057894
        0x3fbbfe3b03e20cd0L    # 0.109348
        0x3fc339b024f6598eL    # 0.150198
        0x3fc97a67a52ac754L    # 0.199048
        0x3fd1080f98fa3769L    # 0.266117
        0x3fd5931ca7d6733fL    # 0.337104
        0x3fd9eb24a6a875d5L    # 0.404977
        0x3fde357a355043e5L    # 0.472014
        0x3fe1378ee2867275L    # 0.538032
        0x3fe3558ea7ce0fc3L    # 0.604194
        0x3fe57e1975f2cb64L    # 0.671643
        0x3fe7ad87f88765baL    # 0.739933
        0x3fea018a43bb40b3L    # 0.812688
        0x3fecbfe9fadafd11L    # 0.898427
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1d
    .array-data 8
        0x0
        0x3f689374bc6a7efaL    # 0.003
        0x3fb0a3d70a3d70a4L    # 0.065
        0x3fc0c49ba5e353f8L    # 0.131
        0x3fc851eb851eb852L    # 0.19
        0x3fcf5c28f5c28f5cL    # 0.245
        0x3fd3020c49ba5e35L    # 0.297
        0x3fd69a1fd1569f49L    # 0.353157
        0x3fda9a133c1ce6c1L    # 0.415654
        0x3fdeed783dff3f10L    # 0.483244
        0x3fe1e353f7ced917L    # 0.559
        0x3fe4b686a4ca4f44L    # 0.647281
        0x3fe852b2bfdb4cc2L    # 0.760095
        0x3fea014727dcbddcL    # 0.812656
        0x3feb0a82a5614df9L    # 0.845033
        0x3fecd245b291b824L    # 0.900668
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1e
    .array-data 8
        0x0
        0x3f70624dd2f1a9fcL    # 0.004
        0x3faf1151611ba3caL    # 0.060679
        0x3fbf1f14983d7907L    # 0.121568
        0x3fc71715c63ae254L    # 0.180392
        0x3fce9e98dcdb37caL    # 0.239215
        0x3fd313122b7baecdL    # 0.298039
        0x3fd6d6d3b6cbd988L    # 0.356862
        0x3fda9a9973d9ec70L    # 0.415686
        0x3fdededaec4a4096L    # 0.482352
        0x3fe1dd334c5da6a4L    # 0.558252
        0x3fe4bce4217d284aL    # 0.648058
        0x3fe7e15a8deb0faeL    # 0.746259
        0x3feaab6d00b45ae6L    # 0.833426
        0x3fec849667b5f1bfL    # 0.891185
        0x3fedf7fae3608d09L    # 0.936521
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1f
    .array-data 8
        0x0
        0x0
        0x3fb0163779e9d0eaL    # 0.062839
        0x3fc02a12f901083eL    # 0.126284
        0x3fc7b480a5accd53L    # 0.185196
        0x3fcefd5cb790fb65L    # 0.242107
        0x3fd30a8d21bc126aL    # 0.297519
        0x3fd6b877ab324852L    # 0.355009
        0x3fda9a5657fb6998L    # 0.41567
        0x3fdededaec4a4096L    # 0.482352
        0x3fe1dd334c5da6a4L    # 0.558252
        0x3fe4bce4217d284aL    # 0.648058
        0x3fe7e15a8deb0faeL    # 0.746259
        0x3feaab6d00b45ae6L    # 0.833426
        0x3fec849667b5f1bfL    # 0.891185
        0x3fedf7fae3608d09L    # 0.936521
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_20
    .array-data 8
        0x0
        0x3f7a9fbe76c8b439L    # 0.0065
        0x3fb0dc768dfbd6a6L    # 0.065864
        0x3fc07ae147ae147bL    # 0.12875
        0x3fc8a6dacabc5155L    # 0.192592
        0x3fd08d92fb19e732L    # 0.258641
        0x3fd48b4395810625L    # 0.321
        0x3fd8b4395810624eL    # 0.386
        0x3fdd70a3d70a3d71L    # 0.46
        0x3fe170a3d70a3d71L    # 0.545
        0x3fe4395810624dd3L    # 0.632
        0x3fe6e147ae147ae1L    # 0.715
        0x3fe970a3d70a3d71L    # 0.795
        0x3febd70a3d70a3d7L    # 0.87
        0x3feda1cac083126fL    # 0.926
        0x3fef020c49ba5e35L    # 0.969
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_21
    .array-data 8
        0x0
        0x0
        0x3fa26809d495182bL    # 0.03595
        0x3fb58a65492ff4baL    # 0.084143
        0x3fc24e9c4545846fL    # 0.143024
        0x3fcc266fd651b0cdL    # 0.219923
        0x3fd3b3bfb58d1527L    # 0.307846
        0x3fd904e1e71044f2L    # 0.390923
        0x3fddf63800218defL    # 0.468153
        0x3fe1764f11b60ae9L    # 0.545692
        0x3fe3e76c8b439581L    # 0.622
        0x3fe61337eb28d866L    # 0.689846
        0x3fe7f3647baa9b4aL    # 0.748461
        0x3fe9bef49cf56eadL    # 0.80456
        0x3feb9ab8e8ea39c5L    # 0.862637
        0x3fedb6da87a072d2L    # 0.928571
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_22
    .array-data 8
        0x0
        0x0
        0x3fa50fa58f7121abL    # 0.041135
        0x3fb8be7296f6512bL    # 0.096656
        0x3fc53ef6b5d462c3L    # 0.165984
        0x3fcf4c09c3ce208aL    # 0.244508
        0x3fd513c254a3c643L    # 0.329331
        0x3fdab47c73eee526L    # 0.417266
        0x3fe0385a4f00ef13L    # 0.506879
        0x3fe2e6299524bfd3L    # 0.590596
        0x3fe56c56d5cfaaceL    # 0.669475
        0x3fe7d6d5cfaacd9fL    # 0.744975
        0x3fe9eb7ed41b75a7L    # 0.809997
        0x3febc92bc2fc6973L    # 0.868307
        0x3fed66a76965f527L    # 0.918781
        0x3feecc1a8ac5c140L    # 0.962415
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_23
    .array-data 8
        0x0
        0x0
        0x3fac28f5c28f5c29L    # 0.055
        0x3fbb645a1cac0831L    # 0.107
        0x3fc5c28f5c28f5c3L    # 0.17
        0x3fcf5c28f5c28f5cL    # 0.245
        0x3fd4cccccccccccdL    # 0.325
        0x3fd9eb851eb851ecL    # 0.405
        0x3fdf5c28f5c28f5cL    # 0.49
        0x3fe28f5c28f5c28fL    # 0.58
        0x3fe570a3d70a3d71L    # 0.67
        0x3fe810624dd2f1aaL    # 0.752
        0x3fea666666666666L    # 0.825
        0x3fec51eb851eb852L    # 0.885
        0x3feddb22d0e56042L    # 0.933
        0x3fef0a3d70a3d70aL    # 0.97
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_24
    .array-data 8
        0x0
        0x0
        0x3f9999999999999aL    # 0.025
        0x3fb70a3d70a3d70aL    # 0.09
        0x3fc47ae147ae147bL    # 0.16
        0x3fce76c8b4395810L    # 0.238
        0x3fd4e5604189374cL    # 0.3265
        0x3fdac083126e978dL    # 0.418
        0x3fe051eb851eb852L    # 0.51
        0x3fe322d0e5604189L    # 0.598
        0x3fe5b22d0e560419L    # 0.678
        0x3fe7e76c8b439581L    # 0.747
        0x3fe9e353f7ced917L    # 0.809
        0x3febb645a1cac083L    # 0.866
        0x3fed4fdf3b645a1dL    # 0.916
        0x3feeb851eb851eb8L    # 0.96
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_25
    .array-data 8
        0x0
        0x0
        0x3f8cac083126e979L    # 0.014
        0x3fa604189374bc6aL    # 0.043
        0x3fb5c28f5c28f5c3L    # 0.085
        0x3fc1eb851eb851ecL    # 0.14
        0x3fca3d70a3d70a3dL    # 0.205
        0x3fd189374bc6a7f0L    # 0.274
        0x3fd645a1cac08312L    # 0.348
        0x3fdb851eb851eb85L    # 0.43
        0x3fe0a3d70a3d70a4L    # 0.52
        0x3fe3851eb851eb85L    # 0.61
        0x3fe6147ae147ae14L    # 0.69
        0x3fe851eb851eb852L    # 0.76
        0x3fea3d70a3d70a3dL    # 0.82
        0x3fec28f5c28f5c29L    # 0.88
        0x3fee147ae147ae14L    # 0.94
    .end array-data

    :array_26
    .array-data 8
        0x0
        0x0
        0x3f947ae147ae147bL    # 0.02
        0x3fa999999999999aL    # 0.05
        0x3fb70a3d70a3d70aL    # 0.09
        0x3fc1eb851eb851ecL    # 0.14
        0x3fc999999999999aL    # 0.2
        0x3fd147ae147ae148L    # 0.27
        0x3fd6666666666666L    # 0.35
        0x3fdc28f5c28f5c29L    # 0.44
        0x3fe147ae147ae148L    # 0.54
        0x3fe47ae147ae147bL    # 0.64
        0x3fe7851eb851eb85L    # 0.735
        0x3fea5604189374bcL    # 0.823
        0x3fec9374bc6a7efaL    # 0.893
        0x3fee666666666666L    # 0.95
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_27
    .array-data 8
        0x0
        0x0
        0x3fa999999999999aL    # 0.05
        0x3fb916872b020c4aL    # 0.098
        0x3fc3f7ced916872bL    # 0.156
        0x3fcc8b4395810625L    # 0.223
        0x3fd322d0e5604189L    # 0.299
        0x3fd83126e978d4feL    # 0.378
        0x3fdd3f7ced916873L    # 0.457
        0x3fe1604189374bc7L    # 0.543
        0x3fe44189374bc6a8L    # 0.633
        0x3fe7126e978d4fdfL    # 0.721
        0x3fe970a3d70a3d71L    # 0.795
        0x3feb6c8b43958106L    # 0.857
        0x3fed0624dd2f1aa0L    # 0.907
        0x3fee666666666666L    # 0.95
        0x3fef851eb851eb85L    # 0.985
    .end array-data

    :array_28
    .array-data 8
        0x0
        0x0
        0x3fa999780baa582eL    # 0.049999
        0x3fb5c27e9531550dL    # 0.084999
        0x3fc0a3cea6c1a049L    # 0.129999
        0x3fc76c82e019b0abL    # 0.182999
        0x3fcf9da9c99285a9L    # 0.246999
        0x3fd4ccc89b0ee49fL    # 0.324999
        0x3fda3d6c72192210L    # 0.409999
        0x3fe0000000000000L    # 0.5
        0x3fe2e145953586cbL    # 0.589999
        0x3fe5999780baa583L    # 0.674999
        0x3fe828f3a9b06812L    # 0.754999
        0x3fea6e957470eb25L    # 0.825999
        0x3fec9372a38b8ae3L    # 0.892999
        0x3fee7adf2ecf2064L    # 0.952499
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_29
    .array-data 8
        0x0
        0x3f8a9fbe76c8b439L    # 0.013
        0x3fa999780baa582eL    # 0.049999
        0x3fb5c27e9531550dL    # 0.084999
        0x3fc0a3cea6c1a049L    # 0.129999
        0x3fc76c82e019b0abL    # 0.182999
        0x3fcf9da9c99285a9L    # 0.246999
        0x3fd4ccc89b0ee49fL    # 0.324999
        0x3fda3d6c72192210L    # 0.409999
        0x3fe0000000000000L    # 0.5
        0x3fe2e145953586cbL    # 0.589999
        0x3fe5999780baa583L    # 0.674999
        0x3fe828f3a9b06812L    # 0.754999
        0x3fea6e957470eb25L    # 0.825999
        0x3fec9372a38b8ae3L    # 0.892999
        0x3fee7adf2ecf2064L    # 0.952499
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2a
    .array-data 8
        0x0
        0x0
        0x3f9eb851eb851eb8L    # 0.03
        0x3fb29c779a6b50b1L    # 0.0727
        0x3fbf7ced916872b0L    # 0.123
        0x3fc73b645a1cac08L    # 0.1815
        0x3fcf9db22d0e5604L    # 0.247
        0x3fd47ae147ae147bL    # 0.32
        0x3fd999999999999aL    # 0.4
        0x3fdf5c28f5c28f5cL    # 0.49
        0x3fe28f5c28f5c28fL    # 0.58
        0x3fe570a3d70a3d71L    # 0.67
        0x3fe8000000000000L    # 0.75
        0x3fea666666666666L    # 0.825
        0x3fec872b020c49baL    # 0.8915
        0x3fee666666666666L    # 0.95
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2b
    .array-data 8
        0x0
        0x3f8a9fbe76c8b439L    # 0.013
        0x3fa0e5604189374cL    # 0.033
        0x3fb3333333333333L    # 0.075
        0x3fc0000000000000L    # 0.125
        0x3fc76c8b43958106L    # 0.183
        0x3fd0000000000000L    # 0.25
        0x3fd4cccccccccccdL    # 0.325
        0x3fd9eb851eb851ecL    # 0.405
        0x3fdf5c28f5c28f5cL    # 0.49
        0x3fe2666666666666L    # 0.575
        0x3fe4cccccccccccdL    # 0.65
        0x3fe70a3d70a3d70aL    # 0.72
        0x3fe947ae147ae148L    # 0.79
        0x3feb851eb851eb85L    # 0.86
        0x3fedc28f5c28f5c3L    # 0.93
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2c
    .array-data 8
        0x0
        0x0
        0x3f97c80841ede11aL    # 0.023224
        0x3fb0e3ffef39085fL    # 0.065979
        0x3fc10060780fdc16L    # 0.132824
        0x3fcb98d8a979e16dL    # 0.215602
        0x3fd42a5614df8b15L    # 0.315084
        0x3fdb10cf5b1c8649L    # 0.422901
        0x3fe0aa66dbd72bcbL    # 0.520801
        0x3fe37e9531550ca2L    # 0.609202
        0x3fe60d8a979e16d7L    # 0.689153
        0x3fe87efe0ce0b913L    # 0.765502
        0x3fead68837718655L    # 0.838688
        0x3fecee631f8a0903L    # 0.9041
        0x3fee9129888f861aL    # 0.95522
        0x3fef957eed45e918L    # 0.986999
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2d
    .array-data 8
        0x0
        0x0
        0x3fa392189bd8383bL    # 0.038224
        0x3fb74a66559f6ec6L    # 0.090979
        0x3fc32d6ece13f4aaL    # 0.149824
        0x3fcbb99d451fc4c1L    # 0.216602
        0x3fd2f0bf1a5ca298L    # 0.295944
        0x3fd8b29a1b9f98b7L    # 0.385901
        0x3fdf27bf61aa3f03L    # 0.486801
        0x3fe2816aceaaf35eL    # 0.578298
        0x3fe5bb9f127f5e85L    # 0.679153
        0x3fe87bb2fec56d5dL    # 0.7651
        0x3feadeb95e5aff2aL    # 0.839688
        0x3fed1758e219652cL    # 0.9091
        0x3feeb1ee2435696eL    # 0.95922
        0x3fef957eed45e918L    # 0.986999
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2e
    .array-data 8
        0x0
        0x3faa367e414e7ee9L    # 0.051197
        0x3fbcf3dc054ef45aL    # 0.113096
        0x3fc7b6d43d03968dL    # 0.185267
        0x3fd0e9f2778140ddL    # 0.264279
        0x3fd6454152b0a6fcL    # 0.347977
        0x3fdbc67dfe32a066L    # 0.43399
        0x3fe0a9cfdd228566L    # 0.520729
        0x3fe33ea704bc2763L    # 0.601398
        0x3fe5ae18ac9f2fdcL    # 0.677502
        0x3fe80387df5cf249L    # 0.750431
        0x3fea0852b4d8ba41L    # 0.813516
        0x3febd972cd7cf5f5L    # 0.870294
        0x3fed6e3f78bbd380L    # 0.919708
        0x3feece67d77fae36L    # 0.962696
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2f
    .array-data 8
        0x0
        0x3f79ed7c6fbd273dL    # 0.00633
        0x3fa6eac8605681edL    # 0.04476
        0x3fb9f7f8ca8198f2L    # 0.10144
        0x3fc54af4f0d844d0L    # 0.16635
        0x3fce11dbca9691a7L    # 0.23492
        0x3fd39192641b328bL    # 0.30576
        0x3fd8426fe718a86dL    # 0.379055
        0x3fdd63b256ffc116L    # 0.45921
        0x3fe18a7c5ac471b4L    # 0.548155
        0x3fe48bc169c23b79L    # 0.64206
        0x3fe7956c0d6f544cL    # 0.73699
        0x3fea53ed527e5215L    # 0.822745
        0x3fecab367a0f9097L    # 0.8959
        0x3fee6ca03c4b09eaL    # 0.95076
        0x3fef8aa64c2f837bL    # 0.985675
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_30
    .array-data 8
        0x0
        0x3f948beb5b2d4d40L    # 0.020065
        0x3fab1df761cbccf3L    # 0.052963
        0x3fbb2778140dd3feL    # 0.106071
        0x3fc54af4f0d844d0L    # 0.16635
        0x3fce11dbca9691a7L    # 0.23492
        0x3fd39192641b328bL    # 0.30576
        0x3fd8426fe718a86dL    # 0.379055
        0x3fdd63b256ffc116L    # 0.45921
        0x3fe18a7c5ac471b4L    # 0.548155
        0x3fe48bc169c23b79L    # 0.64206
        0x3fe7956c0d6f544cL    # 0.73699
        0x3fea53ed527e5215L    # 0.822745
        0x3fecab367a0f9097L    # 0.8959
        0x3fee6ca03c4b09eaL    # 0.95076
        0x3fef8aa64c2f837bL    # 0.985675
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_31
    .array-data 8
        0x0
        0x0
        0x3f7a9fbe76c8b439L    # 0.0065
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fc999999999999aL    # 0.2
        0x3fd199999999999aL    # 0.275
        0x3fd6666666666666L    # 0.35
        0x3fdb333333333333L    # 0.425
        0x3fe028f5c28f5c29L    # 0.505
        0x3fe28f5c28f5c28fL    # 0.58
        0x3fe4f5c28f5c28f6L    # 0.655
        0x3fe74bc6a7ef9db2L    # 0.728
        0x3fe9810624dd2f1bL    # 0.797
        0x3feb851eb851eb85L    # 0.86
        0x3fed47ae147ae148L    # 0.915
        0x3feeb851eb851eb8L    # 0.96
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_32
    .array-data 8
        0x0
        0x0
        0x3fa70a3d70a3d70aL    # 0.045
        0x3fb999999999999aL    # 0.1
        0x3fc47ae147ae147bL    # 0.16
        0x3fcc8b4395810625L    # 0.223
        0x3fd2e147ae147ae1L    # 0.295
        0x3fd8000000000000L    # 0.375
        0x3fdda1cac083126fL    # 0.463
        0x3fe1eb851eb851ecL    # 0.56
        0x3fe4f5c28f5c28f6L    # 0.655
        0x3fe7ae147ae147aeL    # 0.74
        0x3fe9eb851eb851ecL    # 0.81
        0x3febd70a3d70a3d7L    # 0.87
        0x3fed70a3d70a3d71L    # 0.92
        0x3feec8b439581062L    # 0.962
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_33
    .array-data 8
        0x0
        0x3fa47ae147ae147bL    # 0.04
        0x3fb3333333333333L    # 0.075
        0x3fc147ae147ae148L    # 0.135
        0x3fc8ab474107314dL    # 0.192727
        0x3fcfa6a444178705L    # 0.247273
        0x3fd35104d551d68cL    # 0.30182
        0x3fd999999999999aL    # 0.4
        0x3fe0189374bc6a7fL    # 0.503
        0x3fe1eb851eb851ecL    # 0.56
        0x3fe4000000000000L    # 0.625
        0x3fe624dd2f1a9fbeL    # 0.692
        0x3fe7f7ced916872bL    # 0.749
        0x3fe9f2f9873ffac2L    # 0.81091
        0x3feb851eb851eb85L    # 0.86
        0x3fecf5c28f5c28f6L    # 0.905
        0x3fed99999999999aL    # 0.925
    .end array-data

    :array_34
    .array-data 8
        0x0
        0x3f947ae147ae147bL    # 0.02
        0x3fa47ae147ae147bL    # 0.04
        0x3fb851eb851eb852L    # 0.095
        0x3fc1eb851eb851ecL    # 0.14
        0x3fc851eb851eb852L    # 0.19
        0x3fce978d4fdf3b64L    # 0.239
        0x3fd6666666666666L    # 0.35
        0x3fddc28f5c28f5c3L    # 0.465
        0x3fe0f5c28f5c28f6L    # 0.53
        0x3fe3333333333333L    # 0.6
        0x3fe599999999999aL    # 0.675
        0x3fe7d70a3d70a3d7L    # 0.745
        0x3fea8f5c28f5c28fL    # 0.83
        0x3feccccccccccccdL    # 0.9
        0x3fed99999999999aL    # 0.925
        0x3fef5c28f5c28f5cL    # 0.98
    .end array-data

    :array_35
    .array-data 8
        0x0
        0x3f9008637bd05af7L    # 0.015657
        0x3fb02c7fbacb4289L    # 0.063179
        0x3fc07f993d5347a6L    # 0.128894
        0x3fcaab14ec204f2bL    # 0.208346
        0x3fd3387160956c0dL    # 0.30032
        0x3fd993af74cd3177L    # 0.399639
        0x3fdfcd2d44dca8e3L    # 0.496898
        0x3fe2bc1eff9f87f0L    # 0.585464
        0x3fe527503b81b64eL    # 0.661049
        0x3fe72dfb506dd69dL    # 0.724363
        0x3fe900e6afcce1c6L    # 0.78136
        0x3feaa69df97aaac1L    # 0.832839
        0x3fec423315d701daL    # 0.883081
        0x3fedbf401c4fc1dfL    # 0.929596
        0x3fef0df58c08b75fL    # 0.970454
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_36
    .array-data 8
        0x0
        0x3f8a9fbe76c8b439L    # 0.013
        0x3fa74bc6a7ef9db2L    # 0.0455
        0x3fb9374bc6a7ef9eL    # 0.0985
        0x3fc404ea4a8c154dL    # 0.1564
        0x3fcc9d495182a993L    # 0.22355
        0x3fd337c99ae924f2L    # 0.30028
        0x3fd8ad57bc7f77afL    # 0.38558
        0x3fde15a07b352a84L    # 0.47007
        0x3fe1c9eecbfb15b5L    # 0.5559
        0x3fe466ba493c89f4L    # 0.63754
        0x3fe6f9873ffac1d3L    # 0.71796
        0x3fe95421c044284eL    # 0.79152
        0x3feb604189374bc7L    # 0.8555
        0x3fed2ad81adea897L    # 0.91148
        0x3feeb5350092ccf7L    # 0.95962
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_37
    .array-data 8
        0x0
        0x3f8a9fbe76c8b439L    # 0.013
        0x3fa1eb851eb851ecL    # 0.035
        0x3fb374bc6a7ef9dbL    # 0.076
        0x3fc083126e978d50L    # 0.129
        0x3fc645a1cac08312L    # 0.174
        0x3fcc28f5c28f5c29L    # 0.22
        0x3fd126e978d4fdf4L    # 0.268
        0x3fd4395810624dd3L    # 0.316
        0x3fd83126e978d4feL    # 0.378
        0x3fdcac083126e979L    # 0.448
        0x3fe0ac083126e979L    # 0.521
        0x3fe36c8b43958106L    # 0.607
        0x3fe64dd2f1a9fbe7L    # 0.697
        0x3fe96872b020c49cL    # 0.794
        0x3feca3d70a3d70a4L    # 0.895
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_38
    .array-data 8
        0x0
        0x3f8fbe76c8b43958L    # 0.0155
        0x3fab22d0e5604189L    # 0.053
        0x3fbba5e353f7ced9L    # 0.108
        0x3fc6666666666666L    # 0.175
        0x3fd0000000000000L    # 0.25
        0x3fd5a1cac083126fL    # 0.338
        0x3fdbb645a1cac083L    # 0.433
        0x3fe13f7ced916873L    # 0.539
        0x3fe3d70a3d70a3d7L    # 0.62
        0x3fe604189374bc6aL    # 0.688
        0x3fe8189374bc6a7fL    # 0.753
        0x3fe9a9fbe76c8b44L    # 0.802
        0x3feb53f7ced91687L    # 0.854
        0x3fecc49ba5e353f8L    # 0.899
        0x3fee2d0e56041893L    # 0.943
        0x3ff0000000000000L    # 1.0
    .end array-data

    :goto_9
    invoke-static {v2, p0}, Lcom/SDE/getToneCurve;->SetPresetToneName(Ljava/lang/String;I)V

    const-string v3, "lib_tonecurve_0pointup_key"

    if-ltz p0, :cond_c

    invoke-static {v3, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_c
    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_a
    invoke-static {v3}, Lcom/Fix/Pref;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double v3, v3, v5

    const/16 v1, 0x11

    new-array v5, v1, [D

    fill-array-data v5, :array_39

    const/16 v2, 0x0

    :cond_d
    aget-wide v8, v0, v2

    aget-wide v6, v5, v2

    mul-double v6, v6, v3

    add-double v6, v6, v8

    double-to-int v10, v6

    if-nez v10, :cond_e

    goto/32 :goto_b

    :cond_e
    const/16 v11, 0x1

    int-to-double v6, v11

    :goto_b
    aput-wide v6, v0, v2

    add-int/lit16 v2, v2, 0x1

    if-lt v2, v1, :cond_d

    const-string v3, "lib_tonecurve_16pointdown_key"

    if-ltz p0, :cond_f

    invoke-static {v3, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_f
    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_c
    invoke-static {v3}, Lcom/Fix/Pref;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double v3, v3, v5

    const/16 v1, 0x11

    new-array v5, v1, [D

    fill-array-data v5, :array_3a

    const/16 v2, 0x0

    :cond_10
    aget-wide v8, v0, v2

    aget-wide v6, v5, v2

    mul-double v6, v6, v3

    sub-double v6, v8, v6

    const-wide v10, 0x0

    cmpl-double v12, v6, v10

    if-ltz v12, :cond_11

    goto/32 :goto_d

    :cond_11
    const/16 v12, 0x0

    int-to-double v6, v12

    :goto_d
    aput-wide v6, v0, v2

    add-int/lit16 v2, v2, 0x1

    if-lt v2, v1, :cond_10

    const-string v1, "lib_curve_mult_key"

    if-ltz p0, :cond_12

    invoke-static {v1, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_12
    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-static {v1}, Lcom/SDE/GetMenuValues;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1f

    const-string v3, "pref_tonecurve_mult1_key"

    if-ltz p0, :cond_13

    invoke-static {v3, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_13
    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_f
    invoke-static {v3}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    const/16 v1, 0x4

    const/16 v2, 0x0

    :cond_14
    aget-wide v5, v0, v2

    mul-double v5, v5, v3

    double-to-int v7, v5

    if-nez v7, :cond_15

    goto/32 :goto_10

    :cond_15
    const/16 v5, 0x1

    int-to-double v5, v5

    :goto_10
    aput-wide v5, v0, v2

    add-int/lit16 v2, v2, 0x1

    if-lt v2, v1, :cond_14

    const-string v3, "pref_tonecurve_mult2_key"

    if-ltz p0, :cond_16

    invoke-static {v3, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_16
    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_11
    invoke-static {v3}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    const/16 v1, 0x8

    const/16 v2, 0x4

    :cond_17
    aget-wide v5, v0, v2

    mul-double v5, v5, v3

    double-to-int v7, v5

    if-nez v7, :cond_18

    goto/32 :goto_12

    :cond_18
    const/16 v5, 0x1

    int-to-double v5, v5

    :goto_12
    aput-wide v5, v0, v2

    add-int/lit16 v2, v2, 0x1

    if-lt v2, v1, :cond_17

    const-string v3, "pref_tonecurve_mult3_key"

    if-ltz p0, :cond_19

    invoke-static {v3, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_19
    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_13
    invoke-static {v3}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    const/16 v1, 0xc

    const/16 v2, 0x8

    :cond_1a
    aget-wide v5, v0, v2

    mul-double v5, v5, v3

    double-to-int v7, v5

    if-nez v7, :cond_1b

    goto/32 :goto_14

    :cond_1b
    const/16 v5, 0x1

    int-to-double v5, v5

    :goto_14
    aput-wide v5, v0, v2

    add-int/lit16 v2, v2, 0x1

    if-lt v2, v1, :cond_1a

    const-string v3, "pref_tonecurve_mult4_key"

    if-ltz p0, :cond_1c

    invoke-static {v3, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_1c
    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_15
    invoke-static {v3}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    const/16 v1, 0x10

    const/16 v2, 0xc

    :cond_1d
    aget-wide v5, v0, v2

    mul-double v5, v5, v3

    double-to-int v7, v5

    if-nez v7, :cond_1e

    goto/32 :goto_16

    :cond_1e
    const/16 v5, 0x1

    int-to-double v5, v5

    :goto_16
    aput-wide v5, v0, v2

    add-int/lit16 v2, v2, 0x1

    if-lt v2, v1, :cond_1d

    :cond_1f
    return-object v0

    nop

    :array_39
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fee000000000000L    # 0.9375
        0x3fec000000000000L    # 0.875
        0x3fea000000000000L    # 0.8125
        0x3fe8000000000000L    # 0.75
        0x3fe6000000000000L    # 0.6875
        0x3fe4000000000000L    # 0.625
        0x3fe2000000000000L    # 0.5625
        0x3fe0000000000000L    # 0.5
        0x3fdc000000000000L    # 0.4375
        0x3fd8000000000000L    # 0.375
        0x3fd4000000000000L    # 0.3125
        0x3fd0000000000000L    # 0.25
        0x3fc8000000000000L    # 0.1875
        0x3fc0000000000000L    # 0.125
        0x3fb0000000000000L    # 0.0625
        0x0
    .end array-data

    :array_3a
    .array-data 8
        0x0
        0x3fb0000000000000L    # 0.0625
        0x3fc0000000000000L    # 0.125
        0x3fc8000000000000L    # 0.1875
        0x3fd0000000000000L    # 0.25
        0x3fd4000000000000L    # 0.3125
        0x3fd8000000000000L    # 0.375
        0x3fdc000000000000L    # 0.4375
        0x3fe0000000000000L    # 0.5
        0x3fe2000000000000L    # 0.5625
        0x3fe4000000000000L    # 0.625
        0x3fe6000000000000L    # 0.6875
        0x3fe8000000000000L    # 0.75
        0x3fea000000000000L    # 0.8125
        0x3fec000000000000L    # 0.875
        0x3fee000000000000L    # 0.9375
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method
