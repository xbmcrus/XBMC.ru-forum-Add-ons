.class Lcom/softmoore/android/graphlib/GraphPoints;
.super Ljava/lang/Object;


# instance fields
.field private color:I

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Point;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/softmoore/android/graphlib/GraphPoints;->points:Ljava/util/List;

    iput p2, p0, Lcom/softmoore/android/graphlib/GraphPoints;->color:I

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method getColor()I
    .locals 1

    iget v0, p0, Lcom/softmoore/android/graphlib/GraphPoints;->color:I

    return v0
.end method

.method getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/Point;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphPoints;->points:Ljava/util/List;

    return-object v0
.end method
