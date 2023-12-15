.class final synthetic Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;

.field private final arg$2:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1$$Lambda$0;->arg$1:Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;

    iput-object p2, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1$$Lambda$0;->arg$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1$$Lambda$0;->arg$1:Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;

    iget-object p0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1$$Lambda$0;->arg$2:Landroid/view/View;

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v0, p0, p1}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;->lambda$onClick$0$AuxButtonsLayout$1(Landroid/view/View;Landroid/widget/Button;)V

    return-void
.end method
