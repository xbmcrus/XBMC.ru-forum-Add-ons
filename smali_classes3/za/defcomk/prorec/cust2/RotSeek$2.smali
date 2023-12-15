.class Lza/defcomk/prorec/cust2/RotSeek$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/defcomk/prorec/cust2/RotSeek;->checkifCurrentValueHasChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lza/defcomk/prorec/cust2/RotSeek;


# direct methods
.method constructor <init>(Lza/defcomk/prorec/cust2/RotSeek;)V
    .locals 0

    iput-object p1, p0, Lza/defcomk/prorec/cust2/RotSeek$2;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lza/defcomk/prorec/cust2/RotSeek$2;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v0}, Lza/defcomk/prorec/cust2/RotSeek;->access$1100(Lza/defcomk/prorec/cust2/RotSeek;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lza/defcomk/prorec/cust2/RotSeek$2;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v2}, Lza/defcomk/prorec/cust2/RotSeek;->access$700(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method
