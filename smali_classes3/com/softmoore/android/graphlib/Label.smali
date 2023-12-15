.class public Lcom/softmoore/android/graphlib/Label;
.super Ljava/lang/Object;


# instance fields
.field private label:Ljava/lang/String;

.field private tick:D


# direct methods
.method public constructor <init>(DLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/softmoore/android/graphlib/Label;->tick:D

    iput-object p3, p0, Lcom/softmoore/android/graphlib/Label;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/softmoore/android/graphlib/Label;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTick()D
    .locals 2

    iget-wide v0, p0, Lcom/softmoore/android/graphlib/Label;->tick:D

    return-wide v0
.end method
