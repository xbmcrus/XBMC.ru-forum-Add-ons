.class public final Lmby;
.super Loln;

# interfaces
.implements Lomk;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneAttachmentUploader$updateHandle$2"
    c = "OneAttachmentUploader.kt"
    d = "invokeSuspend"
    e = {
        0x4b
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Llwq;

.field final synthetic c:Ldqx;


# direct methods
.method public constructor <init>(Ldqx;Llwq;Loku;[B[B)V
    .locals 0

    iput-object p1, p0, Lmby;->c:Ldqx;

    iput-object p2, p0, Lmby;->b:Llwq;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Loku;

    new-instance p1, Lmby;

    iget-object v1, p0, Lmby;->c:Ldqx;

    iget-object v2, p0, Lmby;->b:Llwq;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lmby;-><init>(Ldqx;Llwq;Loku;[B[B)V

    sget-object v0, Lojk;->a:Lojk;

    invoke-virtual {p1, v0}, Lmby;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmby;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmby;->c:Ldqx;

    iget-object p1, p1, Ldqx;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmby;->b:Llwq;

    const/4 v2, 0x1

    iput v2, p0, Lmby;->a:I

    check-cast p1, Llyz;

    invoke-virtual {p1, v1, p0}, Llyz;->g(Llwq;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method