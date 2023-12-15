.class public Lza/lol;
.super Ljava/lang/Object;


# static fields
.field protected static API2_Analog_ISO:I = 0x0

.field protected static API2_EXP:J = 0x0L

.field protected static API2_ISO:I = 0x0

.field private static AstroTime:I = 0x0

.field private static final CROP_1_23:F = 5.6f

.field private static final CROP_1_255:F = 5.9f

.field private static final CROP_1_26:F = 6.0f

.field private static EnablesaturationMode:I = 0x0

.field private static ISO_AE:I = 0x0

.field private static ISO_Out:I = 0x0

.field private static ISO_to_Gain_Quant:F = 0.0f

.field private static final S_2_NS:J = 0x3b9aca00L

.field private static Shutter_AE:J

.field private static Shutter_Adjusted:J

.field public static TrailVal:I

.field private static focusDistance:F

.field private static focusMode:I

.field public static isoVal2:I

.field private static lol:Lza/lol;

.field private static saturationMode:I

.field public static shutterVal:I

.field private static shutterdurationl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lza/lol;

    invoke-direct {v0}, Lza/lol;-><init>()V

    sput-object v0, Lza/lol;->lol:Lza/lol;

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lza/lol;->ISO_to_Gain_Quant:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AstroTime(I)V
    .locals 2

    const v0, 0x0

    packed-switch p0, :pswitch_data_0

    sput v0, Lza/lol;->AstroTime:I

    :pswitch_0
    const v0, 0x7d00

    sput v0, Lza/lol;->AstroTime:I

    goto :goto_0

    :pswitch_1
    const v0, 0x6d60

    sput v0, Lza/lol;->AstroTime:I

    goto :goto_0

    :pswitch_2
    const v0, 0x5dc0

    sput v0, Lza/lol;->AstroTime:I

    goto :goto_0

    :pswitch_3
    const v0, 0x4e20

    sput v0, Lza/lol;->AstroTime:I

    goto :goto_0

    :pswitch_4
    const v0, 0x3e80

    sput v0, Lza/lol;->AstroTime:I

    goto :goto_0

    :pswitch_5
    const v0, 0x1f40

    sput v0, Lza/lol;->AstroTime:I

    goto :goto_0

    :pswitch_6
    const v0, 0x1388

    sput v0, Lza/lol;->AstroTime:I

    goto :goto_0

    :pswitch_7
    const v0, 0x0

    sput v0, Lza/lol;->AstroTime:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static AstroTimeMode()Ljava/lang/Integer;
    .locals 1

    sget v0, Lza/lol;->AstroTime:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static BlackShift(II)[F
    .locals 3

    const/4 v0, 0x4

    if-nez p1, :cond_0

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :cond_0
    const/16 v1, 0x63

    const/16 v2, 0xc8

    if-le p0, v1, :cond_1

    if-ge p0, v2, :cond_1

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    return-object v0

    :cond_1
    const/16 v1, 0x190

    if-le p0, v2, :cond_2

    if-ge p0, v1, :cond_2

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    return-object v0

    :cond_2
    const/16 v2, 0x320

    if-le p0, v1, :cond_3

    if-ge p0, v2, :cond_3

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    return-object v0

    :cond_3
    const/16 v1, 0x640

    if-le p0, v2, :cond_4

    if-ge p0, v1, :cond_4

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    return-object v0

    :cond_4
    const/16 v2, 0xc80

    if-le p0, v1, :cond_5

    if-ge p0, v2, :cond_5

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    return-object v0

    :cond_5
    const/16 v1, 0x1900

    if-le p0, v2, :cond_6

    if-ge p0, v1, :cond_6

    new-array v0, v0, [F

    fill-array-data v0, :array_6

    return-object v0

    :cond_6
    const/16 v2, 0x3200

    if-le p0, v1, :cond_7

    if-ge p0, v2, :cond_7

    new-array v0, v0, [F

    fill-array-data v0, :array_7

    return-object v0

    :cond_7
    const/16 v1, 0x4b00

    if-le p0, v2, :cond_8

    if-ge p0, v1, :cond_8

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    return-object v0

    :cond_8
    if-ge p0, v1, :cond_9

    new-array v0, v0, [F

    fill-array-data v0, :array_9

    return-object v0

    :cond_9
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    return-object v0

    nop

    :array_0
    .array-data 4
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42800000    # 64.0f
    .end array-data

    :array_1
    .array-data 4
        0x427f8000    # 63.875f
        0x42800000    # 64.0f
        0x4281a000    # 64.8125f
        0x42808000    # 64.25f
    .end array-data

    :array_2
    .array-data 4
        0x427f0000    # 63.75f
        0x42820000    # 65.0f
        0x427f0000    # 63.75f
        0x427fc000    # 63.9375f
    .end array-data

    :array_3
    .array-data 4
        0x427f0000    # 63.75f
        0x427f0000    # 63.75f
        0x42818000    # 64.75f
        0x427ec000    # 63.6875f
    .end array-data

    :array_4
    .array-data 4
        0x427e4000    # 63.5625f
        0x427e0000    # 63.5f
        0x4280e000    # 64.4375f
        0x427e0000    # 63.5f
    .end array-data

    :array_5
    .array-data 4
        0x42804000    # 64.125f
        0x42814000    # 64.625f
        0x427fc000    # 63.9375f
        0x427fc000    # 63.9375f
    .end array-data

    :array_6
    .array-data 4
        0x427d4000    # 63.3125f
        0x4280a000    # 64.3125f
        0x4287dc00    # 67.92969f
        0x427ec000    # 63.6875f
    .end array-data

    :array_7
    .array-data 4
        0x4276c000    # 61.6875f
        0x427ac000    # 62.6875f
        0x427bc000    # 62.9375f
        0x427dc000    # 63.4375f
    .end array-data

    :array_8
    .array-data 4
        0x426f0000    # 59.75f
        0x427dc000    # 63.4375f
        0x4277c000    # 61.9375f
        0x427c0000    # 63.0f
    .end array-data

    :array_9
    .array-data 4
        0x42900000    # 72.0f
        0x42900000    # 72.0f
        0x428e0000    # 71.0f
        0x42900000    # 72.0f
    .end array-data

    :array_a
    .array-data 4
        0x42790000    # 62.25f
        0x42816000    # 64.6875f
        0x42812000    # 64.5625f
        0x4281c000    # 64.875f
    .end array-data
.end method

.method public static BlackShiftOBJ(Ljava/lang/Integer;Ljava/lang/Integer;)[F
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xc80

    const/16 v3, 0x1900

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_1

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x2260

    if-le v0, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_2

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x3200

    if-ge v0, v2, :cond_3

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    return-object v0

    :cond_3
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    return-object v0

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x41800000    # 16.0f
        0x41800000    # 16.0f
        0x41800000    # 16.0f
    .end array-data

    :array_1
    .array-data 4
        0x42820000    # 65.0f
        0x42820000    # 65.0f
        0x42800000    # 64.0f
        0x42820000    # 65.0f
    .end array-data

    :array_2
    .array-data 4
        0x42820000    # 65.0f
        0x42820000    # 65.0f
        0x42820000    # 65.0f
        0x42800000    # 64.0f
    .end array-data

    :array_3
    .array-data 4
        0x42840000    # 66.0f
        0x42840000    # 66.0f
        0x42840000    # 66.0f
        0x42860000    # 67.0f
    .end array-data

    :array_4
    .array-data 4
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42800000    # 64.0f
    .end array-data
.end method

.method private static ISO_100()J
    .locals 3

    sget v0, Lza/lol;->ISO_AE:I

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    sget-wide v1, Lza/lol;->Shutter_AE:J

    long-to-float v1, v1

    mul-float v1, v1, v0

    float-to-long v1, v1

    return-wide v1
.end method

.method private static Rule500(FLjava/lang/String;)J
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "S5K2L7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "IMX477"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "IMX380"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "IMX378"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "IMX377"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "IMX363"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "IMX362"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "IMX345"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x40bccccd    # 5.9f

    const/high16 v2, 0x43fa0000    # 500.0f

    packed-switch v0, :pswitch_data_0

    const-wide v0, 0x46c7cfe00L

    return-wide v0

    :pswitch_0
    mul-float v1, v1, p0

    div-float/2addr v2, v1

    float-to-long v0, v2

    return-wide v0

    :pswitch_1
    mul-float v1, v1, p0

    div-float/2addr v2, v1

    float-to-long v0, v2

    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f086240 -> :sswitch_7
        -0x7f086205 -> :sswitch_6
        -0x7f086204 -> :sswitch_5
        -0x7f0861e1 -> :sswitch_4
        -0x7f0861e0 -> :sswitch_3
        -0x7f0861c9 -> :sswitch_2
        -0x7f085e20 -> :sswitch_1
        -0x6f5009cc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static SlideVALUES()Ljava/lang/String;
    .locals 1

    const-string v0, "AUTO,1s,2s,4s,8s,10s,16s,32s"

    return-object v0
.end method

.method public static calc_quantization(Lkvg;)V
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lkvg;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    const/high16 v1, 0x42c80000    # 100.0f

    :try_start_0
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput v1, Lza/lol;->ISO_to_Gain_Quant:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const v2, 0x40000000    # 2.0f

    sput v2, Lza/lol;->ISO_to_Gain_Quant:F

    :goto_0
    return-void
.end method

.method public static calcdist(I)V
    .locals 2

    sput p0, Lza/lol;->focusMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SLIDER 1 IDX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lza/lol;->shutterVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lza/lol;->logMSG(Ljava/lang/String;)V

    const v0, 0x0

    packed-switch p0, :pswitch_data_0

    sput v0, Lza/lol;->focusDistance:F

    if-nez v0, :cond_4

    goto/16 :goto_0

    :pswitch_0
    const v0, 0x41700000    # 15.0f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x41600000    # 14.0f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x41400000    # 12.0f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_3
    const v0, 0x41300000    # 11.0f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_4
    const v0, 0x41200000    # 10.0f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_5
    const v0, 0x411e6666    # 9.9f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_6
    const v0, 0x411cf5c3    # 9.81f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_7
    const v0, 0x4119c28f    # 9.61f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_8
    const v0, 0x41168f5c    # 9.41f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_9
    const v0, 0x41135c29    # 9.21f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_a
    const v0, 0x411028f6    # 9.01f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_b
    const v0, 0x4109c28f    # 8.61f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_c
    const v0, 0x41068f5c    # 8.41f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_d
    const v0, 0x41035c29    # 8.21f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_e
    const v0, 0x410028f6    # 8.01f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_f
    const v0, 0x40f9eb85    # 7.81f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_10
    const v0, 0x40f3851f    # 7.61f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_11
    const v0, 0x40ed1eb8    # 7.41f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_12
    const v0, 0x40e6b852    # 7.21f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_13
    const v0, 0x40e051ec    # 7.01f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_14
    const v0, 0x40d9eb85    # 6.81f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_15
    const v0, 0x40d3851f    # 6.61f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_16
    const v0, 0x40cd1eb8    # 6.41f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_17
    const v0, 0x40c6b852    # 6.21f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_18
    const v0, 0x40c051ec    # 6.01f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_19
    const v0, 0x40b9eb85    # 5.81f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_1a
    const v0, 0x40b3851f    # 5.61f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_1b
    const v0, 0x40ad1eb8    # 5.41f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_1c
    const v0, 0x40a6b852    # 5.21f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_1d
    const v0, 0x40a051ec    # 5.01f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_1e
    const v0, 0x4099eb85    # 4.81f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_1f
    const v0, 0x4093851f    # 4.61f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_20
    const v0, 0x408d1eb8    # 4.41f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_21
    const v0, 0x4086b852    # 4.21f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_22
    const v0, 0x408051ec    # 4.01f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_23
    const v0, 0x4073d70a    # 3.81f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_24
    const v0, 0x40670a3d    # 3.61f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_25
    const v0, 0x405a3d71    # 3.41f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_26
    const v0, 0x404d70a4    # 3.21f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_27
    const v0, 0x4040a3d7    # 3.01f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_28
    const v0, 0x4033d70a    # 2.81f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_29
    const v0, 0x40270a3d    # 2.61f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_2a
    const v0, 0x401a3d71    # 2.41f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_2b
    const v0, 0x400d70a4    # 2.21f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_2c
    const v0, 0x4000a3d7    # 2.01f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_2d
    const v0, 0x3fe7ae14    # 1.81f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_2e
    const v0, 0x3fce147b    # 1.61f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_2f
    const v0, 0x3fb47ae1    # 1.41f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_30
    const v0, 0x3f9ae148    # 1.21f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_31
    const v0, 0x3f8147ae    # 1.01f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_32
    const v0, 0x3f733333    # 0.95f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_33
    const v0, 0x3f68f5c3    # 0.91f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_34
    const v0, 0x3f4f5c29    # 0.81f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_35
    const v0, 0x3f35c28f    # 0.71f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_36
    const v0, 0x3f1c28f6    # 0.61f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_37
    const v0, 0x3f028f5c    # 0.51f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_38
    const v0, 0x3ed1eb85    # 0.41f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_39
    const v0, 0x3e9eb852    # 0.31f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_3a
    const v0, 0x3e570a3d    # 0.21f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_3b
    const v0, 0x3de147ae    # 0.11f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_3c
    const v0, 0x3db851ec    # 0.09f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_3d
    const v0, 0x3d8f5c29    # 0.07f

    sput v0, Lza/lol;->focusDistance:F

    goto/16 :goto_0

    :pswitch_3e
    const v0, 0x3d4ccccd    # 0.05f

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_3f
    const v0, 0x3cf5c28f    # 0.03f

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_40
    const v0, 0x3c23d70a    # 0.01f

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_41
    const v0, 0x3c1374bc    # 0.009f

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_42
    const v0, 0x3c03126f    # 0.008f

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_43
    const v0, 0x3be56042    # 0.007f

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_44
    const v0, 0x3bc49ba6    # 0.006f

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_45
    const v0, 0x3ba3d70a    # 0.005f

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_46
    const-string v0, "m_focus_key"

    invoke-static {v0}, Lza/lol;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "13.14"

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_47
    const-string v0, "s_focus_key"

    invoke-static {v0}, Lza/lol;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "3.21"

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_48
    const-string v0, "2m_focus_key"

    invoke-static {v0}, Lza/lol;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "2.2"

    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :pswitch_49
    const-string v0, "inf_focus_key"

    invoke-static {v0}, Lza/lol;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "1.51"

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lza/lol;->focusDistance:F

    goto :goto_0

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCCM_1()[F
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f9df6fd    # 1.2341f
        0x3f2a7efa    # 0.666f
        0x3dcb923a    # 0.0994f
        -0x41705532    # -0.2806f
        0x3f88be0e    # 1.0683f
        0x3e7afb7f    # 0.2451f
        0x3c5013a9    # 0.0127f
        0x3d94e3bd    # 0.0727f
        0x3f1432ca    # 0.5789f
    .end array-data
.end method

.method public static getCCM_2()[F
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f87d567    # 1.0612f
        -0x412a8c15    # -0.4169f
        -0x4232fec5    # -0.1001f
        -0x41341f21    # -0.3982f
        0x3fa23d71    # 1.2675f
        0x3e1096bc    # 0.1412f
        -0x429b7176    # -0.0558f
        0x3e25e354    # 0.162f
        0x3f05460b    # 0.5206f
    .end array-data
.end method

.method public static getEXPTGT()Ljava/lang/Long;
    .locals 3

    invoke-static {}, Lza/lol;->getSLIDER()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getEXPTGT2()Ljava/lang/Long;
    .locals 3

    invoke-static {}, Lza/lol;->getSLIDER()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getFM_1()[Ljava/lang/Float;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Float;

    const v1, 0x3ed65fd9    # 0.4187f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x3edec56d    # 0.4351f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x3de24dd3    # 0.1105f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x3e3573eb    # 0.1772f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x3f4a4a8c    # 0.7902f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x3d058794    # 0.0326f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0x3d408312    # 0.047f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const v1, 0x3a83126f    # 0.001f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0x3f46f694    # 0.7772f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getFM_2()[Ljava/lang/Float;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Float;

    const v1, 0x3ed85f07    # 0.4226f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x3ed0d845    # 0.4079f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x3e08e8a7    # 0.1337f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x3e3f9724    # 0.1871f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x3f4645a2    # 0.7745f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x3d1d4952    # 0.0384f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0x3d7d21ff    # 0.0618f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const v1, 0x3b9a0275    # 0.0047f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0x3f42339c    # 0.7586f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getFocusDistance()Ljava/lang/Float;
    .locals 1

    sget v0, Lza/lol;->focusDistance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusMode()Ljava/lang/Integer;
    .locals 1

    sget v0, Lza/lol;->focusMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusValue()I
    .locals 1

    sget v0, Lza/lol;->focusMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getISO(I)J
    .locals 2

    sget v0, Lza/lol;->ISO_AE:I

    int-to-long v0, v0

    packed-switch p0, :pswitch_data_0

    return-wide v0

    :pswitch_0
    const-wide/16 v0, -0x600

    return-wide v0

    :pswitch_1
    const-wide/16 v0, -0x4480

    return-wide v0

    :pswitch_2
    const-wide/16 v0, 0x6400

    return-wide v0

    :pswitch_3
    const-wide/16 v0, 0x3200

    return-wide v0

    :pswitch_4
    const-wide/16 v0, 0x1900

    return-wide v0

    :pswitch_5
    const-wide/16 v0, 0x12c0

    return-wide v0

    :pswitch_6
    const-wide/16 v0, 0xc80

    return-wide v0

    :pswitch_7
    const-wide/16 v0, 0x640

    return-wide v0

    :pswitch_8
    const-wide/16 v0, 0x320

    return-wide v0

    :pswitch_9
    const-wide/16 v0, 0x190

    return-wide v0

    :pswitch_a
    const-wide/16 v0, 0xc8

    return-wide v0

    :pswitch_b
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getISOTGT()Ljava/lang/Integer;
    .locals 3

    sget v0, Lza/lol;->isoVal2:I

    if-nez v0, :cond_0

    sget v0, Lza/lol;->ISO_AE:I

    sput v0, Lza/lol;->ISO_Out:I

    sget v0, Lza/lol;->ISO_Out:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lza/lol;->getSLIDER2()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    long-to-float v0, v1

    const v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lza/lol;->ISO_Out:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static getISOTGTzF6()Ljava/lang/Integer;
    .locals 3

    invoke-static {}, Lza/lol;->getSLIDER()[J

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    long-to-int v0, v1

    sput v0, Lza/lol;->ISO_Out:I

    sget v0, Lza/lol;->ISO_Out:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getISO_Out()I
    .locals 5

    sget v0, Lza/lol;->ISO_Out:I

    int-to-float v0, v0

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getISO_to_Gain_Quant()F
    .locals 1

    sget v0, Lza/lol;->ISO_to_Gain_Quant:F

    return v0
.end method

.method public static getInstance()Lza/lol;
    .locals 1

    sget-object v0, Lza/lol;->lol:Lza/lol;

    return-object v0
.end method

.method public static getIsoVal()I
    .locals 3

    sget v0, Lza/lol;->shutterVal:I

    const/16 v1, 0x2329

    if-ne v0, v1, :cond_0

    const/16 v0, 0x68

    return v0

    :cond_0
    sget v0, Lza/lol;->shutterVal:I

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_1

    const/16 v0, 0x320

    return v0

    :cond_1
    sget v0, Lza/lol;->shutterVal:I

    const/16 v1, 0x232b

    const/16 v2, 0xfc

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    sget v0, Lza/lol;->shutterVal:I

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_3

    return v2

    :cond_3
    sget v0, Lza/lol;->shutterVal:I

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static getSLIDER()[J
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    sget v0, Lza/lol;->shutterVal:I

    packed-switch v0, :pswitch_data_0

    new-array v0, v1, [J

    invoke-static {v4}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    new-array v0, v1, [J

    sget-wide v2, Lza/lol;->Shutter_AE:J

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_1
    new-array v0, v1, [J

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [J

    const/4 v1, 0x2

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_3
    new-array v0, v1, [J

    const/4 v1, 0x3

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_4
    new-array v0, v1, [J

    const/4 v1, 0x4

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_5
    new-array v0, v1, [J

    const/4 v1, 0x5

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_6
    new-array v0, v1, [J

    const/4 v1, 0x6

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_7
    new-array v0, v1, [J

    const/4 v1, 0x7

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_8
    new-array v0, v1, [J

    const/16 v1, 0x8

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_9
    new-array v0, v1, [J

    const/16 v1, 0x9

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_a
    new-array v0, v1, [J

    const/16 v1, 0xa

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_b
    new-array v0, v1, [J

    const/16 v1, 0xb

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_c
    new-array v0, v1, [J

    const/16 v1, 0xc

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto/16 :goto_0

    :pswitch_d
    new-array v0, v1, [J

    const/16 v1, 0xd

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto/16 :goto_0

    :pswitch_e
    new-array v0, v1, [J

    const/16 v1, 0xe

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto/16 :goto_0

    :pswitch_f
    new-array v0, v1, [J

    const/16 v1, 0xf

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto/16 :goto_0

    :pswitch_10
    new-array v0, v1, [J

    const/16 v1, 0x10

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto/16 :goto_0

    :pswitch_11
    new-array v0, v1, [J

    const/16 v1, 0x11

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto/16 :goto_0

    :pswitch_12
    new-array v0, v1, [J

    const/16 v1, 0x12

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto/16 :goto_0

    :pswitch_13
    new-array v0, v1, [J

    const/16 v1, 0x13

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto/16 :goto_0

    :pswitch_14
    new-array v0, v1, [J

    const/16 v1, 0x14

    invoke-static {v1}, Lza/lol;->getShutter(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto/16 :goto_0

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
    .end packed-switch
.end method

.method public static getSLIDER2()[J
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    sget v0, Lza/lol;->isoVal2:I

    packed-switch v0, :pswitch_data_0

    new-array v0, v1, [J

    invoke-static {v4}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    new-array v0, v1, [J

    sget v1, Lza/lol;->ISO_AE:I

    int-to-long v2, v1

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_1
    new-array v0, v1, [J

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [J

    const/4 v1, 0x2

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_3
    new-array v0, v1, [J

    const/4 v1, 0x3

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_4
    new-array v0, v1, [J

    const/4 v1, 0x4

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_5
    new-array v0, v1, [J

    const/4 v1, 0x5

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_6
    new-array v0, v1, [J

    const/4 v1, 0x6

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_7
    new-array v0, v1, [J

    const/4 v1, 0x7

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_8
    new-array v0, v1, [J

    const/16 v1, 0x8

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_9
    new-array v0, v1, [J

    const/16 v1, 0x9

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_a
    new-array v0, v1, [J

    const/16 v1, 0xa

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    goto :goto_0

    :pswitch_b
    new-array v0, v1, [J

    const/16 v1, 0xb

    invoke-static {v1}, Lza/lol;->getISO(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private static getShutter(I)J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-wide v0

    :pswitch_0
    const-wide/32 v0, 0x8235

    goto :goto_0

    :pswitch_1
    const-wide/32 v0, 0x7a120

    goto :goto_0

    :pswitch_2
    const-wide/32 v0, 0xa2d78

    goto :goto_0

    :pswitch_3
    const-wide/32 v0, 0xf4240

    goto :goto_0

    :pswitch_4
    const-wide/32 v0, 0x3d0900

    goto :goto_0

    :pswitch_5
    const-wide/32 v0, 0x989680

    goto :goto_0

    :pswitch_6
    const-wide/32 v0, 0x1312d00

    goto :goto_0

    :pswitch_7
    const-wide/32 v0, 0x2625a00

    goto :goto_0

    :pswitch_8
    const-wide/32 v0, 0x3b9aca0

    goto :goto_0

    :pswitch_9
    const-wide/32 v0, 0x7735940

    goto :goto_0

    :pswitch_a
    const-wide/32 v0, 0xee6b280

    goto :goto_0

    :pswitch_b
    const-wide/32 v0, 0x1dcd6500

    goto :goto_0

    :pswitch_c
    const-wide/32 v0, 0x3b9aca00

    goto :goto_0

    :pswitch_d
    const-wide/32 v0, 0x77359400

    goto :goto_0

    :pswitch_e
    const-wide v0, 0xee6b2800L

    goto :goto_0

    :pswitch_f
    const-wide v0, 0x1dcd65000L

    goto :goto_0

    :pswitch_10
    const-wide v0, 0x3b9aca000L

    goto :goto_0

    :pswitch_11
    const-wide v0, 0x773594000L

    goto :goto_0

    :pswitch_12
    const-wide v0, 0xdbcac8e00L

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public static getShutter_Adjusted()J
    .locals 4

    sget v0, Lza/lol;->shutterVal:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_3

    sget v0, Lza/lol;->shutterVal:I

    const/16 v1, 0x232a

    if-eq v0, v1, :cond_3

    sget v0, Lza/lol;->shutterVal:I

    const/16 v1, 0x270f

    if-eq v0, v1, :cond_3

    sget v0, Lza/lol;->shutterVal:I

    const/16 v1, 0x232b

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lza/lol;->shutterVal:I

    if-lez v0, :cond_2

    sget v0, Lza/lol;->shutterVal:I

    sget v1, Lza/lol;->ISO_AE:I

    if-ge v0, v1, :cond_1

    sget v0, Lza/lol;->ISO_AE:I

    sget v1, Lza/lol;->shutterVal:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    sget-wide v2, Lza/lol;->Shutter_AE:J

    mul-long v0, v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sget-wide v0, Lza/lol;->Shutter_AE:J

    return-wide v0

    :cond_2
    sget-wide v0, Lza/lol;->Shutter_AE:J

    return-wide v0

    :cond_3
    :goto_0
    const-wide v0, 0x46c7cfe00L

    return-wide v0
.end method

.method public static getStringPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lsgcam/Shamim;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    return-object v0
.end method

.method private static isoLut(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v0, 0x270f

    return v0

    :pswitch_1
    const/16 v0, 0x232b

    return v0

    :pswitch_2
    const/16 v0, 0x232a

    return v0

    :pswitch_3
    const/16 v0, 0x2329

    return v0

    :pswitch_4
    const/16 v0, 0x6400

    return v0

    :pswitch_5
    const/16 v0, 0x3200

    return v0

    :pswitch_6
    const/16 v0, 0x2710

    return v0

    :pswitch_7
    const/16 v0, 0x2580

    return v0

    :pswitch_8
    const/16 v0, 0x1900

    return v0

    :pswitch_9
    const/16 v0, 0x1388

    return v0

    :pswitch_a
    const/16 v0, 0xc80

    return v0

    :pswitch_b
    const/16 v0, 0x9c4

    return v0

    :pswitch_c
    const/16 v0, 0x640

    return v0

    :pswitch_d
    const/16 v0, 0x4e2

    return v0

    :pswitch_e
    const/16 v0, 0x3e8

    return v0

    :pswitch_f
    const/16 v0, 0x320

    return v0

    :pswitch_10
    const/16 v0, 0x271

    return v0

    :pswitch_11
    const/16 v0, 0x190

    return v0

    :pswitch_12
    const/16 v0, 0x138

    return v0

    :pswitch_13
    const/16 v0, 0xc8

    return v0

    :pswitch_14
    const/16 v0, 0x9c

    return v0

    :pswitch_15
    const/16 v0, 0x64

    return v0

    :pswitch_16
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static logArray([F)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    const-string v3, "DeezNutz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logArray Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static logFloat(F)V
    .locals 3

    const-string v0, "DeezNutz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logFloat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logInt(I)V
    .locals 3

    const-string v0, "DeezNutz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logINT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logLong(J)V
    .locals 3

    const-string v0, "DeezNutz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logLong: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logMSG(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeezNuts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logRECT([Landroid/graphics/Rect;)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    const-string v3, "DeezNutz Array"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RECT LEFT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "RECT Right: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "RECT Top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "RECT Bottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static logRECToptical([Landroid/graphics/Rect;)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    const-string v3, "DeezNutz Optical"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RECT LEFT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "RECT Right: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "RECT Top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "RECT Bottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static onVaar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static saturationMode(I)I
    .locals 2

    const v0, 0x19

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const v0, 0x0

    return v0

    :pswitch_1
    const v0, 0x1

    return v0

    :pswitch_2
    const v0, 0x2

    return v0

    :pswitch_3
    const v0, 0x3

    return v0

    :pswitch_4
    const v0, 0x4

    return v0

    :pswitch_5
    const v0, 0x5

    return v0

    :pswitch_6
    const v0, 0x6

    return v0

    :pswitch_7
    const v0, 0x7

    return v0

    :pswitch_8
    const v0, 0x8

    return v0

    :pswitch_9
    const v0, 0x9

    return v0

    :pswitch_a
    const v0, 0x10

    return v0

    :pswitch_b
    const v0, 0x11

    return v0

    :pswitch_c
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static saturationMode()Ljava/lang/Integer;
    .locals 1

    sget v0, Lza/lol;->saturationMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static setAPI2_Analog_ISO(I)V
    .locals 0

    sput p0, Lza/lol;->API2_Analog_ISO:I

    return-void
.end method

.method public static setApi2Exp(J)V
    .locals 0

    sput-wide p0, Lza/lol;->API2_EXP:J

    return-void
.end method

.method public static setApi2Iso(I)V
    .locals 0

    sput p0, Lza/lol;->API2_ISO:I

    return-void
.end method

.method public static setISO(I)V
    .locals 2

    sput p0, Lza/lol;->isoVal2:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SLIDER 3 IDX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lza/lol;->isoVal2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lza/lol;->logMSG(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v0, "Use HDR+ Enhanced or Night Sight"

    invoke-static {v0}, Lsgcam/Shamim;->ShowToast(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    goto :goto_0
.end method

.method public static setISeek(I)V
    .locals 2

    sput p0, Lza/lol;->shutterVal:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SLIDER 0 IDX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lza/lol;->shutterVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lza/lol;->logMSG(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v0, "Use HDR+ Enhanced or Night Sight"

    invoke-static {v0}, Lsgcam/Shamim;->ShowToast(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    goto :goto_0
.end method

.method public static setIsoAe(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    sput v0, Lza/lol;->ISO_AE:I

    return-void
.end method

.method public static setSHseek(I)V
    .locals 2

    invoke-static {p0}, Lza/lol;->shutterLut(I)J

    move-result-wide v0

    sput-wide v0, Lza/lol;->shutterdurationl:J

    return-void
.end method

.method public static setShutter_AE(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lza/lol;->Shutter_AE:J

    return-void
.end method

.method public static setShutter_OS(Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    sput-wide v0, Lza/lol;->Shutter_AE:J

    return-void
.end method

.method public static setTrails(I)V
    .locals 2

    sput p0, Lza/lol;->TrailVal:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SLIDER 4 IDX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lza/lol;->TrailVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lza/lol;->logMSG(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v0, "Use HDR+ Enhanced or Night Sight"

    invoke-static {v0}, Lsgcam/Shamim;->ShowToast(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    goto :goto_0
.end method

.method public static setsaturation(I)V
    .locals 2

    sput p0, Lza/lol;->saturationMode:I

    return-void
.end method

.method private static shutterLut(I)J
    .locals 2

    const-wide/32 v0, 0x1fca055

    packed-switch p0, :pswitch_data_0

    return-wide v0

    :pswitch_0
    const-wide v0, 0xee6b2800L

    return-wide v0

    :pswitch_1
    const-wide v0, 0xb2d05e00L

    return-wide v0

    :pswitch_2
    const-wide/32 v0, 0x77359400

    return-wide v0

    :pswitch_3
    const-wide/32 v0, 0x3b9aca00

    return-wide v0

    :pswitch_4
    const-wide/32 v0, 0x1dcd6500

    return-wide v0

    :pswitch_5
    const-wide/32 v0, 0x13de4355

    return-wide v0

    :pswitch_6
    const-wide/32 v0, 0xee6b280

    return-wide v0

    :pswitch_7
    const-wide/32 v0, 0x9ef21aa

    return-wide v0

    :pswitch_8
    const-wide/32 v0, 0x7735940

    return-wide v0

    :pswitch_9
    const-wide/32 v0, 0x5f5e100

    return-wide v0

    :pswitch_a
    const-wide/32 v0, 0x3f940aa

    return-wide v0

    :pswitch_b
    const-wide/32 v0, 0x3b9aca0

    return-wide v0

    :pswitch_c
    return-wide v0

    :pswitch_d
    const-wide/32 v0, 0x17d7840

    return-wide v0

    :pswitch_e
    const-wide/32 v0, 0x1312d00

    return-wide v0

    :pswitch_f
    const-wide/32 v0, 0x1107a76

    return-wide v0

    :pswitch_10
    const-wide/32 v0, 0xbebc20

    return-wide v0

    :pswitch_11
    const-wide/32 v0, 0x989680

    return-wide v0

    :pswitch_12
    const-wide/32 v0, 0x4c4b40

    return-wide v0

    :pswitch_13
    const-wide/32 v0, 0x32dcd5

    return-wide v0

    :pswitch_14
    const-wide/32 v0, 0x2625a0

    return-wide v0

    :pswitch_15
    const-wide/32 v0, 0x1e8480

    return-wide v0

    :pswitch_16
    const-wide/32 v0, 0x196e6a

    return-wide v0

    :pswitch_17
    const-wide/32 v0, 0x15cc5b

    return-wide v0

    :pswitch_18
    const-wide/32 v0, 0x1312d0

    return-wide v0

    :pswitch_19
    const-wide/32 v0, 0xf4240

    return-wide v0

    :pswitch_1a
    const-wide/32 v0, 0xc3500

    return-wide v0

    :pswitch_1b
    const-wide/32 v0, 0x98968

    return-wide v0

    :pswitch_1c
    const-wide/32 v0, 0x7a120

    return-wide v0

    :pswitch_1d
    const-wide/32 v0, 0x61a80

    return-wide v0

    :pswitch_1e
    const-wide/32 v0, 0x4c4b4

    return-wide v0

    :pswitch_1f
    const-wide/32 v0, 0x2625a

    return-wide v0

    :pswitch_20
    const-wide/32 v0, 0x1e848

    return-wide v0

    :pswitch_21
    const-wide/32 v0, 0x186a0

    return-wide v0

    :pswitch_22
    const-wide/32 v0, 0x1046a

    return-wide v0

    :pswitch_23
    const-wide/32 v0, 0x8235

    return-wide v0

    :pswitch_24
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
