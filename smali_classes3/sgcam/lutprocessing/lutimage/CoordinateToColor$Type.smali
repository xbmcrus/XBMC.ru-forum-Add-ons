.class public abstract enum Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsgcam/lutprocessing/lutimage/CoordinateToColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

.field public static final enum GUESS_AXES:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

.field public static final enum RGB_TO_XYZ:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

.field public static final enum RGB_TO_XZY:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

.field public static final enum RGB_TO_YXZ:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

.field public static final enum RGB_TO_YZX:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

.field public static final enum RGB_TO_ZXY:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

.field public static final enum RGB_TO_ZYX:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$1;

    const-string v1, "GUESS_AXES"

    invoke-direct {v0, v1, v3}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->GUESS_AXES:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    new-instance v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$2;

    const-string v1, "RGB_TO_XYZ"

    invoke-direct {v0, v1, v4}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_XYZ:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    new-instance v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$3;

    const-string v1, "RGB_TO_XZY"

    invoke-direct {v0, v1, v5}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_XZY:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    new-instance v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$4;

    const-string v1, "RGB_TO_YZX"

    invoke-direct {v0, v1, v6}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_YZX:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    new-instance v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$5;

    const-string v1, "RGB_TO_YXZ"

    invoke-direct {v0, v1, v7}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_YXZ:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    new-instance v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$6;

    const-string v1, "RGB_TO_ZXY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_ZXY:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    new-instance v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$7;

    const-string v1, "RGB_TO_ZYX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_ZYX:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    const/4 v0, 0x7

    new-array v0, v0, [Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    sget-object v1, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->GUESS_AXES:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    aput-object v1, v0, v3

    sget-object v1, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_XYZ:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    aput-object v1, v0, v4

    sget-object v1, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_XZY:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    aput-object v1, v0, v5

    sget-object v1, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_YZX:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    aput-object v1, v0, v6

    sget-object v1, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_YXZ:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_ZXY:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->RGB_TO_ZYX:Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    aput-object v2, v0, v1

    sput-object v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->ENUM$VALUES:[Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILsgcam/lutprocessing/lutimage/CoordinateToColor$Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;
    .locals 1

    const-class v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    return-object v0
.end method

.method public static values()[Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->ENUM$VALUES:[Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    array-length v1, v0

    new-array v2, v1, [Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method abstract getCoordinateToColor(Lsgcam/lutprocessing/lutimage/LUTImage;)Lsgcam/lutprocessing/lutimage/CoordinateToColor;
.end method
