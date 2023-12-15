.class public Lsgcam/lutprocessing/lutimage/LutAlignment$Hald;
.super Ljava/lang/Object;

# interfaces
.implements Lsgcam/lutprocessing/lutimage/LutAlignment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsgcam/lutprocessing/lutimage/LutAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hald"
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

    rem-int v0, p4, p1

    mul-int/2addr v0, p2

    add-int/2addr v0, p3

    return v0
.end method

.method public getY(IIIII)I
    .locals 2

    div-int v0, p4, p1

    mul-int v1, p5, p1

    add-int/2addr v0, v1

    return v0
.end method
