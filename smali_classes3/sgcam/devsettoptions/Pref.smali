.class public Lsgcam/devsettoptions/Pref;
.super Ljava/lang/Object;


# static fields
.field public static final FFAR:Ldhj;

.field public static final FMAX:Ldhj;

.field public static final FMIN:Ldhj;

.field public static final LOG:Ldhj;

.field public static final LOG1:Ldhj;

.field public static final RRRR:Ldhj;

.field public static final RRRS:Ldhj;

.field public static final RRRS1:Ldhj;

.field public static final RRRS11:Ldhj;

.field public static final RRRS2:Ldhj;

.field public static final RRRS21:Ldhj;

.field public static final RRRS3:Ldhj;

.field public static final RRRS31:Ldhj;

.field public static final RRRS4:Ldhj;

.field public static final RRRS41:Ldhj;

.field public static final RRRS5:Ldhj;

.field public static final RRRS51:Ldhj;

.field public static final RRRS6:Ldhj;

.field public static final RRRS61:Ldhj;

.field public static final SATURATION:Ldhj;

.field public static final aaa:Ldhk;

.field public static final aaa4:Ldhk;

.field public static final aaa5:Ldhk;

.field public static final aaaf:Ldhk;

.field public static final aaat:Ldhk;

.field public static final aaaw:Ldhk;

.field public static final ab:Ldhk;

.field public static final antiba:Ldhk;

.field public static final apertu:Ldhk;

.field public static final auxbu:Ldhj;

.field public static final auxf:Ldhj;

.field public static final auxl:Ldhj;

.field public static final bbb:Ldhk;

.field public static final bbb4:Ldhk;

.field public static final bbb5:Ldhk;

.field public static final bbbf:Ldhk;

.field public static final bbbt:Ldhk;

.field public static final bbbw:Ldhk;

.field public static final bssss:Ldhk;

.field public static final bssss1:Ldhk;

.field public static final capres:Ldhk;

.field public static final ccam:Ldhk;

.field public static final coloco:Ldhk;

.field public static final cutout:Ldhj;

.field public static final cuwa:Ldhj;

.field public static final cuwb:Ldhj;

.field public static final cuwh:Ldhj;

.field public static final dddE:Ldhk;

.field public static final dddN:Ldhk;

.field public static final dddNF:Ldhk;

.field public static final discm:Ldhk;

.field public static final gboard:Ldhj;

.field public static final hotp:Ldhk;

.field public static final livehdr:Ldhk;

.field public static final metering:Ldhk;

.field public static final ois:Ldhk;

.field public static final oisdata:Ldhk;

.field public static final permi:Ldhj;

.field public static final shade:Ldhk;

.field public static final tonmod:Ldhk;

.field public static final upsc:Ldhj;

.field public static final upsc4:Ldhj;

.field public static final upsc5:Ldhj;

.field public static final upscf:Ldhj;

.field public static final upsct:Ldhj;

.field public static final upscw:Ldhj;

.field public static final water:Ldhj;

.field public static final wati:Ldhj;

.field public static final watr:Ldhj;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.advance_lens_detector_front"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->auxf:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.fix_request_capabilities"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->auxl:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.watermark_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->water:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "permission.internal_storage_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->permi:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.skip_resize_main"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->upsc:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.skip_resize_front"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->upscf:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.skip_resize_tele"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->upsct:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.skip_resize_wide"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->upscw:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.skip_resize_id4"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->upsc4:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.skip_resize_id5"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->upsc5:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "focus.maximum_distance_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->FMAX:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "focus.far_distance_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->FFAR:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "focus.minimum_distance_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->FMIN:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "slider.saturation_reinitrestart"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->SATURATION:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.aux_button_forcely_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->auxbu:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.watermark_exif_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->watr:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.watermark_location_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->wati:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "log.save_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->LOG1:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "lenslog.details_disabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->LOG:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "search.input_gboard_keyboard"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->gboard:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.cutout_display"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->cutout:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "slider.api_selection"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "saturation"

    const-string v4, "iso value"

    const-string v5, "contrast"

    const-string v6, "sharpness"

    invoke-static {v2, v4, v5, v6}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->bssss1:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "capture.result_selection"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v4, "auto"

    const-string v5, "enable fix"

    const-string v6, "disable fix"

    invoke-static {v4, v5, v6}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->capres:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.edge_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lmwn;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "off"

    const-string v4, "fast"

    const-string v5, "high quality"

    const-string v6, "zsl"

    invoke-static {v2, v7, v4, v5, v6}, Lmwn;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->dddE:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.noise_reduction_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->dddN:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.viewfinder_noise_reduction_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->dddNF:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.white_level_main"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x3ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xfff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v5, "1023"

    const-string v4, "4095"

    invoke-static {v2, v5, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->bbb:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.white_level_front"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->bbbf:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.white_level_tele"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->bbbt:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.white_level_wide"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->bbbw:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.white_level_id4"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->bbb4:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.white_level_id5"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->bbb5:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "sensor_info_color_filter_main"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lmwn;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "rggb"

    const-string v4, "grbg"

    const-string v5, "gbrg"

    const-string v6, "bggr"

    invoke-static {v2, v7, v4, v5, v6}, Lmwn;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->aaa:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "sensor_info_color_filter_front"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->aaaf:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "sensor_info_color_filter_tele"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->aaat:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "sensor_info_color_filter_wide"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->aaaw:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "sensor_info_color_filter_id4"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->aaa4:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "sensor_info_color_filter_id5"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->aaa5:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.level_fix"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->ab:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.custom_watermark"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->cuwa:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.watermark_textcolor"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->cuwh:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.watermark_backgroundcolor"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->cuwb:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.enabled_color"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRR:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.disabled_color"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_awb_enabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS1:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_aperture_enabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS2:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_highres_enabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS3:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_shade_enabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS4:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_ldr_enabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS5:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_libpatch_enabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS6:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_awb_disabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS11:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_aperture_disabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS21:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_highres_disabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS31:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_shade_disabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS41:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_ldr_disabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS51:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "button.name_libpatch_disabletxt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->RRRS61:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.shading_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "off"

    const-string v4, "fast"

    const-string v5, "high quality"

    invoke-static {v2, v7, v4, v5}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->shade:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.antibanding_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lmwn;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "off"

    const-string v4, "50hz"

    const-string v5, "60hz"

    const-string v6, "auto"

    invoke-static {v2, v7, v4, v5, v6}, Lmwn;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->antiba:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.color_correction_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "transform matrix"

    const-string v4, "fast"

    const-string v5, "high quality"

    invoke-static {v2, v7, v4, v5}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->coloco:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.distortion_correction_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "off"

    const-string v4, "fast"

    const-string v5, "high quality"

    invoke-static {v2, v7, v4, v5}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->discm:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.color_correction_ambition_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "off"

    const-string v4, "fast"

    const-string v5, "high quality"

    invoke-static {v2, v7, v4, v5}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->ccam:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.hot_pixel_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "off"

    const-string v4, "fast"

    const-string v5, "high quality"

    invoke-static {v2, v7, v4, v5}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->hotp:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.tone_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lsgcam/devsettoptions/Pref;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v3, "contrast curve"

    const-string v4, "fast"

    const-string v5, "high quality"

    const-string v6, "gamma value"

    const-string v7, "preset curve"

    invoke-static/range {v2 .. v7}, Lsgcam/devsettoptions/Pref;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->tonmod:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.optical_stabilization_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "off"

    const-string v4, "enable"

    invoke-static {v2, v7, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->ois:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.optical_stabilization_data_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "off"

    const-string v4, "enable"

    invoke-static {v2, v7, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->oisdata:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.aperture"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "f/1.5"

    const-string v4, "f/2.4"

    invoke-static {v2, v7, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->apertu:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.live_hdr"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v7, "mode"

    const-string v4, "level"

    invoke-static {v2, v7, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->livehdr:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "c2api.metering_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lsgcam/devsettoptions/Pref;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    const-string v2, "default"

    const-string v3, "center weighted"

    const-string v4, "sport"

    const-string v5, "matrix"

    const-string v6, "controlled by gcam"

    const-string v7, "unknown 4"

    const-string v8, "unknown 5"

    const-string v9, "unknown 6"

    invoke-static/range {v2 .. v9}, Lsgcam/devsettoptions/Pref;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Lsgcam/devsettoptions/Pref;->metering:Ldhk;

    return-void
.end method

.method public static GetDefaultValue(Ldit;)V
    .locals 12

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lsgcam/devsettoptions/Pref;->auxf:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->auxl:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->cutout:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->gboard:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->LOG:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->LOG1:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->water:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->watr:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->wati:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->permi:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->upsc:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->upscf:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->upsct:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->upscw:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->upsc4:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->upsc5:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->FFAR:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->FMAX:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->FMIN:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->SATURATION:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->auxbu:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->bbb:Ldhk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->bbbf:Ldhk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->bbbt:Ldhk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->bbbw:Ldhk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->bbb4:Ldhk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->bbb5:Ldhk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->aaa:Ldhk;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->aaaf:Ldhk;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->aaat:Ldhk;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->aaaw:Ldhk;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->aaa4:Ldhk;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->aaa5:Ldhk;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->dddE:Ldhk;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->dddN:Ldhk;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->dddNF:Ldhk;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->bssss1:Ldhk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->capres:Ldhk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->cuwa:Ldhj;

    invoke-static {}, Lsgcam/Shamim;->GetDefaultDeviceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->cuwb:Ldhj;

    const-string v2, "#ff9c0d0d"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->cuwh:Ldhj;

    const-string v2, "#ff000000"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRR:Ldhj;

    const-string v2, "#ff000000"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS:Ldhj;

    const-string v2, "#ffffffff"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS1:Ldhj;

    const-string v2, "AWB"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS2:Ldhj;

    const-string v2, "2.4f"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS3:Ldhj;

    const-string v2, "HIRES"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS4:Ldhj;

    const-string v2, "SHAD"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS5:Ldhj;

    const-string v2, "LDR"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS6:Ldhj;

    const-string v2, "LP"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS11:Ldhj;

    const-string v2, "AWB"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS21:Ldhj;

    const-string v2, "1.5f"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS31:Ldhj;

    const-string v2, "HIRES"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS41:Ldhj;

    const-string v2, "SHAD"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS51:Ldhj;

    const-string v2, "LDR"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->RRRS61:Ldhj;

    const-string v2, "LP"

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->ab:Ldhk;

    const v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v0, Lsgcam/devsettoptions/Pref;->shade:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->antiba:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->hotp:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->ccam:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->discm:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->coloco:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->tonmod:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->ois:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->oisdata:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->apertu:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->livehdr:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Lsgcam/devsettoptions/Pref;->metering:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void
.end method

.method public static L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;
    .locals 12

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {v0, v1}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;
    .locals 14

    const v0, 0x8

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {v0, v1}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0
.end method
