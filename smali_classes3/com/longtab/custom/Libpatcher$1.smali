.class final Lcom/longtab/custom/Libpatcher$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/longtab/custom/Libpatcher;->setLongClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const-string v2, "pref_screen_additional_lens_module_key"

    const-string v3, "pref_screen_extra"

    invoke-static {v2, v3}, Lsgcam/Shamim;->GetStringOpenPreference(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method
