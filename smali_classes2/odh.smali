.class public final Lodh;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final e:Lodh;

.field private static volatile i:Lnyf;


# instance fields
.field public a:Lobz;

.field public b:F

.field public c:Lodi;

.field public d:Locj;

.field private f:I

.field private g:Locj;

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lodh;

    invoke-direct {v0}, Lodh;-><init>()V

    sput-object v0, Lodh;->e:Lodh;

    const-class v1, Lodh;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lodh;->h:B

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    sget-object p1, Lodh;->i:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lodh;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lodh;->i:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lodh;->e:Lodh;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lodh;->i:Lnyf;

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
    sget-object p1, Lodh;->e:Lodh;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lodh;->e:Lodh;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lodh;

    invoke-direct {p1}, Lodh;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "f"

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0007\u0005\u0000\u0000\u0002\u0001\u1009\u0000\u0002\u1001\u0001\u0004\u1009\u0002\u0006\u1409\u0004\u0007\u1409\u0005"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "a"

    aput-object p1, v2, v0

    const/4 p1, 0x2

    const-string v0, "b"

    aput-object v0, v2, p1

    const/4 p1, 0x3

    const-string v0, "c"

    aput-object v0, v2, p1

    const/4 p1, 0x4

    const-string v0, "d"

    aput-object v0, v2, p1

    const/4 p1, 0x5

    const-string v0, "g"

    aput-object v0, v2, p1

    sget-object p1, Lodh;->e:Lodh;

    invoke-static {p1, p2, v2}, Lodh;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Lodh;->h:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iput-byte v0, p0, Lodh;->h:B

    const/4 p1, 0x0

    return-object p1

    nop

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
