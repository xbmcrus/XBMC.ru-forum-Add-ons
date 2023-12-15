.class enum Lsgcam/lutprocessing/lutimage/LutAlignment$Mode$2;
.super Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;-><init>(Ljava/lang/String;ILsgcam/lutprocessing/lutimage/LutAlignment$Mode;)V

    return-void
.end method


# virtual methods
.method getLutAlignment()Lsgcam/lutprocessing/lutimage/LutAlignment;
    .locals 1

    new-instance v0, Lsgcam/lutprocessing/lutimage/LutAlignment$Hald;

    invoke-direct {v0}, Lsgcam/lutprocessing/lutimage/LutAlignment$Hald;-><init>()V

    return-object v0
.end method
