.class public final Lkls;
.super Ljava/lang/Object;

# interfaces
.implements Lklp;


# instance fields
.field public final GetInstance:Lsgcam/lens/IdentifyIds;

.field private final a:Landroid/hardware/camera2/CameraManager;

.field private final b:Lkaq;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Lkaq;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkls;->a:Landroid/hardware/camera2/CameraManager;

    new-instance v0, Lsgcam/lens/IdentifyIds;

    invoke-direct {v0, p1}, Lsgcam/lens/IdentifyIds;-><init>(Landroid/hardware/camera2/CameraManager;)V

    iput-object v0, p0, Lkls;->GetInstance:Lsgcam/lens/IdentifyIds;

    const-string p1, "DefaultCamIdsPrdr"

    invoke-interface {p2, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkls;->b:Lkaq;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lkls;->GetInstance:Lsgcam/lens/IdentifyIds;

    invoke-virtual {v0}, Lsgcam/lens/IdentifyIds;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v6, "pref_aux_key"

    invoke-static {v6}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    sget v2, Lsgcam/lens/IdentifyIds;->GetFrontId_Main:I

    goto :goto_0

    :pswitch_0
    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    sget v2, Lsgcam/lens/IdentifyIds;->GetFrontId_Main:I

    goto :goto_0

    :pswitch_1
    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    sget v2, Lsgcam/lens/IdentifyIds;->GetFrontId_2:I

    goto :goto_0

    :pswitch_2
    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    sget v2, Lsgcam/lens/IdentifyIds;->GetFrontId_3:I

    goto :goto_0

    :pswitch_3
    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    sget v2, Lsgcam/lens/IdentifyIds;->GetFrontId_4:I

    goto :goto_0

    :pswitch_4
    sget v3, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    sget v2, Lsgcam/lens/IdentifyIds;->GetFrontId_5:I

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Back Cam ID"

    invoke-static {v5, v4}, Lsgcam/logcat/LogcatGenerator;->GetStringTypeValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lkll;->b(Ljava/lang/String;)Lkll;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Front Cam ID"

    invoke-static {v5, v4}, Lsgcam/logcat/LogcatGenerator;->GetStringTypeValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lkll;->b(Ljava/lang/String;)Lkll;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lkls;->b:Lkaq;

    const-string v2, "Unable to read camera list."

    invoke-interface {v1, v2}, Lkaq;->d(Ljava/lang/String;)V

    new-instance v1, Lklq;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lklq;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final b()Ljava/util/List;
    .locals 1

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    return-object v0
.end method
