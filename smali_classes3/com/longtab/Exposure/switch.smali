.class public Lcom/longtab/Exposure/switch;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLongClickListener(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/longtab/Exposure/switch$1;

    invoke-direct {v0, p1}, Lcom/longtab/Exposure/switch$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
