.class public final Ltr;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$result$1"
    c = "RetryingCameraStateOpener.kt"
    d = "invokeSuspend"
    e = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Loku;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljo;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Ltr;

    invoke-virtual {p1, p2}, Ltr;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Ltr;->a:Ljava/lang/Object;

    check-cast p1, Ljo;

    instance-of p1, p1, Lts;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 1

    new-instance v0, Ltr;

    invoke-direct {v0, p2}, Ltr;-><init>(Loku;)V

    iput-object p1, v0, Ltr;->a:Ljava/lang/Object;

    return-object v0
.end method