.class final Lcom/longtab/Awb/switch$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/longtab/Awb/switch;->setLongClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final this$0:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/longtab/Awb/switch$1;->this$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    iget-object v1, p0, Lcom/longtab/Awb/switch$1;->this$0:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lsgcam/Shamim;->Front:I

    if-eqz v4, :cond_0

    const-string v5, "Front cam video resolution"

    const-string v3, "pref_video_resolation_key_1"

    goto :goto_0

    :cond_0
    const-string v5, "Back cam video resolution"

    const-string v3, "pref_video_resolation_key_0"

    :goto_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v3}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/longtab/Awb/switch$2;

    invoke-direct {v3, v1}, Lcom/longtab/Awb/switch$2;-><init>(Landroid/content/Context;)V

    const-string v4, "pref_slowmofps1_entries"

    const v6, 0x2

    invoke-static {v4, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v4, 0x1

    return v4
.end method
