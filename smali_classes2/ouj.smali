.class public final synthetic Louj;
.super Ljava/lang/Object;


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const v1, 0x7fffffff

    const-string v2, "kotlinx.coroutines.flow.defaultConcurrency"

    const/16 v3, 0x10

    invoke-static {v2, v3, v0, v1}, Lljz;->B(Ljava/lang/String;III)I

    move-result v0

    sput v0, Louj;->a:I

    return-void
.end method
