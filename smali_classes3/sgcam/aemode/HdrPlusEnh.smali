.class public Lsgcam/aemode/HdrPlusEnh;
.super Ljava/lang/Object;


# static fields
.field public static iso100:F

.field public static iso10000:F

.field public static iso1600:F

.field public static iso200:F

.field public static iso300:F

.field public static iso400:F

.field public static iso500:F

.field public static iso800:F

.field public static sGetDesired_analog_gain:F

.field public static sGetDesired_digital_gain:F

.field public static sGetDesired_exposure_time_ms:F

.field public static shotMaxISO:F

.field public static shotMaxTime:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLimitMaxTime()F
    .locals 15

    const-string v0, "pref_exposure_max_desired_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "5"

    invoke-static {v0, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    sget v0, Lsgcam/aemode/HdrPlusEnh;->shotMaxTime:F

    :goto_0
    return v0

    :cond_0
    const v0, 0x43960000    # 300.0f

    goto :goto_0

    :cond_1
    const v0, 0x43fa0000    # 500.0f

    goto :goto_0

    :cond_2
    const v0, 0x447a0000    # 1000.0f

    goto :goto_0

    :cond_3
    const v0, 0x453b8000    # 3000.0f

    goto :goto_0

    :cond_4
    sget v0, Lsgcam/aemode/HdrPlusEnh;->shotMaxTime:F

    const v1, 0x3f2147ae    # 0.63f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public static isoTimeParametrs(I)V
    .locals 24

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    if-eqz v5, :cond_0

    :goto_0
    sget v0, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_exposure_time_ms:F

    sget v1, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_analog_gain:F

    sget v2, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_digital_gain:F

    mul-float v3, v0, v1

    mul-float v3, v3, v2

    sub-float v6, v3, v5

    float-to-int v6, v6

    if-lez v6, :cond_2

    div-float v6, v3, v5

    sget v7, Lsgcam/aemode/HdrPlusEnh;->shotMaxISO:F

    sub-float v9, v6, v7

    float-to-int v9, v9

    if-lez v9, :cond_1

    div-float v9, v6, v7

    sput v9, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_digital_gain:F

    sput v7, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_analog_gain:F

    sput v5, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_exposure_time_ms:F

    :cond_0
    :goto_1
    return-void

    :cond_1
    sput v6, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_analog_gain:F

    const v1, 0x3f800000    # 1.0f

    sput v1, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_digital_gain:F

    sput v5, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_exposure_time_ms:F

    goto :goto_1

    :cond_2
    sput v3, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_exposure_time_ms:F

    const v1, 0x3f800000    # 1.0f

    sput v1, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_analog_gain:F

    const v1, 0x3f800000    # 1.0f

    sput v1, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_digital_gain:F

    goto :goto_1

    :goto_2
    invoke-static {}, Lsgcam/aemode/HdrPlusEnh;->getLimitMaxTime()F

    move-result v8

    sget v0, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_exposure_time_ms:F

    sget v1, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_analog_gain:F

    sget v2, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_digital_gain:F

    mul-float v3, v0, v1

    mul-float v3, v3, v2

    const v4, 0x41200000    # 10.0f

    sub-float v6, v3, v4

    float-to-int v6, v6

    if-lez v6, :cond_2

    div-float v1, v3, v4

    sub-float v6, v1, v5

    float-to-int v6, v6

    if-lez v6, :cond_3

    move v1, v5

    div-float v4, v3, v1

    sub-float v6, v4, v8

    float-to-int v6, v6

    if-lez v6, :cond_3

    move v4, v8

    div-float v1, v3, v4

    :cond_3
    sput v4, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_exposure_time_ms:F

    sget v7, Lsgcam/aemode/HdrPlusEnh;->shotMaxISO:F

    sub-float v6, v1, v7

    float-to-int v6, v6

    if-lez v6, :cond_4

    div-float v2, v1, v7

    sput v2, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_digital_gain:F

    sput v7, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_analog_gain:F

    goto :goto_1

    :cond_4
    sput v1, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_analog_gain:F

    const v2, 0x3f800000    # 1.0f

    sput v2, Lsgcam/aemode/HdrPlusEnh;->sGetDesired_digital_gain:F

    goto :goto_1

    :pswitch_0
    const v5, 0x0

    goto/16 :goto_1

    :pswitch_1
    sget v5, Lsgcam/aemode/HdrPlusEnh;->iso1600:F

    goto :goto_2

    :pswitch_2
    sget v5, Lsgcam/aemode/HdrPlusEnh;->iso800:F

    goto :goto_2

    :pswitch_3
    sget v5, Lsgcam/aemode/HdrPlusEnh;->iso500:F

    goto :goto_2

    :pswitch_4
    sget v5, Lsgcam/aemode/HdrPlusEnh;->iso400:F

    goto :goto_2

    :pswitch_5
    sget v5, Lsgcam/aemode/HdrPlusEnh;->iso300:F

    goto :goto_2

    :pswitch_6
    sget v5, Lsgcam/aemode/HdrPlusEnh;->iso200:F

    goto :goto_2

    :pswitch_7
    sget v5, Lsgcam/aemode/HdrPlusEnh;->shotMaxTime:F

    goto/16 :goto_0

    :pswitch_8
    const v5, 0x46fa0000    # 32000.0f

    goto/16 :goto_0

    :pswitch_9
    const v5, 0x467a0000    # 16000.0f

    goto/16 :goto_0

    :pswitch_a
    const v5, 0x45fa0000    # 8000.0f

    goto/16 :goto_0

    :pswitch_b
    const v5, 0x457a0000    # 4000.0f

    goto/16 :goto_0

    :pswitch_c
    const v5, 0x44fa0000    # 2000.0f

    goto/16 :goto_0

    :pswitch_d
    const v5, 0x447a0000    # 1000.0f

    goto/16 :goto_0

    :pswitch_e
    const v5, 0x43fa0000    # 500.0f

    goto/16 :goto_0

    :pswitch_f
    const v5, 0x43a6aaa0

    goto/16 :goto_0

    :pswitch_10
    const v5, 0x437a0000    # 250.0f

    goto/16 :goto_0

    :pswitch_11
    const v5, 0x43480000    # 200.0f

    goto/16 :goto_0

    :pswitch_12
    const v5, 0x430edb64

    goto/16 :goto_0

    :pswitch_13
    const v5, 0x42c80000    # 100.0f

    goto/16 :goto_0

    :pswitch_14
    const v5, 0x42480000    # 50.0f

    goto/16 :goto_0

    :pswitch_15
    const v5, 0x41f00000    # 30.0f

    goto/16 :goto_0

    :pswitch_16
    const v5, 0x41a00000    # 20.0f

    goto/16 :goto_0

    :pswitch_17
    const v5, 0x41700000    # 15.0f

    goto/16 :goto_0

    :pswitch_18
    const v5, 0x41200000    # 10.0f

    goto/16 :goto_0

    :pswitch_19
    const v5, 0x40a00000    # 5.0f

    goto/16 :goto_0

    :pswitch_1a
    const v5, 0x40000000    # 2.0f

    goto/16 :goto_0

    :pswitch_1b
    const v5, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_1c
    const v5, 0x44174000    # 605.0f

    goto/16 :goto_0

    :pswitch_1d
    const v5, 0x44278000    # 670.0f

    goto/16 :goto_0

    :pswitch_1e
    const-string v5, "pref_manual_exposure_time_desired_key"

    invoke-static {v5}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "32.0"

    invoke-static {v5, v10}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    goto/16 :goto_0

    :pswitch_1f
    const-string v5, "pref_manual_exposure_iso_desired_key"

    invoke-static {v5}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "100.0"

    invoke-static {v5, v10}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    goto/16 :goto_2

    :pswitch_20
    sget v5, Lsgcam/aemode/HdrPlusEnh;->iso10000:F

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_20
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
    .end packed-switch
.end method
