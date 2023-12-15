.class public Loverwhelmer/ToneGraph_3;
.super Lcom/softmoore/android/graphlib/GraphView;


# static fields
.field public static _ToneGraph:[D

.field public static sToneGraph:Loverwhelmer/ToneGraph_3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/softmoore/android/graphlib/GraphView;-><init>(Landroid/content/Context;)V

    sput-object p0, Loverwhelmer/ToneGraph_3;->sToneGraph:Loverwhelmer/ToneGraph_3;

    invoke-static {}, Loverwhelmer/ToneGraph_3;->drawTone()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/softmoore/android/graphlib/GraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object p0, Loverwhelmer/ToneGraph_3;->sToneGraph:Loverwhelmer/ToneGraph_3;

    invoke-static {}, Loverwhelmer/ToneGraph_3;->drawTone()V

    return-void
.end method

.method public static ArrayLogPointDouble([Lcom/softmoore/android/graphlib/Point;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    sget-object v2, Lcom/SDE/getToneCurve;->tonePresetName_3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    check-cast v4, Lcom/softmoore/android/graphlib/Point;

    invoke-virtual {v4}, Lcom/softmoore/android/graphlib/Point;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  -  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v3

    check-cast v4, Lcom/softmoore/android/graphlib/Point;

    invoke-virtual {v4}, Lcom/softmoore/android/graphlib/Point;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/32 :goto_0

    :cond_0
    const-string v0, "Length 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-void
.end method

.method public static drawTone()V
    .locals 20

    const-string v0, "Default"

    sput-object v0, Lcom/SDE/getToneCurve;->tonePresetName_3:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/SDE/getToneCurve;->getToneCurve(I)[D

    move-result-object v0

    sput-object v0, Loverwhelmer/ToneGraph_3;->_ToneGraph:[D

    const/16 v17, 0x11

    move/from16 v0, v17

    new-array v0, v0, [Lcom/softmoore/android/graphlib/Point;

    move-object/from16 v18, v0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v14, v4

    if-gtz v3, :cond_0

    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    goto :goto_2

    new-instance v3, Lcom/softmoore/android/graphlib/Point;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v14, v15, v4, v5}, Lcom/softmoore/android/graphlib/Point;-><init>(DD)V

    aput-object v3, v18, v13

    :goto_1
    const-wide/high16 v4, 0x3fb0000000000000L    # 0.0625

    add-double/2addr v14, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :goto_2
    const/16 v3, 0x11

    goto :goto_3

    new-instance v3, Lcom/softmoore/android/graphlib/Point;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v14, v15, v4, v5}, Lcom/softmoore/android/graphlib/Point;-><init>(DD)V

    aput-object v3, v18, v13

    :cond_0
    new-instance v3, Lcom/softmoore/android/graphlib/Graph$Builder;

    invoke-direct {v3}, Lcom/softmoore/android/graphlib/Graph$Builder;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v3 .. v11}, Lcom/softmoore/android/graphlib/Graph$Builder;->setWorldCoordinates(DDDD)Lcom/softmoore/android/graphlib/Graph$Builder;

    move-result-object v3

    const v4, -0x777778

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lcom/softmoore/android/graphlib/Graph$Builder;->addLineGraph([Lcom/softmoore/android/graphlib/Point;I)Lcom/softmoore/android/graphlib/Graph$Builder;

    move-result-object v3

    const v4, -0x777778

    invoke-virtual {v3, v4}, Lcom/softmoore/android/graphlib/Graph$Builder;->setAxesColor(I)Lcom/softmoore/android/graphlib/Graph$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/softmoore/android/graphlib/Graph$Builder;->setBackgroundColor(I)Lcom/softmoore/android/graphlib/Graph$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/softmoore/android/graphlib/Graph$Builder;->build()Lcom/softmoore/android/graphlib/Graph;

    move-result-object v2

    sget-object v3, Loverwhelmer/ToneGraph_3;->sToneGraph:Loverwhelmer/ToneGraph_3;

    const v4, 0x7f0b0049

    invoke-virtual {v3, v4}, Loverwhelmer/ToneGraph_3;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/softmoore/android/graphlib/GraphView;

    invoke-virtual {v12, v2}, Lcom/softmoore/android/graphlib/GraphView;->setGraph(Lcom/softmoore/android/graphlib/Graph;)V

    const-string v13, "addlogsdir/_ToneGraphPoint_3.log"

    check-cast v0, [Lcom/softmoore/android/graphlib/Point;

    invoke-static {v0, v13}, Loverwhelmer/ToneGraph_3;->ArrayLogPointDouble([Lcom/softmoore/android/graphlib/Point;Ljava/lang/String;)V

    return-void

    :goto_3
    new-instance v3, Lcom/softmoore/android/graphlib/Point;

    sget-object v4, Loverwhelmer/ToneGraph_3;->_ToneGraph:[D

    add-int/lit8 v5, v13, 0x0

    aget-wide v4, v4, v5

    invoke-direct {v3, v14, v15, v4, v5}, Lcom/softmoore/android/graphlib/Point;-><init>(DD)V

    aput-object v3, v18, v13

    goto :goto_1
.end method

.method public static refreshGraph()V
    .locals 1

    invoke-static {}, Loverwhelmer/ToneGraph_3;->drawTone()V

    return-void
.end method
