.class Lira;
.super Liqw;


# instance fields
.field final synthetic b:Lirc;


# direct methods
.method public constructor <init>(Lirc;)V
    .locals 0

    iput-object p1, p0, Lira;->b:Lirc;

    invoke-direct {p0}, Liqw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object p1, p0, Lira;->b:Lirc;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lirc;->n(ZZ)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object p1, p0, Lira;->b:Lirc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lirc;->n(ZZ)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lira;->b:Lirc;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lirc;->l(ZZ)V

    return-void
.end method

.method public cp(Z)V
    .locals 2

    iget-object v0, p0, Lira;->b:Lirc;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lirc;->l(ZZ)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 3

    sget-object v0, Lirc;->f:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Enter [Visible] state"

    const/16 v2, 0x113e

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Lira;->b:Lirc;

    iget-object v0, v0, Lirc;->n:Ligo;

    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lira;->b:Lirc;

    invoke-virtual {v0}, Lirc;->m()V

    return-void
.end method
