.class public Lcom/softmoore/android/graphlib/Graph;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softmoore/android/graphlib/Graph$Builder;
    }
.end annotation


# instance fields
.field private final axesColor:I

.field private final axisX:D

.field private final axisY:D

.field private final bgColor:I

.field private final functions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/GraphFunction;",
            ">;"
        }
    .end annotation
.end field

.field private final graphPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/GraphPoints;",
            ">;"
        }
    .end annotation
.end field

.field private final lineGraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/GraphPoints;",
            ">;"
        }
    .end annotation
.end field

.field private final xLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final xMax:D

.field private final xMin:D

.field private final xTicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final yLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final yMax:D

.field private final yMin:D

.field private final yTicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/softmoore/android/graphlib/Graph$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$000(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->functions:Ljava/util/List;

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$100(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->graphPoints:Ljava/util/List;

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$200(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->lineGraphs:Ljava/util/List;

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$300(Lcom/softmoore/android/graphlib/Graph$Builder;)I

    move-result v0

    iput v0, p0, Lcom/softmoore/android/graphlib/Graph;->bgColor:I

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$400(Lcom/softmoore/android/graphlib/Graph$Builder;)I

    move-result v0

    iput v0, p0, Lcom/softmoore/android/graphlib/Graph;->axesColor:I

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$500(Lcom/softmoore/android/graphlib/Graph$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->xMin:D

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$600(Lcom/softmoore/android/graphlib/Graph$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->xMax:D

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$700(Lcom/softmoore/android/graphlib/Graph$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->yMin:D

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$800(Lcom/softmoore/android/graphlib/Graph$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->yMax:D

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$900(Lcom/softmoore/android/graphlib/Graph$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->axisX:D

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$1000(Lcom/softmoore/android/graphlib/Graph$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->axisY:D

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$1100(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->xTicks:Ljava/util/List;

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$1200(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->yTicks:Ljava/util/List;

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$1300(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->xLabels:Ljava/util/List;

    invoke-static {p1}, Lcom/softmoore/android/graphlib/Graph$Builder;->access$1400(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/softmoore/android/graphlib/Graph;->yLabels:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/softmoore/android/graphlib/Graph$Builder;Lcom/softmoore/android/graphlib/Graph$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/softmoore/android/graphlib/Graph;-><init>(Lcom/softmoore/android/graphlib/Graph$Builder;)V

    return-void
.end method


# virtual methods
.method public getAxesColor()I
    .locals 1

    iget v0, p0, Lcom/softmoore/android/graphlib/Graph;->axesColor:I

    return v0
.end method

.method public getAxisX()D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->axisX:D

    return-wide v0
.end method

.method public getAxisY()D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->axisY:D

    return-wide v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/softmoore/android/graphlib/Graph;->bgColor:I

    return v0
.end method

.method public getFunctions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/GraphFunction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->functions:Ljava/util/List;

    return-object v0
.end method

.method public getGraphPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/GraphPoints;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->graphPoints:Ljava/util/List;

    return-object v0
.end method

.method public getLineGraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/GraphPoints;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->lineGraphs:Ljava/util/List;

    return-object v0
.end method

.method public getXLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Label;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->xLabels:Ljava/util/List;

    return-object v0
.end method

.method public getXMax()D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->xMax:D

    return-wide v0
.end method

.method public getXMin()D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->xMin:D

    return-wide v0
.end method

.method public getXTicks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->xTicks:Ljava/util/List;

    return-object v0
.end method

.method public getYLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Label;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->yLabels:Ljava/util/List;

    return-object v0
.end method

.method public getYMax()D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->yMax:D

    return-wide v0
.end method

.method public getYMin()D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph;->yMin:D

    return-wide v0
.end method

.method public getYTicks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph;->yTicks:Ljava/util/List;

    return-object v0
.end method
