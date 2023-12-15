.class public Lsgcam/default/DeviceConfigs;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FogGetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_fix_awbgains_key"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "fix_resolution_key"

    const-string v6, "32"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static GetDefaults()V
    .locals 22

    sget-object v0, Lsgcam/Shamim;->GetInstance:Ldit;

    invoke-static {v0}, Lsgcam/devsettoptions/Pref;->GetDefaultValue(Ldit;)V

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->isRedmiNote8()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lsgcam/default/DeviceConfigs;->Rn8GetDefaults()V

    :cond_0
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->isnokia()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lsgcam/default/DeviceConfigs;->NokiaGetDefaults()V

    :cond_1
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->isOnePlus()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lsgcam/default/DeviceConfigs;->OnePlusGetDefaults()V

    :cond_2
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->isOnePlus7()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lsgcam/default/DeviceConfigs;->OnePlus7GetDefaults()V

    :cond_3
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->isOnePlus9()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lsgcam/default/DeviceConfigs;->OnePlus9GetDefaults()V

    :cond_4
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->OppoVivoRealme()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lsgcam/default/DeviceConfigs;->OppoVivoRealmeGetDefaults()V

    :cond_5
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Samsungs22UExynos()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {}, Lsgcam/default/DeviceConfigs;->Samsungs22UExynosGetDefaults()V

    :cond_6
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Fog()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {}, Lsgcam/default/DeviceConfigs;->FogGetDefaults()V

    :cond_7
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lsgcam/default/DeviceConfigs;->PixelGetDefaults()V

    :cond_8
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Mi12UltraDevice()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {}, Lsgcam/default/DeviceConfigs;->Xiaomi12UltraGetDefaults()V

    :cond_9
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->SamsungM52()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Lsgcam/default/DeviceConfigs;->SamsungM52GetDefaults()V

    :cond_a
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->isXiaomi12()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {}, Lsgcam/default/DeviceConfigs;->Xiaomi12GetDefaults()V

    :cond_b
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->RedmiNote7()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {}, Lsgcam/default/DeviceConfigs;->RedmiNote7GetDefaults()V

    :cond_c
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->RedmiNote10()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {}, Lsgcam/default/DeviceConfigs;->RedmiNote10GetDefaults()V

    :cond_d
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Mi10TPro()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {}, Lsgcam/default/DeviceConfigs;->Mi10TProGetDefaults()V

    :cond_e
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Miatoll()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {}, Lsgcam/default/DeviceConfigs;->MiatollGetDefaults()V

    :cond_f
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->PocoX3()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static {}, Lsgcam/default/DeviceConfigs;->PocoX3GetDefaults()V

    :cond_10
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->ZFOLD4()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {}, Lsgcam/default/DeviceConfigs;->ZFOLD4Defaults()V

    :cond_11
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GooglePixel4()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {}, Lsgcam/default/DeviceConfigs;->GooglePixel4()V

    :cond_12
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Ruby()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {}, Lsgcam/default/DeviceConfigs;->RubyDefaults()V

    :cond_13
    const-string v7, "pref_camera_selfie_mirror_key"

    const-string v8, "1"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_chameleon_control_key"

    const-string v8, "0"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_video_resolation_key"

    const-string v8, "4"

    invoke-static {v7, v8}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_camera_kepler_enabled_key"

    const-string v8, "0"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_micro_mode"

    const-string v8, "0"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_aux_text_color_enabled_key"

    const-string v8, "#ff000000"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_aux_text_color_disabled_key"

    const-string v8, "#ffffffff"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_non_restart_vf_button_key"

    const-string v8, "1"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "prefix_key"

    const-string v8, "SGCAM_"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "videoprefix_key"

    const-string v8, "SGCAM_"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_date_key"

    const-string v8, "yyyyMMdd_HHmmssSSS"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_con_key"

    const-string v8, "/SGCAM/8.8.224/XML/"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_libdirectory_key"

    const-string v8, "/SGCAM/8.8.224/LIB/"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_subjectportrait_key"

    const-string v8, "1"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_video_hevc_setting_key"

    const-string v8, "0"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_frames_ns_key"

    const-string v8, "-1"

    invoke-static {v7, v8}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_frames_hdr_key"

    const-string v8, "-1"

    invoke-static {v7, v8}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_enable_motionphoto"

    const-string v8, "0"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_mf_near_key"

    const-string v8, "14.29"

    invoke-static {v7, v8}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_mf_far_key"

    const-string v8, "1.52"

    invoke-static {v7, v8}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_mf_infinity_key"

    const-string v8, "0.45"

    invoke-static {v7, v8}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_camera_hdrplus_option_available_key"

    const-string v8, "1"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_manualVideo_resoHeight_key"

    const-string v8, "7680"

    invoke-static {v7, v8}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_manualVideo_resoWidth_key"

    const-string v8, "4320"

    invoke-static {v7, v8}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v10

    if-nez v10, :cond_14

    const-string v7, "pref_hexagon_key"

    const-string v8, "1"

    invoke-static {v7, v8}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pref_stream_opmode_key"

    const-string v8, "1"

    invoke-static {v7, v8}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const v5, 0x1

    sget-object v3, Ldho;->br:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldho;->X:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhh;->f:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhu;->i:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldho;->az:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->S:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldho;->bJ:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhf;->b:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    const v5, 0x0

    sget-object v3, Ldhq;->X:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhx;->e:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldgt;->a:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->Y:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldgu;->q:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldgu;->p:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhg;->d:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldib;->r:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v10

    if-nez v10, :cond_15

    sget-object v3, Ldib;->u:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldho;->ai:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldho;->ag:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhc;->c:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhc;->d:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhg;->n:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->ao:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldib;->B:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldgs;->c:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldho;->aa:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldho;->bn:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldho;->cb:Ldhj;

    invoke-interface {v0, v3, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldib;->f:Ldhj;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v0, v3, v9}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    :cond_15
    sget-object v3, Ldib;->f:Ldhj;

    const-string v9, "pref_enable_zoom_portrait_key"

    invoke-static {v9}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_16

    const-string v9, "pref_zoom_portrait_key"

    invoke-static {v9}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v0, v3, v9}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    :cond_16
    const-string v15, "pref_enable_focus_tracking"

    invoke-static {v15}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v15

    sget-object v3, Ldih;->b:Ldhj;

    invoke-interface {v0, v3, v15}, Ldhm;->u(Ldhj;Z)V

    const-string v15, "pref_enable_focus_tracking"

    invoke-static {v15}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v15

    sget-object v3, Ldhh;->g:Ldhj;

    invoke-interface {v0, v3, v15}, Ldhm;->u(Ldhj;Z)V

    const-string v15, "pref_enable_motionphoto"

    invoke-static {v15}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v15

    sget-object v3, Ldhv;->i:Ldhj;

    invoke-interface {v0, v3, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhv;->j:Ldhj;

    invoke-interface {v0, v3, v15}, Ldhm;->u(Ldhj;Z)V

    const-string v15, "pref_chameleon_control_key"

    invoke-static {v15}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v15

    sget-object v3, Ldim;->a:Ldhj;

    invoke-interface {v0, v3, v15}, Ldhm;->u(Ldhj;Z)V

    const-string v15, "pref_enable_fps_selections_key"

    invoke-static {v15}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_17

    invoke-static {}, Lsgcam/Shamim;->getSlowmoFps()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v3, Ldgu;->b:Ldhk;

    invoke-interface {v0, v3, v15}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    :cond_17
    const-string v15, "pref_enable_resolation_key"

    invoke-static {v15}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_18

    invoke-static {}, Lsgcam/Shamim;->getFrontVideoResolations()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v3, Ldgu;->f:Ldhk;

    invoke-interface {v0, v3, v15}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    invoke-static {}, Lsgcam/Shamim;->getBackVideoResolations()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v3, Ldgu;->g:Ldhk;

    invoke-interface {v0, v3, v15}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    :cond_18
    return-void
.end method

.method public static GooglePixel4()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-object v3, Ldho;->bn:Ldhj;

    invoke-interface {v4, v3, v7}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldho;->cb:Ldhj;

    invoke-interface {v4, v3, v8}, Ldhm;->u(Ldhj;Z)V

    const-string v5, "pref_stream_opmode_key"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Mi10TProGetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_1"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_2"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_3"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_1"

    const-string v6, "36864"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_0"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_2"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_3"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_0"

    const-string v6, "32769"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_2"

    const-string v6, "32769"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_3"

    const-string v6, "32769"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key"

    const-string v6, "33009"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_2"

    const-string v6, "33009"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_3"

    const-string v6, "33009"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key"

    const-string v6, "32804"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_2"

    const-string v6, "32804"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_3"

    const-string v6, "32804"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key"

    const-string v6, "32804"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_2"

    const-string v6, "32804"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_3"

    const-string v6, "32804"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static MiatollGetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_1"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_2"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_3"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_1"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_0"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_2"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_3"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_0"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_2"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_3"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_0"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_2"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_3"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static NokiaGetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_hexagon_key"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OnePlus7GetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_custom_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_custom_operation_mode_portrait_key_0"

    const-string v6, "32778"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_custom_operation_mode_night_key_0"

    const-string v6, "32793"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_custom_operation_mode_motion_key_0"

    const-string v6, "32770"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_fps_selections_key"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_slowmo_fps_key"

    const-string v6, "240"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_model_key"

    const-string v6, "12"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OnePlus9GetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_custom_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_custom_operation_mode_motion_key_0"

    const-string v6, "40962"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_fps_selections_key"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_slowmo_fps_key"

    const-string v6, "240"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OnePlusGetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_sunbugFix_key"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_frame_base_index_key"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_fps_selections_key"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_slowmo_fps_key"

    const-string v6, "240"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OppoVivoRealmeGetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    return-void
.end method

.method public static Pixel7ProGetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_device_key"

    const-string v6, "15"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_model_key"

    const-string v6, "15"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static PixelGetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_device_key"

    const-string v6, "25"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_model_key"

    const-string v6, "25"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static PocoX3GetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_1"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_2"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_3"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_1"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_0"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_2"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_3"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_0"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_2"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_3"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_0"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_2"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_3"

    const-string v6, "262144"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_0"

    const-string v6, "61444"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_2"

    const-string v6, "61444"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_3"

    const-string v6, "61444"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static RedmiNote10GetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_1"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_2"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_3"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_1"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_0"

    const-string v6, "32778"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_2"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_3"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_0"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_2"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_3"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_0"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_2"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_3"

    const-string v6, "32772"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static RedmiNote7GetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_0"

    const-string v6, "32888"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Rn8GetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    return-void
.end method

.method public static RubyDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key"

    const-string v6, "32778"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key"

    const-string v6, "32778"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key"

    const-string v6, "32778"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key"

    const-string v6, "40976"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key"

    const-string v6, "32781"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_key"

    const-string v6, "32778"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SamsungM52GetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_1"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_2"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_3"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_key_0"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_key_2"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_key_3"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_0"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_2"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_3"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_0"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_2"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_3"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_0"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_2"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_3"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_0"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_2"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_3"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_0"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_2"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_3"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Samsungs22UExynosGetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_device_key"

    const-string v6, "2"

    invoke-static {v5, v6}, Lsgcam/lens/LensValue;->SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_img_key_1"

    const-string v6, "3"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_img_key_0"

    const-string v6, "3"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_img_key_2"

    const-string v6, "3"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_img_key_3"

    const-string v6, "3"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_img_key_4"

    const-string v6, "3"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_img_key_5"

    const-string v6, "3"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Xiaomi12GetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_custom_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_custom_operation_mode_motion_key_0"

    const-string v6, "40962"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Xiaomi12UltraGetDefaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_enable_operation_mode_key_0"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_1"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_2"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_enable_operation_mode_key_3"

    const-string v6, "1"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_key_1"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_1"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_1"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_1"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_1"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_1"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_key_0"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_key_2"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_key_3"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_0"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_2"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_normal_key_3"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_0"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_2"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_night_key_3"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_0"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_2"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_portrait_key_3"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_0"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_2"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_motion_key_3"

    const-string v6, "33041"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_0"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_2"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_operation_mode_video_key_3"

    const-string v6, "61448"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ZFOLD4Defaults()V
    .locals 12

    sget-object v4, Lsgcam/Shamim;->GetInstance:Ldit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "pref_raw_key_1"

    const-string v6, "2"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_raw_key_0"

    const-string v6, "2"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_raw_key_2"

    const-string v6, "2"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_raw_key_3"

    const-string v6, "2"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_raw_key_4"

    const-string v6, "2"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_raw_key_5"

    const-string v6, "2"

    invoke-static {v5, v6}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
