.class public Lcom/longtab/custom/DeveloperSetting;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLongClickListener(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/longtab/custom/DeveloperSetting$1;

    invoke-direct {v0}, Lcom/longtab/custom/DeveloperSetting$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
