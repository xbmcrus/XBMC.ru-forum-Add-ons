.class public Lsgcam/lutprocessing/lutimage/LutAlignment$Square;
.super Ljava/lang/Object;

# interfaces
.implements Lsgcam/lutprocessing/lutimage/LutAlignment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsgcam/lutprocessing/lutimage/LutAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Square"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX(IIIII)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    mul-int v0, p5, p2

    add-int/2addr v0, p3

    return v0

    :cond_0
    rem-int/2addr p5, p1

    goto :goto_0
.end method

.method public getY(IIIII)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    mul-int/2addr v0, p2

    add-int/2addr v0, p4

    return v0

    :cond_0
    div-int v0, p5, p1

    goto :goto_0
.end method
