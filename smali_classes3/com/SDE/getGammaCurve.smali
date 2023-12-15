.class public Lcom/SDE/getGammaCurve;
.super Ljava/lang/Object;


# static fields
.field public static gammaPresetName:Ljava/lang/String;

.field public static gammaPresetName_2:Ljava/lang/String;

.field public static gammaPresetName_3:Ljava/lang/String;

.field public static gammaPresetName_4:Ljava/lang/String;

.field public static gammaPresetName_5:Ljava/lang/String;

.field public static gammaPresetName_front:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Default"

    sput-object v0, Lcom/SDE/getGammaCurve;->gammaPresetName:Ljava/lang/String;

    sput-object v0, Lcom/SDE/getGammaCurve;->gammaPresetName_front:Ljava/lang/String;

    sput-object v0, Lcom/SDE/getGammaCurve;->gammaPresetName_2:Ljava/lang/String;

    sput-object v0, Lcom/SDE/getGammaCurve;->gammaPresetName_3:Ljava/lang/String;

    sput-object v0, Lcom/SDE/getGammaCurve;->gammaPresetName_4:Ljava/lang/String;

    sput-object v0, Lcom/SDE/getGammaCurve;->gammaPresetName_5:Ljava/lang/String;

    return-void
.end method

.method public static SetPresetGammaName(Ljava/lang/String;I)V
    .locals 2

    if-ltz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    sput-object p0, Lcom/SDE/getGammaCurve;->gammaPresetName:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_0
    sput-object p0, Lcom/SDE/getGammaCurve;->gammaPresetName:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_1
    sput-object p0, Lcom/SDE/getGammaCurve;->gammaPresetName_front:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_2
    sput-object p0, Lcom/SDE/getGammaCurve;->gammaPresetName_2:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_3
    sput-object p0, Lcom/SDE/getGammaCurve;->gammaPresetName_3:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_4
    sput-object p0, Lcom/SDE/getGammaCurve;->gammaPresetName_4:Ljava/lang/String;

    goto/32 :goto_0

    :pswitch_5
    sput-object p0, Lcom/SDE/getGammaCurve;->gammaPresetName_5:Ljava/lang/String;

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
    sput-object p0, Lcom/SDE/LibPatcher;->gammaPresetName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static getGammaCurve(I)[D
    .locals 14

    const-string v0, "pref_gamma_curve_mode_key"

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

    if-ltz v0, :cond_7

    const-string v0, "lib_gamma_pdarks_key"

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

    const-string v2, "lib_gamma_pwhites_key"

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

    const-string v1, "lib_gamma_darks_key"

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

    const-string v4, "lib_gamma_whites_key"

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

    const/high16 v6, 0x42040000    # 33.0f

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

    const/16 v2, 0x21

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

    const/16 v2, 0x21

    if-le v1, v2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/32 :goto_6

    :cond_6
    invoke-static {v0}, Lcom/SmootherChaikin;->convertToDoubleArray(Ljava/util/List;)[D

    move-result-object v0

    const-string v2, "Gamma Curve - Parametric Mode"

    goto/32 :goto_8

    :cond_7
    const-string v0, "pref_gammacurve_preset_key"

    if-ltz p0, :cond_8

    invoke-static {v0, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_8
    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v3

    const/16 v1, 0x21

    new-array v0, v1, [D

    packed-switch v3, :pswitch_data_0

    fill-array-data v0, :array_0

    const-string v2, "Gamma Curve Preset name - Google Stock"

    goto/32 :goto_8

    :pswitch_0
    fill-array-data v0, :array_0

    const-string v2, "Gamma Curve Preset name - Google Stock"

    goto/32 :goto_8

    :pswitch_1
    fill-array-data v0, :array_1

    const-string v2, "Gamma Curve Preset name - Straight"

    goto/32 :goto_8

    :pswitch_2
    fill-array-data v0, :array_2

    const-string v2, "Gamma Curve Preset name - GMM A4"

    goto/32 :goto_8

    :pswitch_3
    fill-array-data v0, :array_3

    const-string v2, "Gamma Curve Preset name - GMM A5"

    goto/32 :goto_8

    :pswitch_4
    fill-array-data v0, :array_4

    const-string v2, "Gamma Curve Preset name - HDR Quality"

    goto/32 :goto_8

    :pswitch_5
    fill-array-data v0, :array_5

    const-string v2, "Gamma Curve Preset name - Alice"

    goto/32 :goto_8

    :pswitch_6
    fill-array-data v0, :array_6

    const-string v2, "Gamma Curve Preset name - IQ"

    goto/32 :goto_8

    :pswitch_7
    fill-array-data v0, :array_7

    const-string v2, "Gamma Curve Preset name - Flat"

    goto/32 :goto_8

    :pswitch_8
    fill-array-data v0, :array_8

    const-string v2, "Gamma Curve Preset name - Odin"

    goto/32 :goto_8

    :pswitch_9
    fill-array-data v0, :array_9

    const-string v2, "Gamma Curve Preset name - TapTapLDR"

    goto/32 :goto_8

    :pswitch_a
    fill-array-data v0, :array_a

    const-string v2, "Gamma Curve Preset name - TN2505"

    goto/32 :goto_8

    :pswitch_b
    fill-array-data v0, :array_b

    const-string v2, "Gamma Curve Preset name - Sunset"

    goto/32 :goto_8

    :pswitch_c
    fill-array-data v0, :array_c

    const-string v2, "Gamma Curve Preset name - R1_01_1.8re"

    goto/32 :goto_8

    :pswitch_d
    fill-array-data v0, :array_d

    const-string v2, "Gamma Curve Preset name - R1_01_Final"

    goto/32 :goto_8

    :pswitch_e
    fill-array-data v0, :array_e

    const-string v2, "Gamma Curve Preset name - F03W15T18"

    goto/32 :goto_8

    :pswitch_f
    fill-array-data v0, :array_f

    const-string v2, "Gamma Curve Preset name - W17"

    goto/32 :goto_8

    :pswitch_10
    fill-array-data v0, :array_10

    const-string v2, "Gamma Curve Preset name - W15"

    goto/32 :goto_8

    :pswitch_11
    fill-array-data v0, :array_11

    const-string v2, "Gamma Curve Preset name - W20 (Deleted)"

    goto/32 :goto_8

    :pswitch_12
    fill-array-data v0, :array_12

    const-string v2, "Gamma Curve Preset name - W19"

    goto/32 :goto_8

    :pswitch_13
    fill-array-data v0, :array_13

    const-string v2, "Gamma Curve Preset name - W30"

    goto/32 :goto_8

    :pswitch_14
    fill-array-data v0, :array_14

    const-string v2, "Gamma Curve Preset name - Zeta 2e"

    goto/32 :goto_8

    :pswitch_15
    fill-array-data v0, :array_15

    const-string v2, "Gamma Curve Preset name - R1_02_JoyA-B-C-D"

    goto/32 :goto_8

    :pswitch_16
    fill-array-data v0, :array_16

    const-string v2, "Gamma Curve Preset name - R1_02_JoyX"

    goto/32 :goto_8

    :pswitch_17
    fill-array-data v0, :array_17

    const-string v2, "Gamma Curve Preset name - DPS"

    goto/32 :goto_8

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
    .end packed-switch

    :array_0
    .array-data 8
        0x0
        0x3f70a137f38c5437L    # 0.00406
        0x3f9352a843808851L    # 0.01887
        0x3fa6f9335d249e45L    # 0.04487
        0x3fb339c0ebedfa44L    # 0.0751
        0x3fbb645a1cac0831L    # 0.107
        0x3fc1e1b089a02752L    # 0.1397
        0x3fc62a1b5c7cd899L    # 0.17316
        0x3fca978d4fdf3b64L    # 0.20775
        0x3fcf2cf95d4e8fb0L    # 0.24356
        0x3fd1f6a93f290abbL    # 0.28068
        0x3fd46aa8eb463498L    # 0.31901
        0x3fd6e924f227d029L    # 0.35798
        0x3fd9601797cc3a00L    # 0.39649
        0x3fdbc6a7ef9db22dL    # 0.434
        0x3fde12d77318fc50L    # 0.4699
        0x3fe028f5c28f5c29L    # 0.505
        0x3fe14538ef34d6a1L    # 0.5397
        0x3fe25e353f7ced91L    # 0.574
        0x3fe374538ef34d6aL    # 0.60795
        0x3fe4872b020c49baL    # 0.6415
        0x3fe595810624dd2fL    # 0.6745
        0x3fe69fbe76c8b439L    # 0.707
        0x3fe7a5e353f7ced9L    # 0.739
        0x3fe8a7ef9db22d0eL    # 0.7705
        0x3fe9a5e353f7ced9L    # 0.8015
        0x3fea9fbe76c8b439L    # 0.832
        0x3feb94af4f0d844dL    # 0.8619
        0x3fec83126e978d50L    # 0.891
        0x3fed66cf41f212d7L    # 0.9188
        0x3fee45a1cac08312L    # 0.946
        0x3fef238da3c21188L    # 0.97309
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x3f713404ea4a8c15L    # 0.0042
        0x3fa32617c1bda512L    # 0.0374
        0x3fb212d77318fc50L    # 0.0706
        0x3fba92a305532618L    # 0.1038
        0x3fc189374bc6a7f0L    # 0.137
        0x3fc5c91d14e3bcd3L    # 0.1702
        0x3fca0902de00d1b7L    # 0.2034
        0x3fce48e8a71de69bL    # 0.2366
        0x3fd14467381d7dbfL    # 0.2698
        0x3fd3645a1cac0831L    # 0.303
        0x3fd5844d013a92a3L    # 0.3362
        0x3fd7a43fe5c91d15L    # 0.3694
        0x3fd9c432ca57a787L    # 0.4026
        0x3fdbe425aee631f9L    # 0.4358
        0x3fde04189374bc6aL    # 0.469
        0x3fe01205bc01a36eL    # 0.5022
        0x3fe121ff2e48e8a7L    # 0.5354
        0x3fe231f8a0902de0L    # 0.5686
        0x3fe341f212d77319L    # 0.6018
        0x3fe451eb851eb852L    # 0.635
        0x3fe561e4f765fd8bL    # 0.6682
        0x3fe671de69ad42c4L    # 0.7014
        0x3fe781d7dbf487fdL    # 0.7346
        0x3fe891d14e3bcd36L    # 0.7678
        0x3fe9a1cac083126fL    # 0.801
        0x3feab1c432ca57a8L    # 0.8342
        0x3febc1bda5119ce0L    # 0.8674
        0x3fecd1b71758e219L    # 0.9006
        0x3fede00d1b71758eL    # 0.9336
        0x3feef0068db8bac7L    # 0.9668
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x3f70e4aabd4aeffaL    # 0.00412432379806304
        0x3f92d6fadfb957ffL    # 0.018398208527592882
        0x3fa5a8096cea03faL    # 0.04229764418142419
        0x3fb26b8936873c96L    # 0.07195336896187352
        0x3fbaa0c7b4dc5cf5L    # 0.10401580968424524
        0x3fc18fea7af8ead5L    # 0.1372044659090849
        0x3fc5eeec05f17081L    # 0.17135381975356626
        0x3fca7210e08c6eabL    # 0.20660601581845603
        0x3fcf2091d4322f2aL    # 0.24318144665846236
        0x3fd1fd2d836b8b11L    # 0.28107774576180683
        0x3fd47b9aecdd1e7bL    # 0.3200442612764857
        0x3fd7007e27d3dce0L    # 0.35940507783329956
        0x3fd97db338d60d4dL    # 0.39829712438968984
        0x3fdbe8605ce0fee1L    # 0.4360581309337999
        0x3fde3fc11c53497fL    # 0.4726412560095454
        0x3fe04466e6c2e76aL    # 0.508349848466634
        0x3fe16461e86f92f3L    # 0.5435037173998282
        0x3fe2813cccf70bf1L    # 0.5782760623191036
        0x3fe39b0260a2968aL    # 0.6126720321087344
        0x3fe4b14e18ada1d3L    # 0.6466436845776634
        0x3fe5c372cc0cb5dcL    # 0.6801084504456258
        0x3fe6d16638c0bf7dL    # 0.7130614384131914
        0x3fe7dadc8042d7e8L    # 0.7454664712047334
        0x3fe8df56ab4c248eL    # 0.7772630067494377
        0x3fe9de33bbcaa7e6L    # 0.8083742778592267
        0x3fead6baa1beb400L    # 0.8387120398598427
        0x3febc7d9db313007L    # 0.8681458741280047
        0x3fecb03a843434f1L    # 0.89651227780419
        0x3fed8d92d0288c72L    # 0.9235319200128187
        0x3fee6314af4e5ad6L    # 0.9495948242136716
        0x3fef3397e1e72bd1L    # 0.9750480091255388
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x3f63a1bdb7a6235cL    # 0.0023964600961260806
        0x3f8fb8a7419ead90L    # 0.015488917055185764
        0x3fa403b964edac0aL    # 0.03909091336284838
        0x3fb197957f7d10b9L    # 0.06871923792374703
        0x3fb9dd354d0cb1b9L    # 0.10103161936849049
        0x3fc13e246c51ae57L    # 0.13470893181816976
        0x3fc5b12d533d12a3L    # 0.1694695145071324
        0x3fca49628d91c745L    # 0.20536453163691185
        0x3fcf0d197fec6fe4L    # 0.2425872683169238
        0x3fd1fdf326f3ebd7L    # 0.28112486652360985
        0x3fd486be9331c155L    # 0.32072414755295614
        0x3fd715cb13c58713L    # 0.3607051556665379
        0x3fd99cc4680165b1L    # 0.40019331127913477
        0x3fdc108c4bfbe29cL    # 0.4385100118666203
        0x3fde70260fafbcb5L    # 0.47559501201517246
        0x3fe06040e67ff7a8L    # 0.5117496969175948
        0x3fe1838ae1a1b173L    # 0.5473074347369632
        0x3fe2a38cda1a4545L    # 0.5824646243874346
        0x3fe3c060aac6f1efL    # 0.6172335944643786
        0x3fe4d985a808cd32L    # 0.6515529901429657
        0x3fe5eedbbae681f1L    # 0.6854075098418076
        0x3fe70046c7765aedL    # 0.7187837501286062
        0x3fe80d523a339aa4L    # 0.7516261231183603
        0x3fe914b9c74a43a4L    # 0.7837799923309956
        0x3fea14dfbff8e41dL    # 0.8150480985124237
        0x3feb0c2ceb2a46e4L    # 0.8452362626141761
        0x3febf950fdf04916L    # 0.8741841277826861
        0x3fecdb8c2858a5f0L    # 0.9018002307904549
        0x3fedb2c322ba3676L    # 0.9280715635556607
        0x3fee7f918bbd4903L    # 0.9530723313603463
        0x3fef435778c1aa79L    # 0.9769704206967865
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x3f6567d1c0000000L    # 0.002612981479614973
        0x3f8256e6a0000000L    # 0.00895481277257204
        0x3f956b3400000000L    # 0.020916759967803955
        0x3fa3d3bcc0000000L    # 0.03872480243444443
        0x3fae785740000000L    # 0.059511877596378326
        0x3fb629a2a0000000L    # 0.0865728035569191
        0x3fbd9a0940000000L    # 0.11563165485858917
        0x3fc2c34620000000L    # 0.14658428728580475
        0x3fc6f73c80000000L    # 0.17942005395889282
        0x3fcbdc0aa0000000L    # 0.21765263378620148
        0x3fd06e2460000000L    # 0.2567225396633148
        0x3fd2faa380000000L    # 0.2965477705001831
        0x3fd58dccc0000000L    # 0.33677977323532104
        0x3fd8313e80000000L    # 0.37800562381744385
        0x3fdae2f360000000L    # 0.42010197043418884
        0x3fdd9d89c0000000L
        0x3fe033d8a0000000L    # 0.5063288807868958
        0x3fe1a24120000000L    # 0.551056444644928
        0x3fe30d9840000000L    # 0.5954095125198364
        0x3fe47280a0000000L    # 0.6389773488044739
        0x3fe5d37780000000L    # 0.6820638179779053
        0x3fe72ddc80000000L    # 0.7243483066558838
        0x3fe880f020000000L    # 0.7657395005226135
        0x3fe9d08980000000L    # 0.8067061901092529
        0x3feb1a6f80000000L    # 0.8469769954681396
        0x3fec50ebe0000000L    # 0.8848780989646912
        0x3fed61fcc0000000L    # 0.9182113409042358
        0x3fee5cfb60000000L    # 0.9488503336906433
        0x3fef3d9b40000000L    # 0.976270318031311
        0x3fefcf2b20000000L    # 0.9940391182899475
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x3f6626b2f23033a4L    # 0.002704
        0x3f91919162687ff1L    # 0.01715686
        0x3fa292929441c0ebL    # 0.03627451
        0x3fad9d9db532266eL    # 0.05784314
        0x3fb58f28d25c2dd3L    # 0.08421569
        0x3fbcf0236910bab8L    # 0.11303922
        0x3fc2ba163bd69ad7L    # 0.14630392
        0x3fc7b557fb948b68L    # 0.18522167
        0x3fcd1d95a79c919cL    # 0.22746535
        0x3fd17da42563bcbeL    # 0.27329353
        0x3fd46aa8eb463498L    # 0.31901
        0x3fd6e924f227d029L    # 0.35798
        0x3fd97414a4d2b2c0L    # 0.39771
        0x3fdbedfa43fe5c92L    # 0.4364
        0x3fde58a32f44912aL    # 0.47416
        0x3fe04ff43419e300L    # 0.50976
        0x3fe1584f4c6e6d9cL    # 0.54203
        0x3fe255714b9cb685L    # 0.57293
        0x3fe352d234eb9a17L    # 0.60386
        0x3fe44ee392e1ef74L    # 0.63463
        0x3fe55379fa97e133L    # 0.66644
        0x3fe65edd052934adL    # 0.69908
        0x3fe76594af4f0d84L    # 0.73115
        0x3fe865d3996fa82fL    # 0.76243
        0x3fe9644523f67f4eL    # 0.79349
        0x3fea649906cca2dbL    # 0.82478
        0x3feb6223e1869835L    # 0.85573
        0x3fec564302b40f67L    # 0.88553
        0x3fed43419e300150L    # 0.91446
        0x3fee2e72da122fadL    # 0.94317
        0x3fef1800a7c5ac47L    # 0.97168
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x3f7f800000dbe6ffL    # 0.0076904297
        0x3f92effffa182be8L    # 0.018493652
        0x3fa1200000000000L    # 0.033447265625
        0x3faaf80000000000L    # 0.05267333984375
        0x3fb3640000000000L    # 0.07574462890625
        0x3fba140000000000L    # 0.10186767578125
        0x3fc0b40000000000L    # 0.1304931640625
        0x3fc4a00000000000L    # 0.1611328125
        0x3fc8c60000000000L    # 0.19354248046875
        0x3fcd1c0000000000L    # 0.2274169921875
        0x3fd0d00000000000L    # 0.2626953125
        0x3fd3270000000000L    # 0.29925537109375
        0x3fd5930000000000L    # 0.33709716796875
        0x3fd80a0000000000L    # 0.3756103515625
        0x3fda780000000000L    # 0.41357421875
        0x3fdccc0000000000L    # 0.449951171875
        0x3fdf060000000000L    # 0.4847412109375
        0x3fe0958000000000L    # 0.51824951171875
        0x3fe1a08000000000L    # 0.55084228515625
        0x3fe2a70000000000L    # 0.5828857421875
        0x3fe3ab8000000000L    # 0.61468505859375
        0x3fe4af8000000000L    # 0.64642333984375
        0x3fe5b40000000000L    # 0.67822265625
        0x3fe6b80000000000L    # 0.7099609375
        0x3fe7bc0000000000L    # 0.74169921875
        0x3fe8bf0000000000L    # 0.7733154296875
        0x3fe9c08000000000L    # 0.80474853515625
        0x3feabf8000000000L    # 0.83587646484375
        0x3febbd0000000000L    # 0.8668212890625
        0x3fecba0000000000L    # 0.897705078125
        0x3fee2e72da122fadL    # 0.94317
        0x3fef1800a7c5ac47L    # 0.97168
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x3f70a137f38c5437L    # 0.00406
        0x3f92dc767ccdcabdL    # 0.018419124
        0x3fa4feb7e0000000L    # 0.04100584611296654
        0x3fb17fcb20000000L    # 0.0683562234044075
        0x3fb973a560000000L    # 0.09942086786031723
        0x3fc0f30ac0000000L    # 0.13241705298423767
        0x3fc55bf7e0000000L    # 0.1668691486120224
        0x3fca274ae0000000L    # 0.20432411134243011
        0x3fcf03a400000000L    # 0.24229860305786133
        0x3fd1f55c80000000L    # 0.2806006669998169
        0x3fd4755120000000L    # 0.3196604549884796
        0x3fd6fbc6a0000000L    # 0.35911718010902405
        0x3fd98cbac0000000L    # 0.3992144465446472
        0x3fdc0bed00000000L    # 0.43822789192199707
        0x3fde7b3c20000000L    # 0.4762716591358185
        0x3fe0711d20000000L    # 0.5138078331947327
        0x3fe19db000000000L    # 0.5504989624023438
        0x3fe2c5e480000000L    # 0.5866568088531494
        0x3fe3eb0500000000L    # 0.622438907623291
        0x3fe50c5a80000000L    # 0.6577579975128174
        0x3fe61d4da0000000L    # 0.6910770535469055
        0x3fe7228600000000L    # 0.7229642868041992
        0x3fe821c400000000L    # 0.7541217803955078
        0x3fe91d1040000000L    # 0.7847977876663208
        0x3fea118860000000L    # 0.81464022397995
        0x3feafaf860000000L    # 0.8431360125541687
        0x3febde8c40000000L    # 0.870916485786438
        0x3fecbc5b60000000L    # 0.8979927897453308
        0x3fed93c5c0000000L    # 0.9242886304855347
        0x3fee6611c0000000L    # 0.9499596357345581
        0x3fef34d3a0000000L    # 0.9751985669136047
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x3f6f9f01b866e43bL    # 0.00386
        0x3f96e3f23e878b60L    # 0.022353921
        0x3fa89d95c9f8a96cL    # 0.048077279
        0x3fb405a0fa7232b4L    # 0.078210889
        0x3fbd03aada5eb0baL    # 0.11333721
        0x3fc304078c106f0eL    # 0.14856047
        0x3fc76f3c8e50bb2eL    # 0.18308217
        0x3fcc3dc0c04f1009L    # 0.22063455
        0x3fd072ed27b6276fL    # 0.25701455
        0x3fd30de5c6c3c943L    # 0.29772324
        0x3fd5ac735b416f36L    # 0.33865055
        0x3fd83ca44b2369e7L    # 0.37870128
        0x3fdae2bcce2714edL    # 0.42008896
        0x3fdd7bded35f8e05L    # 0.46068545
        0x3fe00c0a9fec1918L    # 0.50146991
        0x3fe153fc613a01afL    # 0.54150218
        0x3fe28ed55ae5d4b1L    # 0.57993572
        0x3fe3d059e4f8bd96L    # 0.61918349
        0x3fe4da98dd870441L    # 0.65168422
        0x3fe62b2a1a85bd44L    # 0.6927691
        0x3fe74bead4f5903aL    # 0.72801725
        0x3fe8611decfaea97L    # 0.76185509
        0x3fe97e9be751b351L    # 0.7967052
        0x3fea917b22353414L    # 0.83025891
        0x3feba1c480a2fd9bL    # 0.86349702
        0x3fec8df49fcf93a7L    # 0.89232856
        0x3fed6c13df85e202L    # 0.91944307
        0x3fee3d147dbb6ca8L    # 0.94495606
        0x3feeedf17fdf893dL    # 0.96654582
        0x3fef7a1f202bc47fL    # 0.98365742
        0x3fefd795be17d330L    # 0.99506652
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x3f70a137f38c5437L    # 0.00406
        0x3f9352a843808851L    # 0.01887
        0x3fa6f9335d249e45L    # 0.04487
        0x3fb339c0ebedfa44L    # 0.0751
        0x3fbb8327674d1633L    # 0.10747
        0x3fc1e892253111f1L    # 0.13991
        0x3fc62a1b5c7cd899L    # 0.17316
        0x3fca978d4fdf3b64L    # 0.20775
        0x3fcf2cf95d4e8fb0L    # 0.24356
        0x3fd1f6a93f290abbL    # 0.28068
        0x3fd46aa8eb463498L    # 0.31901
        0x3fd6e924f227d029L    # 0.35798
        0x3fd97414a4d2b2c0L    # 0.39771
        0x3fdbedfa43fe5c92L    # 0.4364
        0x3fde58a32f44912aL    # 0.47416
        0x3fe04ff43419e300L    # 0.50976
        0x3fe1584f4c6e6d9cL    # 0.54203
        0x3fe255714b9cb685L    # 0.57293
        0x3fe352d234eb9a17L    # 0.60386
        0x3fe44ee392e1ef74L    # 0.63463
        0x3fe55379fa97e133L    # 0.66644
        0x3fe65edd052934adL    # 0.69908
        0x3fe76594af4f0d84L    # 0.73115
        0x3fe865d3996fa82fL    # 0.76243
        0x3fe9644523f67f4eL    # 0.79349
        0x3fea649906cca2dbL    # 0.82478
        0x3feb6223e1869835L    # 0.85573
        0x3fec564302b40f67L    # 0.88553
        0x3fed43419e300150L    # 0.91446
        0x3fee2e72da122fadL    # 0.94317
        0x3fef1800a7c5ac47L    # 0.97168
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_a
    .array-data 8
        0x0
        0x3f70a137f38c5437L    # 0.00406
        0x3f92dc7680000000L    # 0.01841912418603897
        0x3fa4feb7e0000000L    # 0.04100584611296654
        0x3fb17fcb20000000L    # 0.0683562234044075
        0x3fb973a560000000L    # 0.09942086786031723
        0x3fc0f30ac0000000L    # 0.13241705298423767
        0x3fc55bf7e0000000L    # 0.1668691486120224
        0x3fca274ae0000000L    # 0.20432411134243011
        0x3fcf03a400000000L    # 0.24229860305786133
        0x3fd1f55c80000000L    # 0.2806006669998169
        0x3fd4755120000000L    # 0.3196604549884796
        0x3fd6fbc6a0000000L    # 0.35911718010902405
        0x3fd98cbac0000000L    # 0.3992144465446472
        0x3fdc0bed00000000L    # 0.43822789192199707
        0x3fde7b3c20000000L    # 0.4762716591358185
        0x3fe0711d20000000L    # 0.5138078331947327
        0x3fe19db000000000L    # 0.5504989624023438
        0x3fe2c5e480000000L    # 0.5866568088531494
        0x3fe3eb0500000000L    # 0.622438907623291
        0x3fe50c5a80000000L    # 0.6577579975128174
        0x3fe61d4da0000000L    # 0.6910770535469055
        0x3fe7228600000000L    # 0.7229642868041992
        0x3fe821c400000000L    # 0.7541217803955078
        0x3fe91d1040000000L    # 0.7847977876663208
        0x3fea118860000000L    # 0.81464022397995
        0x3feafaf860000000L    # 0.8431360125541687
        0x3febde8c40000000L    # 0.870916485786438
        0x3fecbc5b60000000L    # 0.8979927897453308
        0x3fed93c5c0000000L    # 0.9242886304855347
        0x3fee6611c0000000L    # 0.9499596357345581
        0x3fef34d3a0000000L    # 0.9751985669136047
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x3f70a137f38c5437L    # 0.00406
        0x3f9352a843808851L    # 0.01887
        0x3fa6f9335d249e45L    # 0.04487
        0x3fb339c0ebedfa44L    # 0.0751
        0x3fbb645a1cac0831L    # 0.107
        0x3fc1e1b089a02752L    # 0.1397
        0x3fc62a1b5c7cd899L    # 0.17316
        0x3fca978d4fdf3b64L    # 0.20775
        0x3fcf2cf95d4e8fb0L    # 0.24356
        0x3fd1f6a93f290abbL    # 0.28068
        0x3fd46aa8eb463498L    # 0.31901
        0x3fd6e924f227d029L    # 0.35798
        0x3fd9601797cc3a00L    # 0.39649
        0x3fdbc6a7ef9db22dL    # 0.434
        0x3fde12d77318fc50L    # 0.4699
        0x3fe028f5c28f5c29L    # 0.505
        0x3fe14538ef34d6a1L    # 0.5397
        0x3fe25e353f7ced91L    # 0.574
        0x3fe374538ef34d6aL    # 0.60795
        0x3fe4872b020c49baL    # 0.6415
        0x3fe595810624dd2fL    # 0.6745
        0x3fe69fbe76c8b439L    # 0.707
        0x3fe7a5e353f7ced9L    # 0.739
        0x3fe8a7ef9db22d0eL    # 0.7705
        0x3fe9a5e353f7ced9L    # 0.8015
        0x3fea9fbe76c8b439L    # 0.832
        0x3feb94af4f0d844dL    # 0.8619
        0x3fec83126e978d50L    # 0.891
        0x3fed66cf41f212d7L    # 0.9188
        0x3fee45a1cac08312L    # 0.946
        0x3fef238da3c21188L    # 0.97309
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_c
    .array-data 8
        0x0
        0x0
        0x0
        0x3fa4fe9b7bf1e8e6L    # 0.041005
        0x3fb17fc7607c419aL    # 0.068356
        0x3fb97396d0917d6bL    # 0.09942
        0x3fc0f301eabbcb1dL    # 0.132416
        0x3fc55bf6a0dbad3aL    # 0.166869
        0x3fca2749f0e4da0aL    # 0.204324
        0x3fcf039ef0f16f44L    # 0.242298
        0x3fd1f559b3d07c85L    # 0.2806
        0x3fd4754f3775b813L    # 0.31966
        0x3fd6fbc5de9c022aL    # 0.359117
        0x3fd98cb8e086bdf5L    # 0.399214
        0x3fdc0be9424e5929L    # 0.438227
        0x3fde7b395c422036L    # 0.476271
        0x3fe0711b60ae9681L    # 0.513807
        0x3fe19dadfb506dd7L    # 0.550498
        0x3fe2c5e2cdc011d3L    # 0.586656
        0x3fe3eb0318b9346aL    # 0.622438
        0x3fe50c586876e1dfL    # 0.657757
        0x3fe61d4b6a619daaL    # 0.691076
        0x3fe722856605ee57L    # 0.722964
        0x3fe821c25d074214L    # 0.754121
        0x3fe91d0e991ff716L    # 0.784797
        0x3fea1187e7c06e1aL    # 0.81464
        0x3feafaf640639d5eL    # 0.843135
        0x3febde8b3b320536L    # 0.870916
        0x3fecbc59b8023a6dL    # 0.897992
        0x3fed93c46d82ba5aL    # 0.924288
        0x3fee66106ab14ec2L    # 0.949959
        0x3fef34d26fa3fccaL    # 0.975198
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x3f6695d91ab8e8eaL    # 0.002757
        0x3f91eb4202d9cf14L    # 0.017499
        0x3fa2f1886df82b1fL    # 0.036999
        0x3fae351deefe4ffdL    # 0.058999
        0x3fb5fd7a13c254a4L    # 0.085899
        0x3fbd843c3a42f1edL    # 0.115299
        0x3fc319ef954eb13eL    # 0.149229
        0x3fc80d66f0cfe154L    # 0.187909
        0x3fcd681669ced0b3L    # 0.229739
        0x3fd1940357a35504L    # 0.274659
        0x3fd46aa8eb463498L    # 0.31901
        0x3fd6e924f227d029L    # 0.35798
        0x3fd97414a4d2b2c0L    # 0.39771
        0x3fdbedfa43fe5c92L    # 0.4364
        0x3fde58a32f44912aL    # 0.47416
        0x3fe04ff43419e300L    # 0.50976
        0x3fe1584f4c6e6d9cL    # 0.54203
        0x3fe255714b9cb685L    # 0.57293
        0x3fe352d234eb9a17L    # 0.60386
        0x3fe44ee392e1ef74L    # 0.63463
        0x3fe55379fa97e133L    # 0.66644
        0x3fe65edd052934adL    # 0.69908
        0x3fe76594af4f0d84L    # 0.73115
        0x3fe865d3996fa82fL    # 0.76243
        0x3fe9644523f67f4eL    # 0.79349
        0x3fea649906cca2dbL    # 0.82478
        0x3feb6223e1869835L    # 0.85573
        0x3fec564302b40f67L    # 0.88553
        0x3fed43419e300150L    # 0.91446
        0x3fee2e72da122fadL    # 0.94317
        0x3fef1800a7c5ac47L    # 0.97168
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_e
    .array-data 8
        0x0
        0x3f69285a921ccd96L    # 0.003071
        0x3f94fdf3b645a1cbL    # 0.0205
        0x3fa604189374bc6aL    # 0.043
        0x3fb189374bc6a7f0L    # 0.0685
        0x3fb8e8a71de69ad4L    # 0.0973
        0x3fc0902de00d1b71L    # 0.1294
        0x3fc50e5604189375L    # 0.1645
        0x3fc9db22d0e56042L    # 0.202
        0x3fced288ce703afbL    # 0.2408
        0x3fd1f6fd21ff2e49L    # 0.2807
        0x3fd46a7ef9db22d1L    # 0.319
        0x3fd6d0e560418937L    # 0.3565
        0x3fd92f1a9fbe76c9L    # 0.3935
        0x3fdb9a6b50b0f27cL    # 0.4313
        0x3fddff2e48e8a71eL    # 0.4687
        0x3fe02d0e56041893L    # 0.5055
        0x3fe153f7ced91687L    # 0.5415
        0x3fe2809d495182aaL    # 0.5782
        0x3fe3a5e353f7ced9L    # 0.614
        0x3fe4cccccccccccdL    # 0.65
        0x3fe5eb851eb851ecL    # 0.685
        0x3fe7020c49ba5e35L    # 0.719
        0x3fe80ebedfa43fe6L    # 0.7518
        0x3fe90e5604189375L    # 0.783
        0x3fea04189374bc6aL    # 0.813
        0x3feaf1a9fbe76c8bL    # 0.842
        0x3febd70a3d70a3d7L    # 0.87
        0x3fecb020c49ba5e3L    # 0.8965
        0x3fed89374bc6a7f0L    # 0.923
        0x3fee5e353f7ced91L    # 0.949
        0x3fef333333333333L    # 0.975
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_f
    .array-data 8
        0x0
        0x3f69285a921ccd96L    # 0.003071
        0x3f991dde37585be2L    # 0.024528
        0x3fa945d851654d62L    # 0.049361
        0x3fb3fa7eb6bf444eL    # 0.078041
        0x3fbac29bf162ae4bL    # 0.104532
        0x3fc0ee84ad794a6fL    # 0.132279
        0x3fc4aed99cbee808L    # 0.161586
        0x3fc9268d32830a0bL    # 0.196489
        0x3fcdb6134ce3de61L    # 0.232119
        0x3fd14edf61240746L    # 0.270439
        0x3fd3d3ed527e5215L    # 0.30981
        0x3fd69cd3e0bd449aL    # 0.353322
        0x3fd9014f8b588e37L    # 0.390705
        0x3fdb59ab6d00b45bL    # 0.427348
        0x3fddb5dcc63f1412L    # 0.464225
        0x3fe02e9ccb7d4174L    # 0.50569
        0x3fe15a2b5a20ddc6L    # 0.542257
        0x3fe28168b5cbff47L    # 0.578297
        0x3fe3a250f840181eL    # 0.613564
        0x3fe4dd4a5df2239eL    # 0.652013
        0x3fe5ea1e81cb46bbL    # 0.684829
        0x3fe6dece5710880eL    # 0.714698
        0x3fe7d83621fafc8bL    # 0.745143
        0x3fe8e89ca18bd662L    # 0.778395
        0x3fe9d4477ff151e7L    # 0.807163
        0x3feabaa369fcf3dcL    # 0.835283
        0x3feb9c6d1e108c3fL    # 0.862845
        0x3fec95e5aff2a173L    # 0.893298
        0x3fed706d50657321L    # 0.919974
        0x3fee48b439581062L    # 0.946375
        0x3fef1f77292c4934L    # 0.972591
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_10
    .array-data 8
        0x0
        0x3f69285a921ccd96L    # 0.003071
        0x3f94fdf3b645a1cbL    # 0.0205
        0x3fa604189374bc6aL    # 0.043
        0x3fb189374bc6a7f0L    # 0.0685
        0x3fb8e8a71de69ad4L    # 0.0973
        0x3fc0902de00d1b71L    # 0.1294
        0x3fc50e5604189375L    # 0.1645
        0x3fc9db22d0e56042L    # 0.202
        0x3fced288ce703afbL    # 0.2408
        0x3fd1f6fd21ff2e49L    # 0.2807
        0x3fd46a7ef9db22d1L    # 0.319
        0x3fd6d0e560418937L    # 0.3565
        0x3fd92f1a9fbe76c9L    # 0.3935
        0x3fdb9a6b50b0f27cL    # 0.4313
        0x3fddff2e48e8a71eL    # 0.4687
        0x3fe02d0e56041893L    # 0.5055
        0x3fe153f7ced91687L    # 0.5415
        0x3fe2809d495182aaL    # 0.5782
        0x3fe3a5e353f7ced9L    # 0.614
        0x3fe4cccccccccccdL    # 0.65
        0x3fe5eb851eb851ecL    # 0.685
        0x3fe7020c49ba5e35L    # 0.719
        0x3fe80ebedfa43fe6L    # 0.7518
        0x3fe90e5604189375L    # 0.783
        0x3fea04189374bc6aL    # 0.813
        0x3feaf1a9fbe76c8bL    # 0.842
        0x3febd70a3d70a3d7L    # 0.87
        0x3fecb020c49ba5e3L    # 0.8965
        0x3fed89374bc6a7f0L    # 0.923
        0x3fee5e353f7ced91L    # 0.949
        0x3fef333333333333L    # 0.975
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_11
    .array-data 8
        0x0
        0x0
        0x3f9a7bd48cb4aec9L    # 0.025863
        0x3faa8c154c985f07L    # 0.05185
        0x3fb4d5c74751ce29L    # 0.081387
        0x3fbba8f7db6e5040L    # 0.108047
        0x3fc14eca686e7e63L    # 0.135217
        0x3fc4dddf43c7d5edL    # 0.163021
        0x3fc8ebfec13b9f12L    # 0.194702
        0x3fccc33b5393250bL    # 0.224708
        0x3fd05dedf1e0828cL    # 0.255733
        0x3fd2650e779207d5L    # 0.287418
        0x3fd4b2aae297396dL    # 0.323405
        0x3fd6d783dff3f0feL    # 0.356904
        0x3fd8e21d96e9bbf1L    # 0.388801
        0x3fdaed06fef7c244L    # 0.420717
        0x3fdd39ffd60e94eeL    # 0.456665
        0x3fdf4677b395c422L    # 0.488676
        0x3fe0aa087ca643ccL    # 0.520756
        0x3fe1b1897a67a52bL    # 0.552922
        0x3fe2daff2a172abfL    # 0.589233
        0x3fe3e473471f7942L    # 0.621637
        0x3fe4ef0ae536501eL    # 0.65418
        0x3fe5fae3608d0892L    # 0.686876
        0x3fe729e4d5d80e49L    # 0.723864
        0x3fe832096787ce96L    # 0.756108
        0x3fe944ae85b9e8c4L    # 0.789634
        0x3fea59f6ec5b078eL    # 0.823482
        0x3feb94855da27286L    # 0.86188
        0x3fecadf9378ee286L    # 0.896237
        0x3fedc8b86b15f890L    # 0.930752
        0x3feee453d20f2bedL    # 0.965372
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_12
    .array-data 8
        0x0
        0x3f592641b328b6d8L    # 0.001535
        0x3f92617c1bda511aL    # 0.01795
        0x3fa3c07ee0b0af60L    # 0.038578
        0x3fb00fba8826aa8fL    # 0.06274
        0x3fb656ffc115df65L    # 0.087265
        0x3fbce0daa0cae643L    # 0.112806
        0x3fc1dfb9389b5200L    # 0.13964
        0x3fc5c2f405f6ba06L    # 0.170012
        0x3fc9b65ecc3e3194L    # 0.200878
        0x3fcdd894812be48aL    # 0.233172
        0x3fd1088d6d3b6cbeL    # 0.266147
        0x3fd348cb4aec8d5cL    # 0.301318
        0x3fd558a761027957L    # 0.333536
        0x3fd76833c60029f1L    # 0.365735
        0x3fd98ec52a411c2aL    # 0.399339
        0x3fdbe13b18dac259L    # 0.435622
        0x3fde0f98fa376923L    # 0.469702
        0x3fe01fc6da448494L    # 0.503879
        0x3fe1378ee2867275L    # 0.538032
        0x3fe25daf07bfe7e2L    # 0.573936
        0x3fe36ec7c957cd46L    # 0.607273
        0x3fe478140dd3fe19L    # 0.639658
        0x3fe58fde2ef4e011L    # 0.673812
        0x3fe6b72c5197a249L    # 0.70986
        0x3fe7cfdb09a671efL    # 0.744123
        0x3fe8e8a936c58eebL    # 0.778401
        0x3fea0a265f0f5a10L    # 0.813739
        0x3feb3c6c97d8cf3aL    # 0.851126
        0x3fec64ece9a2c669L    # 0.88732
        0x3fed9235f8099179L    # 0.924098
        0x3feec47e49b1fab9L    # 0.961486
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_13
    .array-data 8
        0x0
        0x0
        0x3f7cb1465e892253L    # 0.007005
        0x3f9000c9539b8887L    # 0.015628
        0x3f9dfaca36199781L    # 0.029277
        0x3fa7d6f976790321L    # 0.046562
        0x3fb1cf0307f23cc9L    # 0.069565
        0x3fb9003eea209aaaL    # 0.09766
        0x3fc0c49ba5e353f8L    # 0.131
        0x3fc53f7ced916873L    # 0.166
        0x3fc9ca4b124d099eL    # 0.201486
        0x3fce5604189374bcL    # 0.237
        0x3fd178d4fdf3b646L    # 0.273
        0x3fd3ced916872b02L    # 0.3095
        0x3fd64dd2f1a9fbe7L    # 0.3485
        0x3fd8dd2f1a9fbe77L    # 0.3885
        0x3fdb851eb851eb85L    # 0.43
        0x3fde4dd2f1a9fbe7L    # 0.4735
        0x3fe09ba5e353f7cfL    # 0.519
        0x3fe2147ae147ae14L    # 0.565
        0x3fe37ced916872b0L    # 0.609
        0x3fe4d916872b020cL    # 0.6515
        0x3fe6226809d49518L    # 0.6917
        0x3fe7645a1cac0831L    # 0.731
        0x3fe89a027525460bL    # 0.7688
        0x3fe9ced916872b02L    # 0.8065
        0x3feaf1a9fbe76c8bL    # 0.842
        0x3fec1205bc01a36eL    # 0.8772
        0x3fed27418d6909afL    # 0.911042
        0x3fee3295e9e1b08aL    # 0.943675
        0x3fef25204af92296L    # 0.973282
        0x3fefc9e6687f455aL    # 0.993396
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_14
    .array-data 8
        0x0
        0x3f7835158b827fa2L    # 0.00591
        0x3f9475a31a4bdba1L    # 0.01998
        0x3fa6eac8605681edL    # 0.04476
        0x3fb2d6238da3c212L    # 0.07358
        0x3fbaa454de7ea5f8L    # 0.10407
        0x3fc1604189374bc7L    # 0.13575
        0x3fc5935fc3b4f616L    # 0.16856
        0x3fc9f601797cc3a0L    # 0.20282
        0x3fce8bc169c23b79L    # 0.23864
        0x3fd1ad18d25edd05L    # 0.27619
        0x3fd4307f23cc8de3L    # 0.31546
        0x3fd6ca03c4b09e99L    # 0.35608
        0x3fd96db0dd82fd76L    # 0.39732
        0x3fdc1cac083126e9L    # 0.43925
        0x3fded2dcb1465e89L    # 0.48162
        0x3fe0b6848beb5b2dL    # 0.52228
        0x3fe1f34d6a161e4fL    # 0.56095
        0x3fe31de69ad42c3dL    # 0.5974
        0x3fe436cdf266ba49L    # 0.63169
        0x3fe53dc486ad2dcbL    # 0.66379
        0x3fe6313be22e5de1L    # 0.69351
        0x3fe7157689ca18bdL    # 0.72137
        0x3fe802b40f66a551L    # 0.75033
        0x3fe8f601797cc3a0L    # 0.78003
        0x3fe9e939eadd590cL    # 0.80972
        0x3fead898b2e9ccb8L    # 0.83894
        0x3febc28f5c28f5c3L    # 0.8675
        0x3feca5269595fedaL    # 0.89516
        0x3fed7d028a1dfb94L    # 0.92151
        0x3fee5104d551d68cL    # 0.94739
        0x3fef26d4801f7510L    # 0.97349
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_15
    .array-data 8
        0x0
        0x3f70a137f38c5437L    # 0.00406
        0x3f9352a843808851L    # 0.01887
        0x3fa6f9335d249e45L    # 0.04487
        0x3fb339c0ebedfa44L    # 0.0751
        0x3fbb8327674d1633L    # 0.10747
        0x3fc1e892253111f1L    # 0.13991
        0x3fc62a1b5c7cd899L    # 0.17316
        0x3fca978d4fdf3b64L    # 0.20775
        0x3fcf2cf95d4e8fb0L    # 0.24356
        0x3fd1f6a93f290abbL    # 0.28068
        0x3fd46aa8eb463498L    # 0.31901
        0x3fd6e924f227d029L    # 0.35798
        0x3fd97414a4d2b2c0L    # 0.39771
        0x3fdbedfa43fe5c92L    # 0.4364
        0x3fde58a32f44912aL    # 0.47416
        0x3fe04ff43419e300L    # 0.50976
        0x3fe1584f4c6e6d9cL    # 0.54203
        0x3fe255714b9cb685L    # 0.57293
        0x3fe352d234eb9a17L    # 0.60386
        0x3fe44ee392e1ef74L    # 0.63463
        0x3fe55379fa97e133L    # 0.66644
        0x3fe65edd052934adL    # 0.69908
        0x3fe76594af4f0d84L    # 0.73115
        0x3fe865d3996fa82fL    # 0.76243
        0x3fe9644523f67f4eL    # 0.79349
        0x3fea649906cca2dbL    # 0.82478
        0x3feb6223e1869835L    # 0.85573
        0x3fec564302b40f67L    # 0.88553
        0x3fed43419e300150L    # 0.91446
        0x3fee2e72da122fadL    # 0.94317
        0x3fef1800a7c5ac47L    # 0.97168
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_16
    .array-data 8
        0x0
        0x3f6695d91ab8e8eaL    # 0.002757
        0x3f91eb4202d9cf14L    # 0.017499
        0x3fa2f1886df82b1fL    # 0.036999
        0x3fae351deefe4ffdL    # 0.058999
        0x3fb5fd7a13c254a4L    # 0.085899
        0x3fbd843c3a42f1edL    # 0.115299
        0x3fc319ef954eb13eL    # 0.149229
        0x3fc80d66f0cfe154L    # 0.187909
        0x3fcd681669ced0b3L    # 0.229739
        0x3fd1940357a35504L    # 0.274659
        0x3fd46aa8eb463498L    # 0.31901
        0x3fd6e924f227d029L    # 0.35798
        0x3fd97414a4d2b2c0L    # 0.39771
        0x3fdbedfa43fe5c92L    # 0.4364
        0x3fde58a32f44912aL    # 0.47416
        0x3fe04ff43419e300L    # 0.50976
        0x3fe1584f4c6e6d9cL    # 0.54203
        0x3fe255714b9cb685L    # 0.57293
        0x3fe352d234eb9a17L    # 0.60386
        0x3fe44ee392e1ef74L    # 0.63463
        0x3fe55379fa97e133L    # 0.66644
        0x3fe65edd052934adL    # 0.69908
        0x3fe76594af4f0d84L    # 0.73115
        0x3fe865d3996fa82fL    # 0.76243
        0x3fe9644523f67f4eL    # 0.79349
        0x3fea649906cca2dbL    # 0.82478
        0x3feb6223e1869835L    # 0.85573
        0x3fec564302b40f67L    # 0.88553
        0x3fed43419e300150L    # 0.91446
        0x3fee2e72da122fadL    # 0.94317
        0x3fef1800a7c5ac47L    # 0.97168
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_17
    .array-data 8
        0x0
        0x3f7a6b50b0f27bb3L    # 0.00645
        0x3f95cd0bb6ed6777L    # 0.02129
        0x3fa7fcb923a29c78L    # 0.04685
        0x3fb38e4b87bdcf03L    # 0.07639
        0x3fbb81d7dbf487fdL    # 0.10745
        0x3fc1daceee0f3cb4L    # 0.13949
        0x3fc61426fe718a87L    # 0.17249
        0x3fca78c0053e2d62L    # 0.20681
        0x3fcf0c88a47ecfeaL    # 0.24257
        0x3fd1ea5f84cad57cL    # 0.27993
        0x3fd468b19a415f46L    # 0.31889
        0x3fd6fb2aae297397L    # 0.35908
        0x3fd995810624dd2fL    # 0.39975
        0x3fdc395810624dd3L    # 0.441
        0x3fdee2435696e58aL    # 0.48256
        0x3fe0b6848beb5b2dL    # 0.52228
        0x3fe1eb9a176ddacfL    # 0.56001
        0x3fe30f9096bb98c8L    # 0.59565
        0x3fe422e5de15ca6dL    # 0.62926
        0x3fe5253111f0c34cL    # 0.66079
        0x3fe61522a6f3f530L    # 0.69008
        0x3fe6f6d330941c82L    # 0.71763
        0x3fe7e28240b78034L    # 0.7464
        0x3fe8d551d68c692fL    # 0.77604
        0x3fe9c985f06f6944L    # 0.80585
        0x3feabbd7b2031cebL    # 0.83543
        0x3febaa64c2f837b5L    # 0.86455
        0x3fec92b7fe08aefbL    # 0.89291
        0x3fed70e2c12ad81bL    # 0.92003
        0x3fee4acaff6d3309L    # 0.94663
        0x3fef25072085b185L    # 0.97327
        0x3ff0000000000000L    # 1.0
    .end array-data

    :goto_8
    invoke-static {v2, p0}, Lcom/SDE/getGammaCurve;->SetPresetGammaName(Ljava/lang/String;I)V

    const-string v3, "lib_gammacurve_0pointup_key"

    if-ltz p0, :cond_9

    invoke-static {v3, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_9
    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-static {v3}, Lcom/Fix/Pref;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double v3, v3, v5

    const/16 v1, 0x21

    new-array v5, v1, [D

    fill-array-data v5, :array_18

    const/16 v2, 0x0

    :cond_a
    aget-wide v8, v0, v2

    aget-wide v6, v5, v2

    mul-double v6, v6, v3

    add-double v6, v6, v8

    double-to-int v10, v6

    if-nez v10, :cond_b

    goto/32 :goto_a

    :cond_b
    const/16 v11, 0x1

    int-to-double v6, v11

    :goto_a
    aput-wide v6, v0, v2

    add-int/lit16 v2, v2, 0x1

    if-lt v2, v1, :cond_a

    const-string v3, "lib_gammacurve_32pointdown_key"

    if-ltz p0, :cond_c

    invoke-static {v3, p0}, Lcom/SDE/getToneCurve;->SetLensValueForTone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_c
    invoke-static {v3}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_b
    invoke-static {v3}, Lcom/Fix/Pref;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double v3, v3, v5

    const/16 v1, 0x21

    new-array v5, v1, [D

    fill-array-data v5, :array_19

    const/16 v2, 0x0

    :cond_d
    aget-wide v8, v0, v2

    aget-wide v6, v5, v2

    mul-double v6, v6, v3

    sub-double v6, v8, v6

    const-wide v10, 0x0

    cmpl-double v12, v6, v10

    if-ltz v12, :cond_e

    goto/32 :goto_c

    :cond_e
    const/16 v12, 0x0

    int-to-double v6, v12

    :goto_c
    aput-wide v6, v0, v2

    add-int/lit16 v2, v2, 0x1

    if-lt v2, v1, :cond_d

    return-object v0

    :array_18
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fef000000000000L    # 0.96875
        0x3fee000000000000L    # 0.9375
        0x3fed000000000000L    # 0.90625
        0x3fec000000000000L    # 0.875
        0x3feb000000000000L    # 0.84375
        0x3fea000000000000L    # 0.8125
        0x3fe9000000000000L    # 0.78125
        0x3fe8000000000000L    # 0.75
        0x3fe7000000000000L    # 0.71875
        0x3fe6000000000000L    # 0.6875
        0x3fe5000000000000L    # 0.65625
        0x3fe4000000000000L    # 0.625
        0x3fe3000000000000L    # 0.59375
        0x3fe2000000000000L    # 0.5625
        0x3fe1000000000000L    # 0.53125
        0x3fe0000000000000L    # 0.5
        0x3fde000000000000L    # 0.46875
        0x3fdc000000000000L    # 0.4375
        0x3fda000000000000L    # 0.40625
        0x3fd8000000000000L    # 0.375
        0x3fd6000000000000L    # 0.34375
        0x3fd4000000000000L    # 0.3125
        0x3fd2000000000000L    # 0.28125
        0x3fd0000000000000L    # 0.25
        0x3fcc000000000000L    # 0.21875
        0x3fc8000000000000L    # 0.1875
        0x3fc4000000000000L    # 0.15625
        0x3fc0000000000000L    # 0.125
        0x3fb8000000000000L    # 0.09375
        0x3fb0000000000000L    # 0.0625
        0x3fa0000000000000L    # 0.03125
        0x0
    .end array-data

    :array_19
    .array-data 8
        0x0
        0x3fa0000000000000L    # 0.03125
        0x3fb0000000000000L    # 0.0625
        0x3fb8000000000000L    # 0.09375
        0x3fc0000000000000L    # 0.125
        0x3fc4000000000000L    # 0.15625
        0x3fc8000000000000L    # 0.1875
        0x3fcc000000000000L    # 0.21875
        0x3fd0000000000000L    # 0.25
        0x3fd2000000000000L    # 0.28125
        0x3fd4000000000000L    # 0.3125
        0x3fd6000000000000L    # 0.34375
        0x3fd8000000000000L    # 0.375
        0x3fda000000000000L    # 0.40625
        0x3fdc000000000000L    # 0.4375
        0x3fde000000000000L    # 0.46875
        0x3fe0000000000000L    # 0.5
        0x3fe1000000000000L    # 0.53125
        0x3fe2000000000000L    # 0.5625
        0x3fe3000000000000L    # 0.59375
        0x3fe4000000000000L    # 0.625
        0x3fe5000000000000L    # 0.65625
        0x3fe6000000000000L    # 0.6875
        0x3fe7000000000000L    # 0.71875
        0x3fe8000000000000L    # 0.75
        0x3fe9000000000000L    # 0.78125
        0x3fea000000000000L    # 0.8125
        0x3feb000000000000L    # 0.84375
        0x3fec000000000000L    # 0.875
        0x3fed000000000000L    # 0.90625
        0x3fee000000000000L    # 0.9375
        0x3fef000000000000L    # 0.96875
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method
