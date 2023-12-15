.class Lcom/custom/AstroTimeCount$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/custom/AstroTimeCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/custom/AstroTimeCount;


# direct methods
.method constructor <init>(Lcom/custom/AstroTimeCount;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/custom/AstroTimeCount$1;->this$0:Lcom/custom/AstroTimeCount;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    sget v0, Lcom/custom/AstroTimeCount;->SelStateIndex:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0x4

    rem-int v0, v0, v1

    sput v0, Lcom/custom/AstroTimeCount;->SelStateIndex:I

    invoke-static {}, Lcom/custom/AstroTimeCount;->getSelStateValue()V

    sget v0, Lcom/custom/AstroTimeCount;->SelStateValue:I

    sget-object v1, Lcom/custom/AstroTimeCount;->prefString:Ljava/lang/String;

    iget-object p1, p0, Lcom/custom/AstroTimeCount$1;->this$0:Lcom/custom/AstroTimeCount;

    invoke-virtual {p1, v1, v0}, Lcom/custom/AstroTimeCount;->setInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/custom/AstroTimeCount;->UpdateUi(Landroid/content/Context;)V

    return-void
.end method
