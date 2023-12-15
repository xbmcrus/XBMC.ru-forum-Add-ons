.class final enum Lsgcam/classinfo/ClassMember;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsgcam/classinfo/ClassMember;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lsgcam/classinfo/ClassMember;

.field public static final enum CLASS:Lsgcam/classinfo/ClassMember;

.field public static final enum CONSTRUCTOR:Lsgcam/classinfo/ClassMember;

.field private static final synthetic ENUM$VALUES:[Lsgcam/classinfo/ClassMember;

.field public static final enum FIELD:Lsgcam/classinfo/ClassMember;

.field public static final enum METHOD:Lsgcam/classinfo/ClassMember;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lsgcam/classinfo/ClassMember;

    const-string v1, "CONSTRUCTOR"

    invoke-direct {v0, v1, v2}, Lsgcam/classinfo/ClassMember;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/classinfo/ClassMember;->CONSTRUCTOR:Lsgcam/classinfo/ClassMember;

    new-instance v0, Lsgcam/classinfo/ClassMember;

    const-string v1, "FIELD"

    invoke-direct {v0, v1, v3}, Lsgcam/classinfo/ClassMember;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/classinfo/ClassMember;->FIELD:Lsgcam/classinfo/ClassMember;

    new-instance v0, Lsgcam/classinfo/ClassMember;

    const-string v1, "METHOD"

    invoke-direct {v0, v1, v4}, Lsgcam/classinfo/ClassMember;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/classinfo/ClassMember;->METHOD:Lsgcam/classinfo/ClassMember;

    new-instance v0, Lsgcam/classinfo/ClassMember;

    const-string v1, "CLASS"

    invoke-direct {v0, v1, v5}, Lsgcam/classinfo/ClassMember;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/classinfo/ClassMember;->CLASS:Lsgcam/classinfo/ClassMember;

    new-instance v0, Lsgcam/classinfo/ClassMember;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v6}, Lsgcam/classinfo/ClassMember;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsgcam/classinfo/ClassMember;->ALL:Lsgcam/classinfo/ClassMember;

    const/4 v0, 0x5

    new-array v0, v0, [Lsgcam/classinfo/ClassMember;

    sget-object v1, Lsgcam/classinfo/ClassMember;->CONSTRUCTOR:Lsgcam/classinfo/ClassMember;

    aput-object v1, v0, v2

    sget-object v1, Lsgcam/classinfo/ClassMember;->FIELD:Lsgcam/classinfo/ClassMember;

    aput-object v1, v0, v3

    sget-object v1, Lsgcam/classinfo/ClassMember;->METHOD:Lsgcam/classinfo/ClassMember;

    aput-object v1, v0, v4

    sget-object v1, Lsgcam/classinfo/ClassMember;->CLASS:Lsgcam/classinfo/ClassMember;

    aput-object v1, v0, v5

    sget-object v1, Lsgcam/classinfo/ClassMember;->ALL:Lsgcam/classinfo/ClassMember;

    aput-object v1, v0, v6

    sput-object v0, Lsgcam/classinfo/ClassMember;->ENUM$VALUES:[Lsgcam/classinfo/ClassMember;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsgcam/classinfo/ClassMember;
    .locals 1

    const-class v0, Lsgcam/classinfo/ClassMember;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsgcam/classinfo/ClassMember;

    return-object v0
.end method

.method public static values()[Lsgcam/classinfo/ClassMember;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lsgcam/classinfo/ClassMember;->ENUM$VALUES:[Lsgcam/classinfo/ClassMember;

    array-length v1, v0

    new-array v2, v1, [Lsgcam/classinfo/ClassMember;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
