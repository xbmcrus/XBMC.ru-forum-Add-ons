.class Lcyk;
.super Lcys;


# instance fields
.field final synthetic b:Lcyl;


# direct methods
.method public constructor <init>(Lcyl;)V
    .locals 0

    iput-object p1, p0, Lcyk;->b:Lcyl;

    invoke-direct {p0}, Lcys;-><init>()V

    return-void
.end method


# virtual methods
.method public final bx()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcyk;->b:Lcyl;

    iput-object p0, v0, Lcyl;->h:Lcys;

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcyk;->b:Lcyl;

    iget-object v1, v0, Lcyl;->i:Ldfa;

    invoke-virtual {v1}, Ldfa;->h()V

    iget-object v1, v0, Lcyl;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->returnToVideoIntent()V

    iget-object v1, v0, Lcyl;->f:Liff;

    invoke-interface {v1}, Liff;->y()V

    iget-object v0, v0, Lcyl;->g:Lhwu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    invoke-static {}, Lipj;->d()V

    return-void
.end method
