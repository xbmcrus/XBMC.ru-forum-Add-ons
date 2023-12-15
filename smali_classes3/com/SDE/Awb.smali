.class public Lcom/SDE/Awb;
.super Ljava/lang/Object;


# static fields
.field public static awbArr_B_G:[F

.field public static awbArr_GR_GB:F

.field public static awbArr_R_G:[F

.field public static awbArr_len:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AuxCamKey()I
    .locals 1

    const-string v0, "pref_awb_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getQcColorCalibration(Lcom/google/googlex/gcam/StaticMetadata;)V
    .locals 14

    invoke-static {}, Lcom/SDE/Awb;->setAWB()V

    invoke-static {}, Lcom/SDE/Awb;->setGRGB()V

    new-instance v5, Lcom/google/googlex/gcam/QcColorCalibration;

    invoke-direct {v5}, Lcom/google/googlex/gcam/QcColorCalibration;-><init>()V

    :try_start_0
    sget-object v0, Lcom/SDE/Awb;->awbArr_R_G:[F

    sget-object v1, Lcom/SDE/Awb;->awbArr_B_G:[F

    sget v2, Lcom/SDE/Awb;->awbArr_len:I

    invoke-static {v0, v1, v2}, Lsgcam/Shamim;->getAwbLog([F[FI)V

    new-instance v8, Lcom/google/googlex/gcam/QcIlluminantVector;

    invoke-direct {v8}, Lcom/google/googlex/gcam/QcIlluminantVector;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v11, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;

    invoke-direct {v11}, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;-><init>()V

    aget v4, v0, v3

    iget-wide v9, v11, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;->a:J

    invoke-static {v9, v10, v11, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcColorCalibration_IlluminantData_rg_ratio_set(JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;F)V

    aget v4, v1, v3

    iget-wide v9, v11, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;->a:J

    invoke-static {v9, v10, v11, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcColorCalibration_IlluminantData_bg_ratio_set(JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;F)V

    iget-wide v6, v8, Lcom/google/googlex/gcam/QcIlluminantVector;->a:J

    iget-wide v9, v11, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;->a:J

    invoke-static/range {v6 .. v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcIlluminantVector_add(JLcom/google/googlex/gcam/QcIlluminantVector;JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-wide v3, v5, Lcom/google/googlex/gcam/QcColorCalibration;->a:J

    iget-wide v6, v8, Lcom/google/googlex/gcam/QcIlluminantVector;->a:J

    invoke-static/range {v3 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcColorCalibration_illuminant_data_set(JLcom/google/googlex/gcam/QcColorCalibration;JLcom/google/googlex/gcam/QcIlluminantVector;)V

    sget v2, Lcom/SDE/Awb;->awbArr_GR_GB:F

    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/QcColorCalibration;->b(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v2, p0

    iget-wide v0, v2, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v3, v5, Lcom/google/googlex/gcam/QcColorCalibration;->a:J

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_qc_color_calibration_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/QcColorCalibration;)V

    return-void

    :catchall_0
    goto :goto_1
.end method

.method private static setAWB()V
    .locals 10

    const-string v2, "pref_awb_key"

    invoke-static {v2}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v1, ".TXT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v1, ".GAWB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/SDE/Awb;->AuxCamKey()I

    move-result v0

    const v3, -0x1

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2016_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2016_WB_CALIB_B_G:[F

    :goto_0
    sput-object v0, Lcom/SDE/Awb;->awbArr_R_G:[F

    sput-object v1, Lcom/SDE/Awb;->awbArr_B_G:[F

    array-length v2, v0

    sput v2, Lcom/SDE/Awb;->awbArr_len:I

    return-void

    :cond_0
    sget-object v0, Lcom/SDE/AwbData;->MANUAL1_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->MANUAL1_WB_CALIB_B_G:[F

    sput-object v0, Lcom/SDE/Awb;->awbArr_R_G:[F

    sput-object v1, Lcom/SDE/Awb;->awbArr_B_G:[F

    array-length v2, v0

    sput v2, Lcom/SDE/Awb;->awbArr_len:I

    return-void

    :cond_1
    invoke-static {}, Lsgcam/awb/Internal;->RG()[F

    move-result-object v0

    invoke-static {}, Lsgcam/awb/Internal;->BG()[F

    move-result-object v1

    sput-object v0, Lcom/SDE/Awb;->awbArr_R_G:[F

    sput-object v1, Lcom/SDE/Awb;->awbArr_B_G:[F

    array-length v2, v0

    sput v2, Lcom/SDE/Awb;->awbArr_len:I

    return-void

    :cond_2
    invoke-static {}, Lsgcam/awb/Internal$1;->RG()[F

    move-result-object v0

    invoke-static {}, Lsgcam/awb/Internal$1;->BG()[F

    move-result-object v1

    sput-object v0, Lcom/SDE/Awb;->awbArr_R_G:[F

    sput-object v1, Lcom/SDE/Awb;->awbArr_B_G:[F

    array-length v2, v0

    sput v2, Lcom/SDE/Awb;->awbArr_len:I

    return-void

    :pswitch_0
    sget-object v0, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2016_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2016_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2016_FRONT_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2016_FRONT_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2017_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2017_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2018_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2018_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2019_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2019_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2019_FRONT_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2019_FRONT_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2019_TELE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NEXUS_EXPERIMENTAL_2019_TELE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/SDE/AwbData;->IMX350_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX350_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/SDE/AwbData;->IMX361_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX361_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/SDE/AwbData;->IMX363_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX363_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Lcom/SDE/AwbData;->IMX371_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX371_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_b
    sget-object v0, Lcom/SDE/AwbData;->IMX398_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX398_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_c
    sget-object v0, Lcom/SDE/AwbData;->IMX471_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX471_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_d
    sget-object v0, Lcom/SDE/AwbData;->IMX586_OFILM_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX586_OFILM_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_e
    sget-object v0, Lcom/SDE/AwbData;->IMX586_SEMCO_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX586_SEMCO_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_f
    sget-object v0, Lcom/SDE/AwbData;->IMX586_CEPHEUS_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX586_CEPHEUS_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_10
    sget-object v0, Lcom/SDE/AwbData;->IMX586_VIOLET_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX586_VIOLET_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_11
    sget-object v0, Lcom/SDE/AwbData;->IMX586_SUNNY_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX586_SUNNY_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_12
    sget-object v0, Lcom/SDE/AwbData;->IMX586_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX586_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_13
    sget-object v0, Lcom/SDE/AwbData;->IMX686_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX686_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_14
    sget-object v0, Lcom/SDE/AwbData;->IMX689_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX689_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_15
    sget-object v0, Lcom/SDE/AwbData;->IMX689_MOD_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX689_MOD_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_16
    sget-object v0, Lcom/SDE/AwbData;->S5K2L7_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5K2L7_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_17
    sget-object v0, Lcom/SDE/AwbData;->S5K3L6_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5K3L6_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_18
    sget-object v0, Lcom/SDE/AwbData;->S5K3T2_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5K3T2_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_19
    sget-object v0, Lcom/SDE/AwbData;->S5KGD1_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5KGD1_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_1a
    sget-object v0, Lcom/SDE/AwbData;->S5KGM1_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5KGM1_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_1b
    sget-object v0, Lcom/SDE/AwbData;->S5KGW1_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5KGW1_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_1c
    sget-object v0, Lcom/SDE/AwbData;->S5KHMX_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5KHMX_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_1d
    sget-object v0, Lcom/SDE/AwbData;->OV02A10_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV02A10_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_1e
    sget-object v0, Lcom/SDE/AwbData;->OV08A10_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV08A10_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_1f
    sget-object v0, Lcom/SDE/AwbData;->OV12A10_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV12A10_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_20
    sget-object v0, Lcom/SDE/AwbData;->OV13855_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV13855_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_21
    sget-object v0, Lcom/SDE/AwbData;->OV13880_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV13880_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_22
    sget-object v0, Lcom/SDE/AwbData;->IMX355_RN10P_ULTRA_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX355_RN10P_ULTRA_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_23
    sget-object v0, Lcom/SDE/AwbData;->IMX471_RN10P_FRONT_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX471_RN10P_FRONT_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_24
    sget-object v0, Lcom/SDE/AwbData;->OV5675_RN10P_MACRO_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV5675_RN10P_MACRO_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_25
    sget-object v0, Lcom/SDE/AwbData;->S5KHM2_RN10P_WIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5KHM2_RN10P_WIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_26
    sget-object v0, Lcom/SDE/AwbData;->S5KGW3_RN10_WIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5KGW3_RN10_WIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_27
    sget-object v0, Lcom/SDE/AwbData;->S5KGM1RN7_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5KGM1RN7_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_28
    sget-object v0, Lcom/SDE/AwbData;->OV13855RN7Front_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV13855RN7Front_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_29
    sget-object v0, Lcom/SDE/AwbData;->NIKITA_IMX351_MAIN_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NIKITA_IMX351_MAIN_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_2a
    sget-object v0, Lcom/SDE/AwbData;->NIKITA_IMX351_WIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NIKITA_IMX351_WIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_2b
    sget-object v0, Lcom/SDE/AwbData;->NIKITA_SF846_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NIKITA_SF846_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_2c
    sget-object v0, Lcom/SDE/AwbData;->SAVITAR_OV48C_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->SAVITAR_OV48C_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_2d
    sget-object v0, Lcom/SDE/AwbData;->SAVITAR_SAMSUNG_HMX_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->SAVITAR_SAMSUNG_HMX_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_2e
    sget-object v0, Lcom/SDE/AwbData;->NIKITA_IMX298_XIAOMI_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NIKITA_IMX298_XIAOMI_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_2f
    sget-object v0, Lcom/SDE/AwbData;->NIKITA_IMX298_LG_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NIKITA_IMX298_LG_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_30
    sget-object v0, Lcom/SDE/AwbData;->NIKITA_IMX298_ASUS_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->NIKITA_IMX298_ASUS_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_31
    sget-object v0, Lcom/SDE/AwbData;->S5KGM2_RN9S_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5KGM2_RN9S_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_32
    sget-object v0, Lcom/SDE/AwbData;->OV8856_RN9SWIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV8856_RN9SWIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_33
    sget-object v0, Lcom/SDE/AwbData;->OV16A1Q_RN9SFRONT_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV16A1Q_RN9SFRONT_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_34
    sget-object v0, Lcom/SDE/AwbData;->IMX682_POCOX3_WIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX682_POCOX3_WIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_35
    sget-object v0, Lcom/SDE/AwbData;->S5K3T2_POCOX3FRONT_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5K3T2_POCOX3FRONT_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_36
    sget-object v0, Lcom/SDE/AwbData;->S5K3T1_MI9_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5K3T1_MI9_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_37
    sget-object v0, Lcom/SDE/AwbData;->IMX355_RN10_MAIN_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX355_RN10_MAIN_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_38
    sget-object v0, Lcom/SDE/AwbData;->OV13b10_RN10_FRONT_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV13b10_RN10_FRONT_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_39
    sget-object v0, Lcom/SDE/AwbData;->IMX582_RN10_WIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX582_RN10_WIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_3a
    sget-object v0, Lcom/SDE/AwbData;->GC02M1_RN10_MACRO_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->GC02M1_RN10_MACRO_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_3b
    sget-object v0, Lcom/SDE/AwbData;->OV13B10_MI10TP_ULTRA_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->OV13B10_MI10TP_ULTRA_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_3c
    sget-object v0, Lcom/SDE/AwbData;->S5K3T2_MI10TP_FRONT_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5K3T2_MI10TP_FRONT_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_3d
    sget-object v0, Lcom/SDE/AwbData;->S5K5E9YX_MI10TP_MACRO_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5K5E9YX_MI10TP_MACRO_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_3e
    sget-object v0, Lcom/SDE/AwbData;->S5KGW1_REALX2_MAIN_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5KGW1_REALX2_MAIN_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_3f
    sget-object v0, Lcom/SDE/AwbData;->IMX319_REALX2_WIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX319_REALX2_WIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_40
    sget-object v0, Lcom/SDE/AwbData;->S5K3M5SX_REALX2_TELE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5K3M5SX_REALX2_TELE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_41
    sget-object v0, Lcom/SDE/AwbData;->IMX417_REALX2_FRONT_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX417_REALX2_FRONT_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_42
    sget-object v0, Lcom/SDE/AwbData;->S5K5E9_RN9S_MACRO_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5K5E9_RN9S_MACRO_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_43
    sget-object v0, Lcom/SDE/AwbData;->IMX586_MI11U_TELE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX586_MI11U_TELE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_44
    sget-object v0, Lcom/SDE/AwbData;->IMX586_MI11U_ULTRAWIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->IMX586_MI11U_ULTRAWIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_45
    sget-object v0, Lcom/SDE/AwbData;->GN2_MI11U_MAIN_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->GN2_MI11U_MAIN_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_46
    sget-object v0, Lcom/SDE/AwbData;->S5K3T2_MI11U_FRONT_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->S5K3T2_MI11U_FRONT_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_47
    sget-object v0, Lcom/SDE/AwbData;->ov50a_X30_MAIN_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->ov50a_X30_MAIN_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_48
    sget-object v0, Lcom/SDE/AwbData;->ov60a_X30_FRONT_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->ov60a_X30_FRONT_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_49
    sget-object v0, Lcom/SDE/AwbData;->s5kjn1_X30_ULTRAWIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->s5kjn1_X30_ULTRAWIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_4a
    sget-object v0, Lcom/SDE/AwbData;->imx582_Mi9T_MAIN_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->imx582_Mi9T_MAIN_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_4b
    sget-object v0, Lcom/SDE/AwbData;->s5k3l6_Mi9T_ULTRAWIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->s5k3l6_Mi9T_ULTRAWIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_4c
    sget-object v0, Lcom/SDE/AwbData;->ov8856_X3p_ULTRAWIDE_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->ov8856_X3p_ULTRAWIDE_WB_CALIB_B_G:[F

    goto/16 :goto_0

    :pswitch_4d
    sget-object v0, Lcom/SDE/AwbData;->imx582_X3p_MAIN_WB_CALIB_R_G:[F

    sget-object v1, Lcom/SDE/AwbData;->imx582_X3p_MAIN_WB_CALIB_B_G:[F

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
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
    .end packed-switch
.end method

.method private static setGRGB()V
    .locals 14

    const-string v2, "pref_awb_key"

    invoke-static {v2}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v1, ".TXT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, ".GAWB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lsgcam/awb/Internal;->BGRG()[F

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    aget v0, v1, v3

    sput v0, Lcom/SDE/Awb;->awbArr_GR_GB:F

    return-void

    :cond_1
    :goto_0
    const-string v0, "pref_grgb_key"

    invoke-static {v0}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/SDE/AwbData;->NEXUS_DEFAULT_WB_CALIB_GR_GB:F

    :goto_1
    sput v0, Lcom/SDE/Awb;->awbArr_GR_GB:F

    return-void

    :pswitch_0
    const v0, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :pswitch_1
    sget v0, Lcom/SDE/AwbData;->NEXUS_DEFAULT_2016_WB_CALIB_GR_GB:F

    goto/16 :goto_1

    :pswitch_2
    sget v0, Lcom/SDE/AwbData;->NEXUS_DEFAULT_2016_FRONT_WB_CALIB_GR_GB:F

    goto/16 :goto_1

    :pswitch_3
    sget v0, Lcom/SDE/AwbData;->NEXUS_DEFAULT_WB_CALIB_GR_GB:F

    goto/16 :goto_1

    :pswitch_4
    sget v0, Lcom/SDE/AwbData;->NEXUS_DEFAULT_2019_FRONT_WB_CALIB_GR_GB:F

    goto/16 :goto_1

    :pswitch_5
    sget v0, Lcom/SDE/AwbData;->NEXUS_DEFAULT_2019_TELE_WB_CALIB_GR_GB:F

    goto/16 :goto_1

    nop

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
