.class public final Lmpm;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final a:Lmpm;

.field private static volatile b:Lnyf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmpm;

    invoke-direct {v0}, Lmpm;-><init>()V

    sput-object v0, Lmpm;->a:Lmpm;

    const-class v1, Lmpm;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnws;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    :pswitch_1
    sget-object p1, Lmpm;->b:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lmpm;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lmpm;->b:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lmpm;->a:Lmpm;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lmpm;->b:Lnyf;

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
    sget-object p1, Lmpm;->a:Lmpm;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lmpm;->a:Lmpm;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lmpm;

    invoke-direct {p1}, Lmpm;-><init>()V

    return-object p1

    :pswitch_5
    sget-object p1, Lmpm;->a:Lmpm;

    const-string v0, "\u0000\u0000"

    invoke-static {p1, v0, p2}, Lmpm;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

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