.class public final Lodf;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final i:Lodf;

.field private static volatile j:Lnyf;


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lobh;

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lodf;

    invoke-direct {v0}, Lodf;-><init>()V

    sput-object v0, Lodf;->i:Lodf;

    const-class v1, Lodf;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lodf;->c:Ljava/lang/String;

    iput-object v0, p0, Lodf;->d:Ljava/lang/String;

    iput-object v0, p0, Lodf;->e:Ljava/lang/String;

    iput-object v0, p0, Lodf;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    sget-object p1, Lodf;->j:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lodf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lodf;->j:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lodf;->i:Lodf;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lodf;->j:Lnyf;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_2
    sget-object p1, Lodf;->i:Lodf;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lodf;->i:Lodf;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lodf;

    invoke-direct {p1}, Lodf;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u0007\u0000\u0001\u0002\u0016\u0007\u0000\u0000\u0000\u0002\u1008\u0006\u0003\u1008\u0008\u0004\u1008\t\u0005\u1009\n\u0006\u1007\u0000\u000f\u1002\u0012\u0016\u1008\u0002"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "d"

    aput-object p1, v1, p2

    const/4 p1, 0x2

    const-string p2, "e"

    aput-object p2, v1, p1

    const/4 p1, 0x3

    const-string p2, "f"

    aput-object p2, v1, p1

    const/4 p1, 0x4

    const-string p2, "g"

    aput-object p2, v1, p1

    const/4 p1, 0x5

    const-string p2, "b"

    aput-object p2, v1, p1

    const/4 p1, 0x6

    const-string p2, "h"

    aput-object p2, v1, p1

    const/4 p1, 0x7

    const-string p2, "c"

    aput-object p2, v1, p1

    sget-object p1, Lodf;->i:Lodf;

    invoke-static {p1, v0, v1}, Lodf;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
