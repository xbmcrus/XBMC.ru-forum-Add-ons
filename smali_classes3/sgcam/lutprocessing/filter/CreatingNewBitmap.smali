.class public Lsgcam/lutprocessing/filter/CreatingNewBitmap;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyLut(Landroid/graphics/Bitmap;Lsgcam/lutprocessing/lutimage/LUTImage;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v4, v2

    :goto_0
    if-lt v4, v7, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0

    :cond_0
    move v0, v2

    :goto_1
    if-lt v0, v3, :cond_1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    mul-int v5, v4, v3

    add-int/2addr v5, v0

    aget v6, v1, v5

    invoke-virtual {p2, v6}, Lsgcam/lutprocessing/lutimage/LUTImage;->getColorPixelOnLut(I)I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
