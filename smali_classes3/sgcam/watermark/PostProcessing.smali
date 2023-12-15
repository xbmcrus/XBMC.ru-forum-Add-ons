.class public Lsgcam/watermark/PostProcessing;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsgcam/Shamim;->ProcessWatermark(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    sget-object v2, Lsgcam/Shamim;->GetTargetFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    sput-object v1, Lsgcam/watermark/PostProcessing$1;->GetInstance:Landroid/media/ExifInterface;

    invoke-static {v2}, Lsgcam/lutprocessing/filter/ApplyLut;->GetImageApplyLut(Ljava/lang/String;)V

    sget-object v3, Lsgcam/devsettoptions/Pref;->water:Ldhj;

    invoke-static {v3}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lsgcam/watermark/PostProcessing$1;->GetWaterMarkTxtStamp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lsgcam/watermark/PostProcessing$1;->GetWaterMarkTxtStamp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lsgcam/devsettoptions/Pref;->watr:Ldhj;

    invoke-static {v2}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    :goto_0
    return-void
.end method
