.class Liam;
.super Liad;


# instance fields
.field final synthetic b:Lian;


# direct methods
.method public constructor <init>(Lian;)V
    .locals 0

    iput-object p1, p0, Liam;->b:Lian;

    invoke-direct {p0}, Liad;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Liam;->b:Lian;

    iget-object v0, v0, Lian;->e:Liaq;

    invoke-interface {v0}, Liaq;->h()V

    iget-object v0, p0, Liam;->b:Lian;

    iget-object v0, v0, Lian;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Liam;->b:Lian;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lian;->i(Z)V

    return-void
.end method