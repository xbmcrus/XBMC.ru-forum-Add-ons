.class public Lcom/Fix/ColorTransformKeys;
.super Ljava/lang/Object;


# static fields
.field static final keys_camera_back:[Ljava/lang/String;

.field static final keys_camera_front:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "pref_custom_cct_rr_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "pref_custom_cct_rg_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "pref_custom_cct_rb_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "pref_custom_cct_gr_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "pref_custom_cct_gg_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "pref_custom_cct_gb_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "pref_custom_cct_br_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "pref_custom_cct_bg_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "pref_custom_cct_bb_key"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    sput-object v2, Lcom/Fix/ColorTransformKeys;->keys_camera_back:[Ljava/lang/String;

    return-void
.end method
