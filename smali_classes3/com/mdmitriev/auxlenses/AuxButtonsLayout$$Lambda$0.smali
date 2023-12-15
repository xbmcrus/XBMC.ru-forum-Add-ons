.class final synthetic Lcom/mdmitriev/auxlenses/AuxButtonsLayout$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;


# direct methods
.method constructor <init>(Lcom/mdmitriev/auxlenses/AuxButtonsLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$$Lambda$0;->arg$1:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$$Lambda$0;->arg$1:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->lambda$initButtons$0$AuxButtonsLayout(Landroid/widget/Button;)V

    return-void
.end method
