.class public Lcom/softmoore/android/graphlib/Graph$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softmoore/android/graphlib/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private axesColor:I

.field private axisX:D

.field private axisY:D

.field private bgColor:I

.field defaultTicks:[Ljava/lang/Double;

.field private functColor:I

.field private functions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/GraphFunction;",
            ">;"
        }
    .end annotation
.end field

.field private graphPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/GraphPoints;",
            ">;"
        }
    .end annotation
.end field

.field private lineGraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/GraphPoints;",
            ">;"
        }
    .end annotation
.end field

.field private pointColor:I

.field private xLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Label;",
            ">;"
        }
    .end annotation
.end field

.field private xMax:D

.field private xMin:D

.field private xTicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private yLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Label;",
            ">;"
        }
    .end annotation
.end field

.field private yMax:D

.field private yMin:D

.field private yTicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->functions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->graphPoints:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->lineGraphs:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->bgColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->axesColor:I

    iput v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->functColor:I

    iput v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->pointColor:I

    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    iput-wide v2, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xMin:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    iput-wide v4, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xMax:D

    iput-wide v2, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yMin:D

    iput-wide v4, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yMax:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->axisX:D

    iput-wide v2, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->axisY:D

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Double;

    const-wide/high16 v2, -0x3fe0000000000000L    # -8.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-wide/high16 v2, -0x3ff0000000000000L    # -4.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-wide/high16 v1, 0x4020000000000000L    # 8.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->defaultTicks:[Ljava/lang/Double;

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->defaultTicks:[Ljava/lang/Double;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xTicks:Ljava/util/List;

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->defaultTicks:[Ljava/lang/Double;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yTicks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xLabels:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yLabels:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->functions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->graphPoints:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/softmoore/android/graphlib/Graph$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->axisY:D

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xTicks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yTicks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xLabels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yLabels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/softmoore/android/graphlib/Graph$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->lineGraphs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/softmoore/android/graphlib/Graph$Builder;)I
    .locals 0

    iget p0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->bgColor:I

    return p0
.end method

.method static synthetic access$400(Lcom/softmoore/android/graphlib/Graph$Builder;)I
    .locals 0

    iget p0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->axesColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/softmoore/android/graphlib/Graph$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xMin:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/softmoore/android/graphlib/Graph$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xMax:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/softmoore/android/graphlib/Graph$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yMin:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/softmoore/android/graphlib/Graph$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yMax:D

    return-wide v0
.end method

.method static synthetic access$900(Lcom/softmoore/android/graphlib/Graph$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->axisX:D

    return-wide v0
.end method


# virtual methods
.method public addFunction(Lcom/softmoore/android/graphlib/Function;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 3

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->functions:Ljava/util/List;

    new-instance v1, Lcom/softmoore/android/graphlib/GraphFunction;

    iget v2, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->functColor:I

    invoke-direct {v1, p1, v2}, Lcom/softmoore/android/graphlib/GraphFunction;-><init>(Lcom/softmoore/android/graphlib/Function;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFunction(Lcom/softmoore/android/graphlib/Function;I)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 2

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->functions:Ljava/util/List;

    new-instance v1, Lcom/softmoore/android/graphlib/GraphFunction;

    invoke-direct {v1, p1, p2}, Lcom/softmoore/android/graphlib/GraphFunction;-><init>(Lcom/softmoore/android/graphlib/Function;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addLineGraph(Ljava/util/List;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Point;",
            ">;)",
            "Lcom/softmoore/android/graphlib/Graph$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->lineGraphs:Ljava/util/List;

    new-instance v1, Lcom/softmoore/android/graphlib/GraphPoints;

    iget v2, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->pointColor:I

    invoke-direct {v1, p1, v2}, Lcom/softmoore/android/graphlib/GraphPoints;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addLineGraph(Ljava/util/List;I)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Point;",
            ">;I)",
            "Lcom/softmoore/android/graphlib/Graph$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->lineGraphs:Ljava/util/List;

    new-instance v1, Lcom/softmoore/android/graphlib/GraphPoints;

    invoke-direct {v1, p1, p2}, Lcom/softmoore/android/graphlib/GraphPoints;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addLineGraph([Lcom/softmoore/android/graphlib/Point;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 3

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->lineGraphs:Ljava/util/List;

    new-instance v1, Lcom/softmoore/android/graphlib/GraphPoints;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->pointColor:I

    invoke-direct {v1, p1, v2}, Lcom/softmoore/android/graphlib/GraphPoints;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addLineGraph([Lcom/softmoore/android/graphlib/Point;I)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 2

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->lineGraphs:Ljava/util/List;

    new-instance v1, Lcom/softmoore/android/graphlib/GraphPoints;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/softmoore/android/graphlib/GraphPoints;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPoints(Ljava/util/List;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Point;",
            ">;)",
            "Lcom/softmoore/android/graphlib/Graph$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->graphPoints:Ljava/util/List;

    new-instance v1, Lcom/softmoore/android/graphlib/GraphPoints;

    iget v2, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->pointColor:I

    invoke-direct {v1, p1, v2}, Lcom/softmoore/android/graphlib/GraphPoints;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPoints(Ljava/util/List;I)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Point;",
            ">;I)",
            "Lcom/softmoore/android/graphlib/Graph$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->graphPoints:Ljava/util/List;

    new-instance v1, Lcom/softmoore/android/graphlib/GraphPoints;

    invoke-direct {v1, p1, p2}, Lcom/softmoore/android/graphlib/GraphPoints;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPoints([Lcom/softmoore/android/graphlib/Point;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 3

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->graphPoints:Ljava/util/List;

    new-instance v1, Lcom/softmoore/android/graphlib/GraphPoints;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->pointColor:I

    invoke-direct {v1, p1, v2}, Lcom/softmoore/android/graphlib/GraphPoints;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPoints([Lcom/softmoore/android/graphlib/Point;I)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 2

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->graphPoints:Ljava/util/List;

    new-instance v1, Lcom/softmoore/android/graphlib/GraphPoints;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/softmoore/android/graphlib/GraphPoints;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/softmoore/android/graphlib/Graph;
    .locals 2

    new-instance v0, Lcom/softmoore/android/graphlib/Graph;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/softmoore/android/graphlib/Graph;-><init>(Lcom/softmoore/android/graphlib/Graph$Builder;Lcom/softmoore/android/graphlib/Graph$1;)V

    return-object v0
.end method

.method public setAxes(DD)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->axisX:D

    iput-wide p3, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->axisY:D

    return-object p0
.end method

.method public setAxesColor(I)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0

    iput p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->axesColor:I

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0

    iput p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->bgColor:I

    return-object p0
.end method

.method public setFunctionColor(I)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0

    iput p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->functColor:I

    return-object p0
.end method

.method public setPointColor(I)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0

    iput p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->pointColor:I

    return-object p0
.end method

.method public setWorldCoordinates(DDDD)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xMin:D

    iput-wide p3, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xMax:D

    iput-wide p5, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yMin:D

    iput-wide p7, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yMax:D

    return-object p0
.end method

.method public setXLabels(Ljava/util/List;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Label;",
            ">;)",
            "Lcom/softmoore/android/graphlib/Graph$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xLabels:Ljava/util/List;

    return-object p0
.end method

.method public setXLabels([Lcom/softmoore/android/graphlib/Label;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xLabels:Ljava/util/List;

    return-object p0
.end method

.method public setXTicks(Ljava/util/List;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/softmoore/android/graphlib/Graph$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xTicks:Ljava/util/List;

    return-object p0
.end method

.method public setXTicks([D)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->xTicks:Ljava/util/List;

    return-object p0
.end method

.method public setYLabels(Ljava/util/List;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Label;",
            ">;)",
            "Lcom/softmoore/android/graphlib/Graph$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yLabels:Ljava/util/List;

    return-object p0
.end method

.method public setYLabels([Lcom/softmoore/android/graphlib/Label;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yLabels:Ljava/util/List;

    return-object p0
.end method

.method public setYTicks(Ljava/util/List;)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/softmoore/android/graphlib/Graph$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yTicks:Ljava/util/List;

    return-object p0
.end method

.method public setYTicks([D)Lcom/softmoore/android/graphlib/Graph$Builder;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/softmoore/android/graphlib/Graph$Builder;->yTicks:Ljava/util/List;

    return-object p0
.end method
