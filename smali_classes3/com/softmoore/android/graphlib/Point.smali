.class public Lcom/softmoore/android/graphlib/Point;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/softmoore/android/graphlib/Point;",
        ">;"
    }
.end annotation


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/softmoore/android/graphlib/Point;->x:D

    iput-wide p3, p0, Lcom/softmoore/android/graphlib/Point;->y:D

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/softmoore/android/graphlib/Point;)I
    .locals 4

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Point;->x:D

    iget-wide v2, p1, Lcom/softmoore/android/graphlib/Point;->x:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/softmoore/android/graphlib/Point;

    invoke-virtual {p0, p1}, Lcom/softmoore/android/graphlib/Point;->compareTo(Lcom/softmoore/android/graphlib/Point;)I

    move-result p1

    return p1
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Point;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Point;->y:D

    return-wide v0
.end method
