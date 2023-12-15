.class public interface abstract Lsgcam/lutprocessing/lutimage/LutAlignment;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsgcam/lutprocessing/lutimage/LutAlignment$Hald;,
        Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;,
        Lsgcam/lutprocessing/lutimage/LutAlignment$Square;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsgcam/lutprocessing/lutimage/LutAlignment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/lutprocessing/lutimage/LutAlignment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getX(IIIII)I
.end method

.method public abstract getY(IIIII)I
.end method
