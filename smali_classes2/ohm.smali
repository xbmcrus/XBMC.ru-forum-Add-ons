.class public final Lohm;
.super Ljava/lang/Object;

# interfaces
.implements Lohl;


# static fields
.field public static final a:Llqb;

.field public static final b:Llqb;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Lmza;->a:Lmza;

    const-string v0, "com.google.android.libraries.performance.primes"

    const-string v1, "CLIENT_LOGGING_PROD"

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v7

    const-string v1, "45352228"

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, v0

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Lohm;->a:Llqb;

    :try_start_0
    const-string v1, "45352241"

    const-string v2, "CAYIBAgFCAM"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Loya;->b:Loya;

    array-length v4, v2

    sget-object v5, Lnwh;->a:Lnwh;

    const/4 v6, 0x0

    invoke-static {v3, v2, v6, v4, v5}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v2

    invoke-static {v2}, Lnws;->ae(Lnws;)V

    check-cast v2, Loya;

    sget-object v3, Llqd;->f:Llqd;

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v4, v0

    move-object v5, v7

    move v7, v8

    invoke-static/range {v1 .. v7}, Llqf;->d(Ljava/lang/String;Ljava/lang/Object;Llqe;Ljava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohm;->b:Llqb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Loya;
    .locals 1

    sget-object v0, Lohm;->b:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loya;

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lohm;->a:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
