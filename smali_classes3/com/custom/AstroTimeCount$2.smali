.class Lcom/custom/AstroTimeCount$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/custom/AstroTimeCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/custom/AstroTimeCount;


# direct methods
.method constructor <init>(Lcom/custom/AstroTimeCount;)V
    .locals 0

    iput-object p1, p0, Lcom/custom/AstroTimeCount$2;->this$1:Lcom/custom/AstroTimeCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    sget v0, Lsgcam/Shamim;->NonRestartVfB:I

    if-eqz v0, :cond_0

    invoke-static {}, Lsgcam/Shamim;->onRestart()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->ReInit()V

    :goto_0
    return-void
.end method
