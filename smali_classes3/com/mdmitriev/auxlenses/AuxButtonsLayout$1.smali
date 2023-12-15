.class Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->lambda$initButtons$0$AuxButtonsLayout(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;


# direct methods
.method constructor <init>(Lcom/mdmitriev/auxlenses/AuxButtonsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;->this$0:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onRestart()V
    .locals 4

    sget v0, Lsgcam/Shamim;->HdrProcessing:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Lsgcam/Shamim;->GetEachModeIndividually(Landroid/content/Intent;)V

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    const-string v1, "HDR is processing. Try again shortly."

    invoke-static {v1}, Lsgcam/Shamim;->ShowToastDirect(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onClick$0$AuxButtonsLayout$1(Landroid/view/View;Landroid/widget/Button;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;->this$0:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->activateButton(I)V

    invoke-static {}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;->onRestart()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;->this$0:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;

    iget-object v0, v0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttons:Ljava/util/List;

    new-instance v1, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1$$Lambda$0;

    invoke-direct {v1, p0, p1}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1$$Lambda$0;-><init>(Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
