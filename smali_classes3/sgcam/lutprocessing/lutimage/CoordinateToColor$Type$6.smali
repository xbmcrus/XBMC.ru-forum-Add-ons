.class enum Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$6;
.super Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;-><init>(Ljava/lang/String;ILsgcam/lutprocessing/lutimage/CoordinateToColor$Type;)V

    return-void
.end method


# virtual methods
.method getCoordinateToColor(Lsgcam/lutprocessing/lutimage/LUTImage;)Lsgcam/lutprocessing/lutimage/CoordinateToColor;
    .locals 1

    new-instance v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$RgbToZxy;

    invoke-direct {v0}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$RgbToZxy;-><init>()V

    return-object v0
.end method
