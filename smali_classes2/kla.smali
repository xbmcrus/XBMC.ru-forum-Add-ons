.class public final Lkla;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkla;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkkz;
    .locals 3

    iget-object v0, p0, Lkla;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoe;

    new-instance v1, Lkkz;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lkkz;-><init>(Lkoe;I)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkla;->a()Lkkz;

    move-result-object v0

    return-object v0
.end method
