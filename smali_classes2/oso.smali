.class public final Loso;
.super Lowp;


# instance fields
.field final synthetic a:Losp;


# direct methods
.method public constructor <init>(Lowr;Losp;)V
    .locals 0

    iput-object p2, p0, Loso;->a:Losp;

    invoke-direct {p0, p1}, Lowp;-><init>(Lowr;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lowr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Loso;->a:Losp;

    invoke-virtual {p1}, Losp;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lowo;->a:Ljava/lang/Object;

    return-object p1
.end method
