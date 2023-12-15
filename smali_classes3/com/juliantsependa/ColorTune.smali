.class public Lcom/juliantsependa/ColorTune;
.super Ljava/lang/Object;


# static fields
.field public static WB1:F

.field public static WB2:F

.field public static WB3:F


# direct methods
.method public static CCTSaturation([FF)[F
    .locals 14

    const v1, 0x9

    new-array v13, v1, [F

    move v10, p1

    const v2, 0x3e5a1cac    # 0.213f

    const v3, 0x3f4978d5    # 0.787f

    const v5, 0x3f370a3d    # 0.715f

    const v6, 0x3e91eb85    # 0.285f

    const v7, 0x3d9374bc    # 0.072f

    const v11, 0x3f6d9168    # 0.928f

    const v12, 0x0

    mul-float v4, v3, v10

    add-float v0, v2, v4

    aput v0, v13, v12

    const v12, 0x1

    mul-float v4, v2, v10

    sub-float v0, v2, v4

    aput v0, v13, v12

    const v12, 0x2

    mul-float v4, v2, v10

    sub-float v0, v2, v4

    aput v0, v13, v12

    const v12, 0x3

    mul-float v4, v5, v10

    sub-float v0, v5, v4

    aput v0, v13, v12

    const v12, 0x4

    mul-float v4, v6, v10

    add-float v0, v5, v4

    aput v0, v13, v12

    const v12, 0x5

    mul-float v4, v5, v10

    sub-float v0, v5, v4

    aput v0, v13, v12

    const v12, 0x6

    mul-float v4, v7, v10

    sub-float v0, v7, v4

    aput v0, v13, v12

    const v12, 0x7

    mul-float v4, v7, v10

    sub-float v0, v7, v4

    aput v0, v13, v12

    const v12, 0x8

    mul-float v4, v11, v10

    add-float v0, v7, v4

    aput v0, v13, v12

    invoke-static {v13, p0}, Lcom/juliantsependa/ColorTune;->MMulP2([F[F)[F

    move-result-object v13

    const-string v2, "WB_correction_key"

    invoke-static {v2}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WB_color_space_key"

    invoke-static {v2}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    const/16 v1, 0x9

    new-array v9, v1, [F

    fill-array-data v9, :array_0

    move-object v7, v13

    invoke-static {v13, v8}, Lcom/juliantsependa/ColorTune;->MMulP2([F[F)[F

    move-result-object v13

    invoke-static {v13}, Lcom/juliantsependa/ColorTune;->CCT_WB([F)[F

    move-result-object v10

    invoke-static {v13, v10}, Lcom/juliantsependa/ColorTune;->MMulP2([F[F)[F

    move-result-object v13

    invoke-static {v9, v13}, Lcom/juliantsependa/ColorTune;->MMulP2([F[F)[F

    move-result-object v13

    :cond_0
    if-nez v2, :cond_1

    invoke-static {v13}, Lcom/juliantsependa/ColorTune;->CCT_WB([F)[F

    move-result-object v10

    invoke-static {v13, v10}, Lcom/juliantsependa/ColorTune;->MMulP2([F[F)[F

    move-result-object v13

    :cond_1
    move-object p0, v13

    return-object p0

    :array_0
    .array-data 4
        0x3f7a42e1
        0x3edbdb1a
        -0x4279d990
        -0x41dddca5
        0x3f03cf5f
        -0x43186339    # -0.028273f
        0x3e22b40f    # 0.15889f
        0x3d488b54
        0x3f7644fa    # 0.96199f
    .end array-data

    :array_1
    .array-data 4
        0x3f652546    # 0.8951f
        -0x40bff2e5    # -0.7502f
        0x3d1f559b    # 0.0389f
        0x3e886595    # 0.2664f
        0x3fdb53f8    # 1.7135f
        0x3d8c49ba    # 0.0685f
        -0x41dab9f5    # -0.1614f
        0x3d1652bd    # 0.0367f
        0x3f83c9ef    # 1.0296f
    .end array-data
.end method

.method public static CCT_WB([F)[F
    .locals 14

    sget v7, Lcom/juliantsependa/ColorTune;->WB1:F

    sget v8, Lcom/juliantsependa/ColorTune;->WB2:F

    sget v9, Lcom/juliantsependa/ColorTune;->WB3:F

    const-string v10, "CCT_WB_Offset_key"

    invoke-static {v10}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v4

    const v1, 0x40e00000    # 7.0f

    mul-float v4, v4, v1

    const v0, 0x3f854555

    const v1, 0x3f800000    # 1.0f

    const v2, 0x3f757555

    sub-float v3, v0, v1

    mul-float v3, v3, v4

    add-float v3, v3, v1

    mul-float v7, v3, v7

    sub-float v3, v1, v1

    mul-float v3, v3, v4

    add-float v3, v3, v1

    mul-float v8, v3, v8

    sub-float v3, v2, v1

    mul-float v3, v3, v4

    add-float v3, v3, v1

    mul-float v9, v3, v9

    const v0, 0x3f800000    # 1.0f

    const v1, 0x40000000    # 2.0f

    const v6, 0x40400000    # 3.0f

    mul-float v1, v1, v6

    const v6, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v6

    const v6, 0x4b189680    # 1.0E7f

    mul-float v6, v1, v6

    float-to-int v6, v6

    if-nez v6, :cond_0

    const v1, 0x33d6bf95    # 1.0E-7f

    :cond_0
    div-float v1, v0, v1

    const v3, 0x40000000    # 2.0f

    const v2, 0x3f000000    # 0.5f

    mul-float v4, v2, v1

    add-float v7, v7, v4

    add-float v0, v0, v1

    div-float v7, v7, v0

    add-float v7, v7, v2

    add-float v8, v8, v4

    div-float v8, v8, v0

    add-float v8, v8, v2

    add-float v9, v9, v4

    div-float v9, v9, v0

    add-float v9, v9, v2

    add-float v8, v7, v9

    div-float v8, v8, v3

    div-float v4, v9, v7

    mul-float v4, v4, v4

    const v12, 0x45cb2000    # 6500.0f

    mul-float v3, v12, v4

    const v4, 0x45cb2000    # 6500.0f

    div-float v11, v4, v3

    const v12, 0x3f19999a    # 0.6f

    sub-float v11, v11, v12

    mul-float v11, v11, v11

    const v4, 0x41800000    # 16.0f

    float-to-int v12, v11

    float-to-int v5, v4

    if-lt v12, v5, :cond_1

    const v11, 0x41200000    # 10.0f

    :cond_1
    const v4, 0x3f000000    # 0.5f

    float-to-int v12, v11

    float-to-int v5, v4

    if-gt v12, v5, :cond_2

    const v11, 0x3f000000    # 0.5f

    :cond_2
    const-string v5, "CurrentTemp"

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/juliantsependa/ColorTune;->getRgbFromTemperature(D)[F

    move-result-object v3

    const v0, 0x0

    aget v7, v3, v0

    const v0, 0x1

    aget v8, v3, v0

    const v0, 0x2

    aget v9, v3, v0

    const v3, 0x437f0000    # 255.0f

    div-float v7, v7, v3

    div-float v8, v8, v3

    div-float v9, v9, v3

    const-string v10, "CCT_WB_intensity_key"

    invoke-static {v10}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v1

    mul-float v1, v1, v11

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, v3

    const v3, 0x3f800000    # 1.0f

    sub-float v7, v7, v3

    mul-float v7, v7, v1

    add-float v7, v7, v3

    sub-float v8, v8, v3

    mul-float v8, v8, v1

    add-float v8, v8, v3

    sub-float v9, v9, v3

    mul-float v9, v9, v1

    add-float v9, v9, v3

    const v1, 0x40400000    # 3.0f

    add-float v4, v7, v8

    add-float v4, v9, v4

    sub-float v5, v1, v4

    div-float v5, v5, v1

    add-float v7, v7, v5

    add-float v8, v8, v5

    add-float v9, v9, v5

    const v1, 0x9

    new-array v10, v1, [F

    const v0, 0x0

    aput v7, v10, v0

    const v0, 0x4

    aput v8, v10, v0

    const v0, 0x8

    aput v9, v10, v0

    const-string v5, "CCT_dump"

    invoke-static {v10}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v10

    return-object p0

    .array-data 4
        0x3f7cab93
        -0x41e96aad
        0x3e23cd57
        0x3edd5715
        0x3f04b33e
        0x3d49e55c    # 0.049291f
        -0x43f442c8    # -0.008529f
        0x3d240421    # 0.040043f
        0x3f77eec4
    .end array-data

    .array-data 4
        0x3f652546    # 0.8951f
        0x3e886595    # 0.2664f
        -0x41dab9f5    # -0.1614f
        -0x40bff2e5    # -0.7502f
        0x3fdb53f8    # 1.7135f
        0x3d1652bd    # 0.0367f
        0x3d1f559b    # 0.0389f
        -0x4273b646    # -0.0685f
        0x3f83c9ef    # 1.0296f
    .end array-data
.end method

.method public static ColorMod([FF)[F
    .locals 14

    const/16 v1, 0x9

    new-array v10, v1, [F

    fill-array-data v10, :array_0

    new-array v9, v1, [F

    fill-array-data v9, :array_1

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    new-array v5, v1, [F

    fill-array-data v5, :array_3

    move v12, p1

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    move v7, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v6, v2

    invoke-static {v9, v7}, Lcom/juliantsependa/ColorTune;->MMulONE([FF)[F

    move-result-object v7

    invoke-static {v8, v6}, Lcom/juliantsependa/ColorTune;->MMulONE([FF)[F

    move-result-object v6

    invoke-static {v10, v7}, Lcom/juliantsependa/ColorTune;->MADD([F[F)[F

    move-result-object v7

    invoke-static {v7, v6}, Lcom/juliantsependa/ColorTune;->MADD([F[F)[F

    move-result-object v6

    move-object v1, p0

    invoke-static {v6, v1}, Lcom/juliantsependa/ColorTune;->MMulP2([F[F)[F

    move-result-object v1

    move-object p0, v1

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3e5a1cac    # 0.213f
        0x3e5a1cac    # 0.213f
        0x3e5a1cac    # 0.213f
        0x3f370a3d    # 0.715f
        0x3f370a3d    # 0.715f
        0x3f370a3d    # 0.715f
        0x3d9374bc    # 0.072f
        0x3d9374bc    # 0.072f
        0x3d9374bc    # 0.072f
    .end array-data

    :array_1
    .array-data 4
        0x3f4978d5    # 0.787f
        -0x41a5e354    # -0.213f
        -0x41a5e354    # -0.213f
        -0x40c8f5c3    # -0.715f
        0x3e91eb85    # 0.285f
        -0x40c8f5c3    # -0.715f
        -0x426c8b44    # -0.072f
        -0x426c8b44    # -0.072f
        0x3f6d9168    # 0.928f
    .end array-data

    :array_2
    .array-data 4
        -0x41a5e354    # -0.213f
        0x3e126e98    # 0.143f
        -0x40b6872b    # -0.787f
        -0x40c8f5c3    # -0.715f
        0x3e0f5c29    # 0.14f
        0x3f370a3d    # 0.715f
        0x3f6d9168    # 0.928f
        -0x416f1aa0    # -0.283f
        0x3d9374bc    # 0.072f
    .end array-data

    :array_3
    .array-data 4
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
    .end array-data
.end method

.method public static ColorMod1([F)[F
    .locals 14

    const-string v0, "pref_autocct_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object v13, p0

    const-string v10, "pref_satCCT_key"

    invoke-static {v10}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "1.0"

    invoke-static {v10, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v10

    invoke-static {v13, v10}, Lcom/juliantsependa/ColorTune;->CCTSaturation([FF)[F

    move-result-object v13

    const-string v11, "pref_R_hue_key"

    invoke-static {v11}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "0.0"

    invoke-static {v11, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v11

    invoke-static {v13, v11}, Lcom/juliantsependa/ColorTune;->ColorMod([FF)[F

    move-result-object v0

    const-string v10, "pref_satCCT_R_key"

    invoke-static {v10}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "1.0"

    invoke-static {v10, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v10

    invoke-static {v0, v10}, Lcom/juliantsependa/ColorTune;->CCTSaturation([FF)[F

    move-result-object v0

    const-string v10, "pref_G_hue_key"

    invoke-static {v10}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "0.0"

    invoke-static {v10, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v10

    invoke-static {v13, v10}, Lcom/juliantsependa/ColorTune;->ColorMod([FF)[F

    move-result-object v1

    const-string v10, "pref_satCCT_G_key"

    invoke-static {v10}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "1.0"

    invoke-static {v10, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v10

    invoke-static {v1, v10}, Lcom/juliantsependa/ColorTune;->CCTSaturation([FF)[F

    move-result-object v1

    const-string v9, "pref_B_hue_key"

    invoke-static {v9}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "0.0"

    invoke-static {v9, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v9

    invoke-static {v13, v9}, Lcom/juliantsependa/ColorTune;->ColorMod([FF)[F

    move-result-object v2

    const-string v10, "pref_satCCT_B_key"

    invoke-static {v10}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "1.0"

    invoke-static {v10, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v10

    invoke-static {v2, v10}, Lcom/juliantsependa/ColorTune;->CCTSaturation([FF)[F

    move-result-object v2

    const v12, 0x3

    aget v3, v1, v12

    aput v3, v0, v12

    const v12, 0x4

    aget v3, v1, v12

    aput v3, v0, v12

    const v12, 0x5

    aget v3, v1, v12

    aput v3, v0, v12

    const v12, 0x6

    aget v3, v2, v12

    aput v3, v0, v12

    const v12, 0x7

    aget v3, v2, v12

    aput v3, v0, v12

    const v12, 0x8

    aget v3, v2, v12

    aput v3, v0, v12

    move-object v13, v0

    const-string v9, "pref_global_hue_key"

    invoke-static {v9}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v9

    invoke-static {v13, v9}, Lcom/juliantsependa/ColorTune;->ColorMod([FF)[F

    move-result-object v13

    move-object p0, v13

    return-object p0
.end method

.method public static MADD([F[F)[F
    .locals 12

    move-object v0, p0

    move-object v1, p1

    const/16 v6, 0x9

    new-array v2, v6, [F

    const v11, 0x0

    aget v3, v0, v11

    aget v4, v1, v11

    add-float v5, v3, v4

    aput v5, v2, v11

    const v11, 0x1

    aget v3, v0, v11

    aget v4, v1, v11

    add-float v5, v3, v4

    aput v5, v2, v11

    const v11, 0x2

    aget v3, v0, v11

    aget v4, v1, v11

    add-float v5, v3, v4

    aput v5, v2, v11

    const v11, 0x3

    aget v3, v0, v11

    aget v4, v1, v11

    add-float v5, v3, v4

    aput v5, v2, v11

    const v11, 0x4

    aget v3, v0, v11

    aget v4, v1, v11

    add-float v5, v3, v4

    aput v5, v2, v11

    const v11, 0x5

    aget v3, v0, v11

    aget v4, v1, v11

    add-float v5, v3, v4

    aput v5, v2, v11

    const v11, 0x6

    aget v3, v0, v11

    aget v4, v1, v11

    add-float v5, v3, v4

    aput v5, v2, v11

    const v11, 0x7

    aget v3, v0, v11

    aget v4, v1, v11

    add-float v5, v3, v4

    aput v5, v2, v11

    const v11, 0x8

    aget v3, v0, v11

    aget v4, v1, v11

    add-float v5, v3, v4

    aput v5, v2, v11

    move-object p0, v2

    return-object p0
.end method

.method public static MMulONE([FF)[F
    .locals 10

    move-object v0, p0

    move v1, p1

    const p1, 0x0

    aget v3, v0, p1

    mul-float v5, v3, v1

    aput v5, v0, p1

    const p1, 0x1

    aget v3, v0, p1

    mul-float v5, v3, v1

    aput v5, v0, p1

    const p1, 0x2

    aget v3, v0, p1

    mul-float v5, v3, v1

    aput v5, v0, p1

    const p1, 0x3

    aget v3, v0, p1

    mul-float v5, v3, v1

    aput v5, v0, p1

    const p1, 0x4

    aget v3, v0, p1

    mul-float v5, v3, v1

    aput v5, v0, p1

    const p1, 0x5

    aget v3, v0, p1

    mul-float v5, v3, v1

    aput v5, v0, p1

    const p1, 0x6

    aget v3, v0, p1

    mul-float v5, v3, v1

    aput v5, v0, p1

    const p1, 0x7

    aget v3, v0, p1

    mul-float v5, v3, v1

    aput v5, v0, p1

    const p1, 0x8

    aget v3, v0, p1

    mul-float v5, v3, v1

    aput v5, v0, p1

    move-object p0, v0

    return-object p0
.end method

.method public static MMulP1([F[F)[F
    .locals 10

    move-object v0, p0

    move-object v1, p1

    const p1, 0x0

    aget v3, v0, p1

    const p1, 0x0

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x1

    aget v3, v0, p1

    const p1, 0x3

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x2

    aget v3, v0, p1

    const p1, 0x6

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x0

    aput v7, v1, p1

    const p1, 0x0

    aget v3, v0, p1

    const p1, 0x1

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x1

    aget v3, v0, p1

    const p1, 0x4

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x2

    aget v3, v0, p1

    const p1, 0x7

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x1

    aput v7, v1, p1

    const p1, 0x0

    aget v3, v0, p1

    const p1, 0x2

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x1

    aget v3, v0, p1

    const p1, 0x5

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x2

    aget v3, v0, p1

    const p1, 0x8

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x2

    aput v7, v1, p1

    const p1, 0x3

    aget v3, v0, p1

    const p1, 0x0

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x4

    aget v3, v0, p1

    const p1, 0x3

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x5

    aget v3, v0, p1

    const p1, 0x6

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x3

    aput v7, v1, p1

    const p1, 0x3

    aget v3, v0, p1

    const p1, 0x1

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x4

    aget v3, v0, p1

    const p1, 0x4

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x5

    aget v3, v0, p1

    const p1, 0x7

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x4

    aput v7, v1, p1

    const p1, 0x3

    aget v3, v0, p1

    const p1, 0x2

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x4

    aget v3, v0, p1

    const p1, 0x5

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x5

    aget v3, v0, p1

    const p1, 0x8

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x5

    aput v7, v1, p1

    const p1, 0x6

    aget v3, v0, p1

    const p1, 0x0

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x7

    aget v3, v0, p1

    const p1, 0x3

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x8

    aget v3, v0, p1

    const p1, 0x6

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x6

    aput v7, v1, p1

    const p1, 0x6

    aget v3, v0, p1

    const p1, 0x1

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x7

    aget v3, v0, p1

    const p1, 0x4

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x8

    aget v3, v0, p1

    const p1, 0x7

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x7

    aput v7, v1, p1

    const p1, 0x6

    aget v3, v0, p1

    const p1, 0x2

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x7

    aget v3, v0, p1

    const p1, 0x5

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x8

    aget v3, v0, p1

    const p1, 0x8

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x8

    aput v7, v1, p1

    move-object p0, v1

    return-object p0
.end method

.method public static MMulP2([F[F)[F
    .locals 10

    const v1, 0x9

    new-array v8, v1, [F

    move-object v0, p0

    move-object v1, p1

    const p1, 0x0

    aget v3, v0, p1

    const p1, 0x0

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x1

    aget v3, v0, p1

    const p1, 0x1

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x2

    aget v3, v0, p1

    const p1, 0x2

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x0

    aput v7, v8, p1

    const p1, 0x3

    aget v3, v0, p1

    const p1, 0x0

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x4

    aget v3, v0, p1

    const p1, 0x1

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x5

    aget v3, v0, p1

    const p1, 0x2

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x1

    aput v7, v8, p1

    const p1, 0x6

    aget v3, v0, p1

    const p1, 0x0

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x7

    aget v3, v0, p1

    const p1, 0x1

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x8

    aget v3, v0, p1

    const p1, 0x2

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x2

    aput v7, v8, p1

    const p1, 0x0

    aget v3, v0, p1

    const p1, 0x3

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x1

    aget v3, v0, p1

    const p1, 0x4

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x2

    aget v3, v0, p1

    const p1, 0x5

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x3

    aput v7, v8, p1

    const p1, 0x3

    aget v3, v0, p1

    const p1, 0x3

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x4

    aget v3, v0, p1

    const p1, 0x4

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x5

    aget v3, v0, p1

    const p1, 0x5

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x4

    aput v7, v8, p1

    const p1, 0x6

    aget v3, v0, p1

    const p1, 0x3

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x7

    aget v3, v0, p1

    const p1, 0x4

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x8

    aget v3, v0, p1

    const p1, 0x5

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x5

    aput v7, v8, p1

    const p1, 0x0

    aget v3, v0, p1

    const p1, 0x6

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x1

    aget v3, v0, p1

    const p1, 0x7

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x2

    aget v3, v0, p1

    const p1, 0x8

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x6

    aput v7, v8, p1

    const p1, 0x3

    aget v3, v0, p1

    const p1, 0x6

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x4

    aget v3, v0, p1

    const p1, 0x7

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x5

    aget v3, v0, p1

    const p1, 0x8

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x7

    aput v7, v8, p1

    const p1, 0x6

    aget v3, v0, p1

    const p1, 0x6

    aget v4, v1, p1

    mul-float v5, v3, v4

    const p1, 0x7

    aget v3, v0, p1

    const p1, 0x7

    aget v4, v1, p1

    mul-float v6, v3, v4

    const p1, 0x8

    aget v3, v0, p1

    const p1, 0x8

    aget v4, v1, p1

    mul-float v7, v3, v4

    add-float v6, v5, v6

    add-float v7, v6, v7

    const p1, 0x8

    aput v7, v8, p1

    move-object p0, v8

    return-object p0
.end method

.method public static MORDER([F)[F
    .locals 12

    move-object v0, p0

    const v11, 0x0

    aget v3, v0, v11

    const v11, 0x0

    aput v3, v0, v11

    const v11, 0x1

    aget v3, v0, v11

    const v11, 0x3

    aput v3, v0, v11

    const v11, 0x2

    aget v3, v0, v11

    const v11, 0x6

    aput v3, v0, v11

    const v11, 0x3

    aget v3, v0, v11

    const v11, 0x1

    aput v3, v0, v11

    const v11, 0x4

    aget v3, v0, v11

    const v11, 0x4

    aput v3, v0, v11

    const v11, 0x5

    aget v3, v0, v11

    const v11, 0x7

    aput v3, v0, v11

    const v11, 0x6

    aget v3, v0, v11

    const v11, 0x2

    aput v3, v0, v11

    const v11, 0x7

    aget v3, v0, v11

    const v11, 0x5

    aput v3, v0, v11

    const v11, 0x8

    aget v3, v0, v11

    const v11, 0x8

    aput v3, v0, v11

    move-object p0, v0

    return-object p0
.end method

.method public static clamp(DDD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static clamp(FFF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getRgbFromTemperature(D)[F
    .locals 13

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide v4, 0x40e3880000000000L    # 40000.0

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/juliantsependa/ColorTune;->clamp(DDD)D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    const-wide v0, 0x4050800000000000L    # 66.0

    cmpg-double v2, p0, v0

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    const/16 v5, 0xff

    const/4 v6, 0x0

    if-gtz v2, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    const-wide v7, 0x40749b2dfcd49634L    # 329.698727446

    sub-double v9, p0, v3

    const-wide v11, -0x403ef3257dc83fbbL    # -0.1332047592

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v9, v7

    double-to-int v7, v9

    invoke-static {v7, v6, v5}, Lcom/juliantsependa/ColorTune;->clamp(III)I

    move-result v7

    :goto_0
    if-gtz v2, :cond_1

    const-wide v2, 0x4058de21a12b8afeL    # 99.4708025861

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    const-wide v2, 0x406423d3809e615aL    # 161.1195681661

    sub-double/2addr v8, v2

    double-to-int v2, v8

    goto :goto_1

    :cond_1
    const-wide v8, 0x407201f4680909dcL    # 288.1221695283

    sub-double v2, p0, v3

    const-wide v10, -0x404cab0f1052d94dL    # -0.0755148492

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    :goto_1
    invoke-static {v2, v6, v5}, Lcom/juliantsependa/ColorTune;->clamp(III)I

    move-result v2

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    const-wide/high16 v0, 0x4033000000000000L    # 19.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    const-wide v0, 0x406150914111eaa4L    # 138.5177312231

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    sub-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    const-wide v0, 0x407310b778951748L    # 305.0447927307

    sub-double/2addr p0, v0

    double-to-int p0, p0

    invoke-static {p0, v6, v5}, Lcom/juliantsependa/ColorTune;->clamp(III)I

    move-result v5

    :goto_2
    const/4 p0, 0x3

    int-to-float v7, v7

    int-to-float v2, v2

    int-to-float v5, v5

    new-array p0, p0, [F

    aput v7, p0, v6

    const/4 p1, 0x1

    aput v2, p0, p1

    const/4 p1, 0x2

    aput v5, p0, p1

    return-object p0
.end method
