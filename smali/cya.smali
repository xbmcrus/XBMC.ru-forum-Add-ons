.class Lcya;
.super Lcys;


# instance fields
.field final synthetic b:Lcyd;


# direct methods
.method public constructor <init>(Lcyd;)V
    .locals 0

    iput-object p1, p0, Lcya;->b:Lcyd;

    invoke-direct {p0}, Lcys;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcya;->b:Lcyd;

    iget-object v0, v0, Lcyd;->k:Ldfa;

    invoke-virtual {v0}, Ldfa;->e()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcya;->b:Lcyd;

    invoke-virtual {v0}, Lcyd;->k()V

    return-void
.end method

.method public final bx()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcya;->b:Lcyd;

    iput-object p0, v0, Lcyd;->j:Lcys;

    return-void
.end method
