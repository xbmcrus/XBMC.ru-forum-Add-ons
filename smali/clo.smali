.class final Lclo;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lclq;


# direct methods
.method public constructor <init>(Lclq;)V
    .locals 0

    iput-object p1, p0, Lclo;->a:Lclq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lclo;->a:Lclq;

    invoke-static {p1}, Lclq;->a(Lclq;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lclo;->a:Lclq;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lclq;->setVisibility(I)V

    iget-object p1, p0, Lclo;->a:Lclq;

    iget-object p1, p1, Lclq;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lclo;->a:Lclq;

    iget-object p1, p1, Lclq;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method