.class public final Lffz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffz;->a:Loiw;

    iput-object p2, p0, Lffz;->b:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;)Lffz;
    .locals 1

    new-instance v0, Lffz;

    invoke-direct {v0, p0, p1}, Lffz;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lffy;
    .locals 3

    iget-object v0, p0, Lffz;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgg;

    iget-object v1, p0, Lffz;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lffp;

    new-instance v2, Lffy;

    invoke-direct {v2, v0, v1}, Lffy;-><init>(Lfgg;Lffp;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lffz;->a()Lffy;

    move-result-object v0

    return-object v0
.end method