.class public Lsgcam/lutprocessing/lutimage/CoordinateToColor$RgbToYxz;
.super Ljava/lang/Object;

# interfaces
.implements Lsgcam/lutprocessing/lutimage/CoordinateToColor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsgcam/lutprocessing/lutimage/CoordinateToColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RgbToYxz"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isGreenMappedToX()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGreenMappedToY()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGreenMappedToZ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRedMappedToX()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRedMappedToY()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRedMappedToZ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
