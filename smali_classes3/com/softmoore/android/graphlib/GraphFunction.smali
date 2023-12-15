.class Lcom/softmoore/android/graphlib/GraphFunction;
.super Ljava/lang/Object;


# instance fields
.field private color:I

.field private f:Lcom/softmoore/android/graphlib/Function;


# direct methods
.method constructor <init>(Lcom/softmoore/android/graphlib/Function;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/softmoore/android/graphlib/GraphFunction;->f:Lcom/softmoore/android/graphlib/Function;

    iput p2, p0, Lcom/softmoore/android/graphlib/GraphFunction;->color:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/softmoore/android/graphlib/GraphFunction;->color:I

    return v0
.end method

.method getFunction()Lcom/softmoore/android/graphlib/Function;
    .locals 1

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphFunction;->f:Lcom/softmoore/android/graphlib/Function;

    return-object v0
.end method
