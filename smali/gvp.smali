.class Lgvp;
.super Lgvl;


# instance fields
.field private a:Landroid/animation/Animator;

.field final synthetic b:Lgvs;


# direct methods
.method public constructor <init>(Lgvs;)V
    .locals 0

    iput-object p1, p0, Lgvp;->b:Lgvs;

    invoke-direct {p0}, Lgvl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lgvp;->b:Lgvs;

    invoke-virtual {v0}, Lgvs;->i()V

    iget-object v0, p0, Lgvp;->b:Lgvs;

    iget-object v0, v0, Lgvs;->b:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgvv;

    iget-object v1, p0, Lgvp;->b:Lgvs;

    invoke-virtual {v1}, Lgvs;->k()Z

    move-result v1

    invoke-interface {v0, v1}, Lgvv;->c(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lgvp;->a:Landroid/animation/Animator;

    new-instance v1, Lgvo;

    invoke-direct {v1, p0}, Lgvo;-><init>(Lgvp;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lgvp;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lgvp;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgvp;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lgvp;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lgvp;->b:Lgvs;

    invoke-virtual {v0}, Lgvs;->j()V

    return-void
.end method