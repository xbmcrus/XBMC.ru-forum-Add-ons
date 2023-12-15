.class Lza/defcomk/prorec/cust2/RotSeek$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/defcomk/prorec/cust2/RotSeek;->handleAutoScroll()V
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

    iput-object p1, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$000(Lza/defcomk/prorec/cust2/RotSeek;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$100(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    iget-object v4, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$200(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x1

    mul-int/lit8 v1, v0, -0x1

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$300(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    if-gt v1, v3, :cond_4

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$400(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    if-lt v1, v3, :cond_4

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scroll pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v5}, Lza/defcomk/prorec/cust2/RotSeek;->access$300(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v5}, Lza/defcomk/prorec/cust2/RotSeek;->access$400(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$500(Lza/defcomk/prorec/cust2/RotSeek;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$200(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$200(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-gez v3, :cond_2

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    iget-object v4, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$200(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$202(Lza/defcomk/prorec/cust2/RotSeek;I)I

    const/4 v2, 0x1

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    iget-object v4, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$100(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v4

    iget-object v5, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v5}, Lza/defcomk/prorec/cust2/RotSeek;->access$200(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$102(Lza/defcomk/prorec/cust2/RotSeek;I)I

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$600(Lza/defcomk/prorec/cust2/RotSeek;)V

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$800(Lza/defcomk/prorec/cust2/RotSeek;)V

    :cond_1
    :goto_2
    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$1000(Lza/defcomk/prorec/cust2/RotSeek;)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$200(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$200(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_3

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    iget-object v4, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$200(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$202(Lza/defcomk/prorec/cust2/RotSeek;I)I

    const/4 v2, 0x1

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    iget-object v4, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$100(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v4

    iget-object v5, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v5}, Lza/defcomk/prorec/cust2/RotSeek;->access$200(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$102(Lza/defcomk/prorec/cust2/RotSeek;I)I

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$600(Lza/defcomk/prorec/cust2/RotSeek;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$600(Lza/defcomk/prorec/cust2/RotSeek;)V

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3, v6}, Lza/defcomk/prorec/cust2/RotSeek;->access$202(Lza/defcomk/prorec/cust2/RotSeek;I)I

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    iget-object v4, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$700(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v4

    invoke-virtual {v3, v4, v7}, Lza/defcomk/prorec/cust2/RotSeek;->setProgress(IZ)V

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3, v6}, Lza/defcomk/prorec/cust2/RotSeek;->access$002(Lza/defcomk/prorec/cust2/RotSeek;Z)Z

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3, v6}, Lza/defcomk/prorec/cust2/RotSeek;->access$202(Lza/defcomk/prorec/cust2/RotSeek;I)I

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$300(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    if-le v1, v3, :cond_5

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    iget-object v4, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$900(Lza/defcomk/prorec/cust2/RotSeek;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v7}, Lza/defcomk/prorec/cust2/RotSeek;->setProgress(IZ)V

    :goto_3
    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scroll pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v5}, Lza/defcomk/prorec/cust2/RotSeek;->access$300(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v5}, Lza/defcomk/prorec/cust2/RotSeek;->access$400(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$500(Lza/defcomk/prorec/cust2/RotSeek;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$400(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-virtual {v3, v6, v7}, Lza/defcomk/prorec/cust2/RotSeek;->setProgress(IZ)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$600(Lza/defcomk/prorec/cust2/RotSeek;)V

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$700(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    iget-object v4, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$900(Lza/defcomk/prorec/cust2/RotSeek;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_7

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    iget-object v4, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$900(Lza/defcomk/prorec/cust2/RotSeek;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$702(Lza/defcomk/prorec/cust2/RotSeek;I)I

    :cond_7
    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3}, Lza/defcomk/prorec/cust2/RotSeek;->access$700(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v3

    if-gez v3, :cond_8

    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v3, v6}, Lza/defcomk/prorec/cust2/RotSeek;->access$702(Lza/defcomk/prorec/cust2/RotSeek;I)I

    :cond_8
    iget-object v3, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    iget-object v4, p0, Lza/defcomk/prorec/cust2/RotSeek$1;->this$0:Lza/defcomk/prorec/cust2/RotSeek;

    invoke-static {v4}, Lza/defcomk/prorec/cust2/RotSeek;->access$700(Lza/defcomk/prorec/cust2/RotSeek;)I

    move-result v4

    invoke-virtual {v3, v4, v7}, Lza/defcomk/prorec/cust2/RotSeek;->setProgress(IZ)V

    goto/16 :goto_3
.end method
