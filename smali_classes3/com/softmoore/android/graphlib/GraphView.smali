.class public Lcom/softmoore/android/graphlib/GraphView;
.super Landroid/view/View;


# instance fields
.field private g:Lcom/softmoore/android/graphlib/Graph;

.field private labelOffset:I

.field private paint:Landroid/graphics/Paint;

.field private pointRadius:I

.field private textSize:I

.field private tickOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->init()V

    return-void
.end method

.method private drawAxes(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Graph;->getAxisX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/softmoore/android/graphlib/GraphView;->toScreenX(D)I

    move-result v8

    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Graph;->getAxisY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/softmoore/android/graphlib/GraphView;->toScreenY(D)I

    move-result v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/Graph;->getAxesColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/softmoore/android/graphlib/GraphView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-direct {v0, v9}, Lcom/softmoore/android/graphlib/GraphView;->isOnScreenY(I)Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    int-to-float v5, v9

    invoke-virtual/range {p0 .. p0}, Lcom/softmoore/android/graphlib/GraphView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v6, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Graph;->getXLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Graph;->getXLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softmoore/android/graphlib/Label;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Label;->getLabel()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v13, v11, v3, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Label;->getTick()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/softmoore/android/graphlib/GraphView;->toScreenX(D)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/softmoore/android/graphlib/GraphView;->isOnScreenX(I)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v15, v1

    iget v1, v0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    sub-int v2, v9, v1

    int-to-float v3, v2

    add-int/2addr v1, v9

    int-to-float v5, v1

    iget-object v6, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move v4, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    add-int/2addr v1, v9

    iget v2, v0, Lcom/softmoore/android/graphlib/GraphView;->labelOffset:I

    add-int/2addr v1, v2

    add-int/2addr v1, v14

    int-to-float v1, v1

    iget-object v2, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v15, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Graph;->getXTicks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    cmpl-double v13, v3, v5

    if-nez v13, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v13, v2

    iget-object v2, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v13, v11, v3, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/softmoore/android/graphlib/GraphView;->toScreenX(D)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/softmoore/android/graphlib/GraphView;->isOnScreenX(I)Z

    move-result v2

    if-eqz v2, :cond_2

    int-to-float v15, v1

    iget v1, v0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    sub-int v2, v9, v1

    int-to-float v3, v2

    add-int/2addr v1, v9

    int-to-float v5, v1

    iget-object v6, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move v4, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    add-int/2addr v1, v9

    iget v2, v0, Lcom/softmoore/android/graphlib/GraphView;->labelOffset:I

    add-int/2addr v1, v2

    add-int/2addr v1, v14

    int-to-float v1, v1

    iget-object v2, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v15, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    invoke-direct {v0, v8}, Lcom/softmoore/android/graphlib/GraphView;->isOnScreenX(I)Z

    move-result v1

    if-eqz v1, :cond_9

    int-to-float v4, v8

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/softmoore/android/graphlib/GraphView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Graph;->getYLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Graph;->getYLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softmoore/android/graphlib/Label;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Label;->getLabel()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v12, v11, v3, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Label;->getTick()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/softmoore/android/graphlib/GraphView;->toScreenY(D)I

    move-result v15

    invoke-direct {v0, v15}, Lcom/softmoore/android/graphlib/GraphView;->isOnScreenY(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    sub-int v2, v8, v1

    int-to-float v2, v2

    int-to-float v5, v15

    add-int/2addr v1, v8

    int-to-float v4, v1

    iget-object v6, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    sub-int v1, v8, v1

    iget v2, v0, Lcom/softmoore/android/graphlib/GraphView;->labelOffset:I

    sub-int/2addr v1, v2

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v1, v14

    int-to-float v1, v1

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v15, v13

    int-to-float v2, v15

    iget-object v3, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Graph;->getYTicks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    cmpl-double v6, v1, v4

    if-nez v6, :cond_8

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    :cond_8
    move-object v12, v3

    iget-object v3, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v12, v11, v4, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v0, v1, v2}, Lcom/softmoore/android/graphlib/GraphView;->toScreenY(D)I

    move-result v15

    invoke-direct {v0, v15}, Lcom/softmoore/android/graphlib/GraphView;->isOnScreenY(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    sub-int v2, v8, v1

    int-to-float v2, v2

    int-to-float v5, v15

    add-int/2addr v1, v8

    int-to-float v4, v1

    iget-object v6, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    sub-int v1, v8, v1

    iget v2, v0, Lcom/softmoore/android/graphlib/GraphView;->labelOffset:I

    sub-int/2addr v1, v2

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v1, v14

    int-to-float v1, v1

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v15, v13

    int-to-float v2, v15

    iget-object v3, v0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method private drawFunction(Lcom/softmoore/android/graphlib/GraphFunction;Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Lcom/softmoore/android/graphlib/GraphFunction;->getFunction()Lcom/softmoore/android/graphlib/Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/softmoore/android/graphlib/GraphView;->getScreenPointsForFunction(Lcom/softmoore/android/graphlib/Function;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/softmoore/android/graphlib/ScreenPoint;

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/ScreenPoint;->getX()I

    move-result v3

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/ScreenPoint;->getX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/ScreenPoint;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x1

    move v4, v3

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/softmoore/android/graphlib/ScreenPoint;

    invoke-virtual {v5}, Lcom/softmoore/android/graphlib/ScreenPoint;->getX()I

    move-result v6

    add-int/2addr v4, v2

    if-ne v6, v4, :cond_0

    invoke-virtual {v5}, Lcom/softmoore/android/graphlib/ScreenPoint;->getX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5}, Lcom/softmoore/android/graphlib/ScreenPoint;->getY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lcom/softmoore/android/graphlib/ScreenPoint;->getX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5}, Lcom/softmoore/android/graphlib/ScreenPoint;->getY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    invoke-virtual {v5}, Lcom/softmoore/android/graphlib/ScreenPoint;->getX()I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/softmoore/android/graphlib/GraphFunction;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawFunctions(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v0}, Lcom/softmoore/android/graphlib/Graph;->getFunctions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softmoore/android/graphlib/GraphFunction;

    invoke-direct {p0, v1, p1}, Lcom/softmoore/android/graphlib/GraphView;->drawFunction(Lcom/softmoore/android/graphlib/GraphFunction;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawGraphPoints(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v0}, Lcom/softmoore/android/graphlib/Graph;->getGraphPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softmoore/android/graphlib/GraphPoints;

    invoke-direct {p0, v1, p1}, Lcom/softmoore/android/graphlib/GraphView;->drawPoints(Lcom/softmoore/android/graphlib/GraphPoints;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawLineGraph(Lcom/softmoore/android/graphlib/GraphPoints;Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1}, Lcom/softmoore/android/graphlib/GraphPoints;->getPoints()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/softmoore/android/graphlib/Point;

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/Point;->getX()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/softmoore/android/graphlib/GraphView;->toScreenX(D)I

    move-result v3

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/Point;->getY()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/softmoore/android/graphlib/GraphView;->toScreenY(D)I

    move-result v2

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/softmoore/android/graphlib/Point;

    invoke-virtual {v3}, Lcom/softmoore/android/graphlib/Point;->getX()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/softmoore/android/graphlib/GraphView;->toScreenX(D)I

    move-result v4

    invoke-virtual {v3}, Lcom/softmoore/android/graphlib/Point;->getY()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/softmoore/android/graphlib/GraphView;->toScreenY(D)I

    move-result v3

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/softmoore/android/graphlib/GraphPoints;->getColor()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLineGraphs(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v0}, Lcom/softmoore/android/graphlib/Graph;->getLineGraphs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softmoore/android/graphlib/GraphPoints;

    invoke-direct {p0, v1, p1}, Lcom/softmoore/android/graphlib/GraphView;->drawLineGraph(Lcom/softmoore/android/graphlib/GraphPoints;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawPoints(Lcom/softmoore/android/graphlib/GraphPoints;Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/softmoore/android/graphlib/GraphPoints;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Lcom/softmoore/android/graphlib/GraphPoints;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softmoore/android/graphlib/Point;

    invoke-virtual {v0}, Lcom/softmoore/android/graphlib/Point;->getX()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/softmoore/android/graphlib/GraphView;->toScreenX(D)I

    move-result v1

    invoke-virtual {v0}, Lcom/softmoore/android/graphlib/Point;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/softmoore/android/graphlib/GraphView;->toScreenY(D)I

    move-result v0

    invoke-direct {p0, v1}, Lcom/softmoore/android/graphlib/GraphView;->isNearScreenX(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/softmoore/android/graphlib/GraphView;->isNearScreenY(I)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/softmoore/android/graphlib/GraphView;->pointRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getScreenPointsForFunction(Lcom/softmoore/android/graphlib/Function;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/softmoore/android/graphlib/Function;",
            ")",
            "Ljava/util/List<",
            "Lcom/softmoore/android/graphlib/ScreenPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/softmoore/android/graphlib/GraphView;->toWorldX(I)D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/softmoore/android/graphlib/Function;->apply(D)D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/softmoore/android/graphlib/GraphView;->isFinite(D)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/softmoore/android/graphlib/GraphView;->toScreenY(D)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/softmoore/android/graphlib/GraphView;->isNearScreenY(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/softmoore/android/graphlib/ScreenPoint;

    invoke-direct {v3, v1, v2}, Lcom/softmoore/android/graphlib/ScreenPoint;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isFinite(D)Z
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNearScreenX(I)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNearScreenY(I)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isOnScreenX(I)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isOnScreenY(I)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private nextPoint(ILcom/softmoore/android/graphlib/Function;)Lcom/softmoore/android/graphlib/ScreenPoint;
    .locals 4

    const v0, 0x7fffffff

    :cond_0
    invoke-virtual {p0, p1}, Lcom/softmoore/android/graphlib/GraphView;->toWorldX(I)D

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Lcom/softmoore/android/graphlib/Function;->apply(D)D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/softmoore/android/graphlib/GraphView;->isFinite(D)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/softmoore/android/graphlib/GraphView;->toScreenY(D)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/softmoore/android/graphlib/GraphView;->isNearScreenY(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getWidth()I

    move-result v1

    if-gt p1, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/softmoore/android/graphlib/GraphView;->isNearScreenY(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    new-instance p2, Lcom/softmoore/android/graphlib/ScreenPoint;

    invoke-direct {p2, p1, v0}, Lcom/softmoore/android/graphlib/ScreenPoint;-><init>(II)V

    return-object p2
.end method


# virtual methods
.method protected drawViewFrame(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v0}, Lcom/softmoore/android/graphlib/Graph;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v1}, Lcom/softmoore/android/graphlib/Graph;->getAxesColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected init()V
    .locals 8

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x7

    const/4 v4, 0x3

    const/16 v5, 0x78

    if-gt v0, v5, :cond_0

    iput v4, p0, Lcom/softmoore/android/graphlib/GraphView;->pointRadius:I

    iput v4, p0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    iput v4, p0, Lcom/softmoore/android/graphlib/GraphView;->labelOffset:I

    iput v3, p0, Lcom/softmoore/android/graphlib/GraphView;->textSize:I

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v5, 0xa0

    const/16 v6, 0x8

    const/4 v7, 0x4

    if-gt v0, v5, :cond_1

    iput v4, p0, Lcom/softmoore/android/graphlib/GraphView;->pointRadius:I

    iput v7, p0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    iput v4, p0, Lcom/softmoore/android/graphlib/GraphView;->labelOffset:I

    iput v6, p0, Lcom/softmoore/android/graphlib/GraphView;->textSize:I

    goto :goto_0

    :cond_1
    const/16 v5, 0xf0

    if-gt v0, v5, :cond_2

    iput v7, p0, Lcom/softmoore/android/graphlib/GraphView;->pointRadius:I

    iput v3, p0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    iput v1, p0, Lcom/softmoore/android/graphlib/GraphView;->labelOffset:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/softmoore/android/graphlib/GraphView;->textSize:I

    goto :goto_0

    :cond_2
    const/16 v5, 0x140

    if-gt v0, v5, :cond_3

    const/4 v0, 0x6

    iput v0, p0, Lcom/softmoore/android/graphlib/GraphView;->pointRadius:I

    iput v3, p0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    iput v1, p0, Lcom/softmoore/android/graphlib/GraphView;->labelOffset:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/softmoore/android/graphlib/GraphView;->textSize:I

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/16 v5, 0x1e0

    const/16 v7, 0x9

    if-gt v0, v5, :cond_4

    iput v6, p0, Lcom/softmoore/android/graphlib/GraphView;->pointRadius:I

    iput v7, p0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    iput v3, p0, Lcom/softmoore/android/graphlib/GraphView;->labelOffset:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/softmoore/android/graphlib/GraphView;->textSize:I

    goto :goto_1

    :cond_4
    const/16 v0, 0xa

    iput v0, p0, Lcom/softmoore/android/graphlib/GraphView;->pointRadius:I

    iput v0, p0, Lcom/softmoore/android/graphlib/GraphView;->tickOffset:I

    iput v7, p0, Lcom/softmoore/android/graphlib/GraphView;->labelOffset:I

    const/16 v0, 0x23

    iput v0, p0, Lcom/softmoore/android/graphlib/GraphView;->textSize:I

    const/4 v1, 0x3

    :goto_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->paint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/softmoore/android/graphlib/GraphView;->drawViewFrame(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/softmoore/android/graphlib/GraphView;->drawAxes(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/softmoore/android/graphlib/GraphView;->drawFunctions(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/softmoore/android/graphlib/GraphView;->drawGraphPoints(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/softmoore/android/graphlib/GraphView;->drawLineGraphs(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setGraph(Lcom/softmoore/android/graphlib/Graph;)V
    .locals 0

    iput-object p1, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->invalidate()V

    return-void
.end method

.method public toScreenX(D)I
    .locals 6

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/Graph;->getXMax()D

    move-result-wide v2

    iget-object v4, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v4}, Lcom/softmoore/android/graphlib/Graph;->getXMin()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/Graph;->getXMin()D

    move-result-wide v2

    sub-double/2addr p1, v2

    mul-double v0, v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public toScreenY(D)I
    .locals 6

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/Graph;->getYMin()D

    move-result-wide v2

    iget-object v4, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v4}, Lcom/softmoore/android/graphlib/Graph;->getYMax()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/Graph;->getYMax()D

    move-result-wide v2

    sub-double/2addr p1, v2

    mul-double v0, v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public toWorldX(I)D
    .locals 4

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v0}, Lcom/softmoore/android/graphlib/Graph;->getXMax()D

    move-result-wide v0

    iget-object v2, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/Graph;->getXMin()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget-object p1, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {p1}, Lcom/softmoore/android/graphlib/Graph;->getXMin()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public toWorldY(I)D
    .locals 4

    iget-object v0, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v0}, Lcom/softmoore/android/graphlib/Graph;->getYMin()D

    move-result-wide v0

    iget-object v2, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {v2}, Lcom/softmoore/android/graphlib/Graph;->getYMax()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/softmoore/android/graphlib/GraphView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget-object p1, p0, Lcom/softmoore/android/graphlib/GraphView;->g:Lcom/softmoore/android/graphlib/Graph;

    invoke-virtual {p1}, Lcom/softmoore/android/graphlib/Graph;->getYMax()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method
