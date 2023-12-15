.class public Loverwhelmer/simplified_lol;
.super Ljava/lang/Object;


# static fields
.field public static MaxExpMs:F

.field public static MinExpMs:F

.field public static mExpIndex:I

.field public static mIsoIndex:I

.field public static sDesiredExposureTimeMs:F

.field public static sGainAE:F

.field public static sManualDigitalGain:F

.field public static sManualIsoGain:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Loverwhelmer/simplified_lol;->sManualDigitalGain:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExposureTimeMS()F
    .locals 1

    sget v0, Loverwhelmer/simplified_lol;->mExpIndex:I

    invoke-static {v0}, Loverwhelmer/simplified_lol;->getExposureTimeMSValues(I)F

    move-result v0

    return v0
.end method

.method private static getExposureTimeMSValues(I)F
    .locals 1

    packed-switch p0, :pswitch_data_0

    const v0, 0x45505555

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const v0, 0x476a6000    # 60000.0f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x46fa0000    # 32000.0f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x467a0000    # 16000.0f

    goto :goto_0

    :pswitch_4
    const v0, 0x463b8000    # 12000.0f

    goto :goto_0

    :pswitch_5
    const v0, 0x461c4000    # 10000.0f

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x45fa0000    # 8000.0f

    goto :goto_0

    :pswitch_7
    const v0, 0x45dac000    # 7000.0f

    goto :goto_0

    :pswitch_8
    const v0, 0x45bb8000    # 6000.0f

    goto :goto_0

    :pswitch_9
    const v0, 0x459c4000    # 5000.0f

    goto :goto_0

    :pswitch_a
    const/high16 v0, 0x457a0000    # 4000.0f

    goto :goto_0

    :pswitch_b
    const v0, 0x453b8000    # 3000.0f

    goto :goto_0

    :pswitch_c
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0

    :pswitch_d
    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_0

    :pswitch_e
    const/high16 v0, 0x43fa0000    # 500.0f

    goto :goto_0

    :pswitch_f
    const v0, 0x43a6aaab

    goto :goto_0

    :pswitch_10
    const/high16 v0, 0x437a0000    # 250.0f

    goto :goto_0

    :pswitch_11
    const/high16 v0, 0x43480000    # 200.0f

    goto :goto_0

    :pswitch_12
    const v0, 0x4326aaab

    goto :goto_0

    :pswitch_13
    const/high16 v0, 0x42fa0000    # 125.0f

    goto :goto_0

    :pswitch_14
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    :pswitch_15
    const v0, 0x42855554

    goto :goto_0

    :pswitch_16
    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    :pswitch_17
    const v0, 0x42055555

    goto :goto_0

    :pswitch_18
    const v0, 0x41855555

    goto :goto_0

    :pswitch_19
    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_0

    :pswitch_1a
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    :pswitch_1b
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_0

    :pswitch_1c
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :pswitch_1d
    const v0, 0x40555547

    goto :goto_0

    :pswitch_1e
    const v0, 0x4036db6a

    goto :goto_0

    :pswitch_1f
    const/high16 v0, 0x40200000    # 2.5f

    goto :goto_0

    :pswitch_20
    const v0, 0x400e38e3

    goto :goto_0

    :pswitch_21
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :pswitch_22
    const v0, 0x3fd5551d

    goto :goto_0

    :pswitch_23
    const v0, 0x3faaaa8f

    goto :goto_0

    :pswitch_24
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_25
    const v0, 0x3f4ccccd    # 0.8f

    goto/16 :goto_0

    :pswitch_26
    const v0, 0x3f2aaa9f

    goto/16 :goto_0

    :pswitch_27
    const/high16 v0, 0x3f200000    # 0.625f

    goto/16 :goto_0

    :pswitch_28
    const/high16 v0, 0x3f000000    # 0.5f

    goto/16 :goto_0

    :pswitch_29
    const v0, 0x3ecccccd    # 0.4f

    goto/16 :goto_0

    :pswitch_2a
    const v0, 0x3eaaaa3b    # 0.33333f

    goto/16 :goto_0

    :pswitch_2b
    const/high16 v0, 0x3e800000    # 0.25f

    goto/16 :goto_0

    :pswitch_2c
    const v0, 0x3e4ccccd    # 0.2f

    goto/16 :goto_0

    :pswitch_2d
    const v0, 0x3e2aaa7e

    goto/16 :goto_0

    :pswitch_2e
    const v0, 0x3e12491b    # 0.142857f

    goto/16 :goto_0

    :pswitch_2f
    const/high16 v0, 0x3e000000    # 0.125f

    goto/16 :goto_0

    :pswitch_30
    const v0, 0x3dcccccd    # 0.1f

    goto/16 :goto_0

    :pswitch_31
    const v0, 0x3d88882f    # 0.066666f

    goto/16 :goto_0

    :pswitch_32
    const v0, 0x3d08882f    # 0.033333f

    goto/16 :goto_0

    :pswitch_33
    const v0, 0x3ccccccd    # 0.025f

    goto/16 :goto_0

    :pswitch_34
    const v0, 0x3ca3d70a    # 0.02f

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
    .end packed-switch
.end method

.method public static getManualExp()V
    .locals 2

    invoke-static {}, Loverwhelmer/simplified_lol;->getExposureTimeMS()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    sget v1, Loverwhelmer/simplified_lol;->MaxExpMs:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    sget v1, Loverwhelmer/simplified_lol;->MaxExpMs:F

    sput v1, Loverwhelmer/simplified_lol;->sDesiredExposureTimeMs:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Loverwhelmer/simplified_lol;->MinExpMs:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    sget v1, Loverwhelmer/simplified_lol;->MinExpMs:F

    sput v1, Loverwhelmer/simplified_lol;->sDesiredExposureTimeMs:F

    goto :goto_0

    :cond_2
    sput v0, Loverwhelmer/simplified_lol;->sDesiredExposureTimeMs:F

    goto :goto_0
.end method

.method public static setManualIsoSlider()V
    .locals 5

    const/4 v4, 0x1

    sget v1, Loverwhelmer/simplified_lol;->mIsoIndex:I

    if-nez v1, :cond_1

    sget v3, Loverwhelmer/simplified_lol;->sGainAE:F

    sput v3, Loverwhelmer/simplified_lol;->sManualIsoGain:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lt v1, v4, :cond_2

    const/16 v3, 0x20

    if-gt v1, v3, :cond_2

    int-to-float v3, v1

    sput v3, Loverwhelmer/simplified_lol;->sManualIsoGain:F

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    :goto_1
    const/16 v3, 0x9

    if-gt v0, v3, :cond_0

    shl-int v3, v4, v0

    int-to-float v2, v3

    add-int/lit8 v3, v0, 0x1b

    if-ne v1, v3, :cond_3

    sput v2, Loverwhelmer/simplified_lol;->sManualIsoGain:F

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
