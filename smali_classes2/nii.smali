.class public final Lnii;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final j:Lnii;

.field private static volatile k:Lnyf;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:Lnwz;

.field public f:Lngw;

.field public g:J

.field public h:I

.field public i:Lnwy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnii;

    invoke-direct {v0}, Lnii;-><init>()V

    sput-object v0, Lnii;->j:Lnii;

    const-class v1, Lnii;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    sget-object v0, Lnxp;->b:Lnxp;

    iput-object v0, p0, Lnii;->e:Lnwz;

    sget-object v0, Lnwt;->b:Lnwt;

    iput-object v0, p0, Lnii;->i:Lnwy;

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
    sget-object p1, Lnii;->k:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lnii;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lnii;->k:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lnii;->j:Lnii;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lnii;->k:Lnyf;

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
    sget-object p1, Lnii;->j:Lnii;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lnii;->j:Lnii;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lnii;

    invoke-direct {p1}, Lnii;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u100c\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u0014\u0005\u1009\u0003\u0006\u1002\u0004\u0007\u100c\u0005\u0008\u001e"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "b"

    aput-object p1, v1, p2

    const/4 p1, 0x2

    sget-object p2, Lnia;->i:Lnww;

    aput-object p2, v1, p1

    const/4 p1, 0x3

    const-string p2, "c"

    aput-object p2, v1, p1

    const/4 p1, 0x4

    const-string p2, "d"

    aput-object p2, v1, p1

    const/4 p1, 0x5

    const-string p2, "e"

    aput-object p2, v1, p1

    const/4 p1, 0x6

    const-string p2, "f"

    aput-object p2, v1, p1

    const/4 p1, 0x7

    const-string p2, "g"

    aput-object p2, v1, p1

    const/16 p1, 0x8

    const-string p2, "h"

    aput-object p2, v1, p1

    const/16 p1, 0x9

    sget-object p2, Lnia;->g:Lnww;

    aput-object p2, v1, p1

    const/16 p1, 0xa

    const-string p2, "i"

    aput-object p2, v1, p1

    sget-object p1, Lnia;->h:Lnww;

    const/16 p2, 0xb

    aput-object p1, v1, p2

    sget-object p1, Lnii;->j:Lnii;

    invoke-static {p1, v0, v1}, Lnii;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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