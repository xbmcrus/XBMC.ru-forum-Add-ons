.class final Lhvj;
.super Lhvv;


# instance fields
.field final synthetic a:Lhvz;


# direct methods
.method public constructor <init>(Lhvz;)V
    .locals 0

    iput-object p1, p0, Lhvj;->a:Lhvz;

    invoke-direct {p0, p1}, Lhvv;-><init>(Lhvz;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhvj;->a:Lhvz;

    iget-object v0, v0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhvv;->a()V

    iget-object v0, p0, Lhvj;->a:Lhvz;

    iget-object v1, v0, Lhvz;->e:Lhiu;

    iget-object v0, v0, Lhvz;->i:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lhvj;->a:Lhvz;

    iget-object v0, v0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhvv;->b()V

    iget-object v0, p0, Lhvj;->a:Lhvz;

    iget-object v1, v0, Lhvz;->e:Lhiu;

    iget-object v0, v0, Lhvz;->g:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
