.class public final Lmaw;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.F250Worker"
    c = "F250Worker.kt"
    d = "doWork"
    e = {
        0x3a
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;Loku;)V
    .locals 0

    iput-object p1, p0, Lmaw;->b:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmaw;->a:Ljava/lang/Object;

    iget p1, p0, Lmaw;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmaw;->c:I

    iget-object p1, p0, Lmaw;->b:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->b(Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
