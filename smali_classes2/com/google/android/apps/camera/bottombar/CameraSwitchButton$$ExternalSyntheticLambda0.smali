.class public final synthetic Lcom/google/android/apps/camera/bottombar/CameraSwitchButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public synthetic f$0:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "pref_disable_front_lib_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_front_active_values_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v0, "pref_front_active_values_key"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_disable_front_lib_key"

    invoke-static {v1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const-string v0, "pref_front_active_values_key"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_disable_front_lib_key"

    invoke-static {v1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    const-string v0, "pref_frontcam_value_restart_key"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    const-string v0, "pref_frontcam_value_restart_key"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v1, "pref_disable_front_lib_key"

    invoke-static {v1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->lambda$initialize$0$com-google-android-apps-camera-bottombar-CameraSwitchButton(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lsgcam/Shamim;->GetRestartMethodFront()V

    :goto_2
    return-void
.end method
