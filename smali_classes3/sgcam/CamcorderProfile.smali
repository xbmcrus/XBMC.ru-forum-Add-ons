.class public final Lsgcam/CamcorderProfile;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManualProfile()Ljxk;
    .locals 15

    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    const-string v1, "pref_audioBitRate_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "96000"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const-string v1, "pref_audioChannels_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const-string v1, "pref_audioCodec_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const-string v1, "pref_audioSampleRate_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "48000"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const-string v1, "pref_fileFormat_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "2"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const-string v1, "pref_quality_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "6"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const-string v1, "pref_videoBitRate_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "105000000"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const-string v1, "pref_videoCodec_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "2"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const-string v1, "pref_videoCodecProfile_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "-1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    const-string v1, "pref_videoCodecLevel_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "-1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const-string v1, "pref_videoFrameHeight_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1080"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const-string v1, "pref_videoFrameRate_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "60"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const-string v1, "pref_videoFrameWidth_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1920"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getManualProfileHfr120()Ljxk;
    .locals 15

    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    const-string v1, "pref_hfraudioBitRate_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "96000"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const-string v1, "pref_hfraudioChannels_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const-string v1, "pref_hfraudioCodec_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const-string v1, "pref_hfraudioSampleRate_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "48000"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const-string v1, "pref_hfrfileFormat_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "2"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const-string v1, "pref_hfrquality_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "2003"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const-string v1, "pref_hfrvideoBitRate_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "105000000"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const-string v1, "pref_hfrvideoCodec_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "2"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const-string v1, "pref_hfrvideoCodecProfile_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "-1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    const-string v1, "pref_hfrvideoCodecLevel_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "-1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const-string v1, "pref_hfrvideoFrameHeight_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "720"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const-string v1, "pref_hfrvideoFrameRate_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "240"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const-string v1, "pref_hfrvideoFrameWidth_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1280"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getManualProfileHfr240()Ljxk;
    .locals 15

    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    const-string v1, "pref_hfraudioBitRate1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "96000"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const-string v1, "pref_hfraudioChannels1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const-string v1, "pref_hfraudioCodec1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const-string v1, "pref_hfraudioSampleRate1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "48000"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const-string v1, "pref_hfrfileFormat1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "2"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const-string v1, "pref_hfrquality1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "2003"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const-string v1, "pref_hfrvideoBitRate1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "105000000"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const-string v1, "pref_hfrvideoCodec1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "2"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const-string v1, "pref_hfrvideoCodecProfile1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "-1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    const-string v1, "pref_hfrvideoCodecLevel1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "-1"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const-string v1, "pref_hfrvideoFrameHeight1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "720"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const-string v1, "pref_hfrvideoFrameRate1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "240"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const-string v1, "pref_hfrvideoFrameWidth1_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1280"

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfile(I)Ljxk;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    invoke-static {}, Lsgcam/CamcorderProfile;->getProfile480()Ljxk;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {}, Lsgcam/CamcorderProfile;->getProfile720()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lsgcam/CamcorderProfile;->getProfile1080()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lsgcam/CamcorderProfile;->getProfile4k()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lsgcam/CamcorderProfile;->getProfile8k()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public static getProfile1080()Ljxk;
    .locals 3

    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const v1, 0x6

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const v1, 0x6422c40

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    const v1, 0x438

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const v1, 0x3c

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const v1, 0x780

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfile480()Ljxk;
    .locals 3

    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const v1, 0x4

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const v1, 0x6422c40

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    const v1, 0x1e0

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const v1, 0x3c

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const v1, 0x2d0

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfile4k()Ljxk;
    .locals 3

    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const v1, 0x8

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const v1, 0x6422c40

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const v1, 0x870

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const v1, 0x3c

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const v1, 0xf00

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfile720()Ljxk;
    .locals 3

    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const v1, 0x5

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const v1, 0x6422c40

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const v1, 0x2d0

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const v1, 0x3c

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const v1, 0x500

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfile8k()Ljxk;
    .locals 3

    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const v1, 0xa

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const v1, 0x6422c40

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const v1, 0x10e0

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const v1, 0x3c

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const v1, 0x1e00

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfileHfr(I)Ljxk;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    invoke-static {}, Lsgcam/CamcorderProfile;->getProfileHfr480()Ljxk;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {}, Lsgcam/CamcorderProfile;->getProfileHfr480()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lsgcam/CamcorderProfile;->getProfileHfr720()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lsgcam/CamcorderProfile;->getProfileHfr1080()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lsgcam/CamcorderProfile;->getProfileHfr4k()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lsgcam/CamcorderProfile;->getProfileHfr8k()Ljxk;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_1
        0x7d4 -> :sswitch_2
        0x7d5 -> :sswitch_3
        0x7d6 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getProfileHfr1080()Ljxk;
    .locals 3

    new-instance v0, Ljxk;

    const/4 v1, 0x0

    invoke-direct {v0}, Ljxk;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const v1, 0x7d4

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const v1, 0x6422c40

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const v1, 0x438

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const v1, 0xf0

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const v1, 0x780

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfileHfr480()Ljxk;
    .locals 3

    new-instance v0, Ljxk;

    const/4 v1, 0x0

    invoke-direct {v0}, Ljxk;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const v1, 0x7d2

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const v1, 0x6422c40

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const v1, 0x1e0

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const v1, 0x1e0

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const v1, 0x2d0

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfileHfr4k()Ljxk;
    .locals 3

    new-instance v0, Ljxk;

    const/4 v1, 0x0

    invoke-direct {v0}, Ljxk;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const v1, 0x7d5

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const v1, 0x6422c40

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const v1, 0x870

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const v1, 0xf0

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const v1, 0xf00

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfileHfr720()Ljxk;
    .locals 3

    new-instance v0, Ljxk;

    const/4 v1, 0x0

    invoke-direct {v0}, Ljxk;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const v1, 0x7d3

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const v1, 0x6422c40

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const v1, 0x2d0

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const v1, 0xf0

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const v1, 0x500

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfileHfr8k()Ljxk;
    .locals 3

    new-instance v0, Ljxk;

    const/4 v1, 0x0

    invoke-direct {v0}, Ljxk;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    const v1, 0x1

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    const v1, 0x7d6

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    const v1, 0x6422c40

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    const v1, 0x2

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    const v1, 0x10e0

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    const v1, 0xf0

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    const v1, 0x1e00

    invoke-virtual {v0, v1}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static getProfileHfrManual(I)Ljxk;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    invoke-static {}, Lsgcam/CamcorderProfile;->getManualProfileHfr120()Ljxk;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {}, Lsgcam/CamcorderProfile;->getManualProfileHfr120()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lsgcam/CamcorderProfile;->getManualProfileHfr120()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lsgcam/CamcorderProfile;->getManualProfileHfr240()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lsgcam/CamcorderProfile;->getManualProfileHfr240()Ljxk;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_1
        0x7d4 -> :sswitch_2
        0x7d5 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getProfilehas(I)Z
    .locals 2

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x0

    :goto_0
    return v0

    const/16 v0, 0x0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static getProfilehasHfr(I)Z
    .locals 2

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x0

    :goto_0
    return v0

    const/16 v0, 0x0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
    .end sparse-switch
.end method
