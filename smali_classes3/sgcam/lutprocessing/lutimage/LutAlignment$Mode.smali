.class public abstract enum Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsgcam/lutprocessing/lutimage/LutAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

.field public static final enum HALD:Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

.field public static final enum SQUARE:Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode$1;

    const-string v1, "SQUARE"

    invoke-direct {v0, v1, v2}, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;->SQUARE:Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

    new-instance v0, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode$2;

    const-string v1, "HALD"

    invoke-direct {v0, v1, v3}, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;->HALD:Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

    const/4 v0, 0x2

    new-array v0, v0, [Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

    sget-object v1, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;->SQUARE:Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;->HALD:Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;->ENUM$VALUES:[Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILsgcam/lutprocessing/lutimage/LutAlignment$Mode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;
    .locals 1

    const-class v0, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

    return-object v0
.end method

.method public static values()[Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;->ENUM$VALUES:[Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

    array-length v1, v0

    new-array v2, v1, [Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method abstract getLutAlignment()Lsgcam/lutprocessing/lutimage/LutAlignment;
.end method
