.class public final Lhcw;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhcw;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ljew;
    .locals 2

    iget-object v0, p0, Lhcw;->a:Loiw;

    new-instance v1, Ljew;

    invoke-direct {v1, v0}, Ljew;-><init>(Loiw;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhcw;->a()Ljew;

    move-result-object v0

    return-object v0
.end method
