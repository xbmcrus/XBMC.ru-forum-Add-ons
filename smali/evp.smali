.class public final Levp;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levp;->a:Loiw;

    iput-object p2, p0, Levp;->b:Loiw;

    iput-object p3, p0, Levp;->c:Loiw;

    iput-object p4, p0, Levp;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgkr;
    .locals 5

    iget-object v0, p0, Levp;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuj;

    iget-object v1, p0, Levp;->b:Loiw;

    check-cast v1, Logl;

    iget-object v1, v1, Logl;->a:Ljava/lang/Object;

    check-cast v1, Levo;

    iget-object v2, p0, Levp;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkbc;

    iget-object v3, p0, Levp;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfme;

    new-instance v4, Lgkr;

    invoke-direct {v4, v0, v1, v2, v3}, Lgkr;-><init>(Lfuj;Levo;Lkbc;Lfme;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Levp;->a()Lgkr;

    move-result-object v0

    return-object v0
.end method