.class public final Lcmm;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmm;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ljpl;
    .locals 1

    iget-object v0, p0, Lcmm;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljpj;->a(Landroid/content/Context;)Ljpl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcmm;->a()Ljpl;

    move-result-object v0

    return-object v0
.end method
