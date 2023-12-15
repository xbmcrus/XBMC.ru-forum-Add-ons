.class public Lsgcam/lutprocessing/lutimage/LUTImage;
.super Ljava/lang/Object;


# static fields
.field private static final COLOR_DEPTH:I = 0x100

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final columnDepth:I

.field protected final coordinateToColor:Lsgcam/lutprocessing/lutimage/CoordinateToColor;

.field protected final lutAlignment:Lsgcam/lutprocessing/lutimage/LutAlignment;

.field private final lutColors:[I

.field protected final lutHeight:I

.field protected final lutWidth:I

.field protected final rgbDistortion:I

.field protected final rowDepth:I

.field protected final sideSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsgcam/lutprocessing/lutimage/LUTImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/lutprocessing/lutimage/LUTImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(II[ILsgcam/lutprocessing/lutimage/CoordinateToColor$Type;Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    iput p2, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutHeight:I

    iput-object p3, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutColors:[I

    invoke-direct {p0}, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize()I

    move-result v0

    iput v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    iget v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    div-int v0, p2, v0

    iput v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->rowDepth:I

    iget v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    div-int v0, p1, v0

    iput v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->columnDepth:I

    const/16 v0, 0x100

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->rgbDistortion:I

    invoke-virtual {p4, p0}, Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;->getCoordinateToColor(Lsgcam/lutprocessing/lutimage/LUTImage;)Lsgcam/lutprocessing/lutimage/CoordinateToColor;

    move-result-object v0

    iput-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->coordinateToColor:Lsgcam/lutprocessing/lutimage/CoordinateToColor;

    invoke-virtual {p5}, Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;->getLutAlignment()Lsgcam/lutprocessing/lutimage/LutAlignment;

    move-result-object v0

    iput-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutAlignment:Lsgcam/lutprocessing/lutimage/LutAlignment;

    return-void
.end method

.method public static createLutImage(Landroid/graphics/Bitmap;Lsgcam/lutprocessing/lutimage/CoordinateToColor$Type;Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;)Lsgcam/lutprocessing/lutimage/LUTImage;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v2, Lsgcam/lutprocessing/lutimage/LUTImage;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v5, v1

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lsgcam/lutprocessing/lutimage/LUTImage;-><init>(II[ILsgcam/lutprocessing/lutimage/CoordinateToColor$Type;Lsgcam/lutprocessing/lutimage/LutAlignment$Mode;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method private getLutPixelIndex(I)I
    .locals 7

    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getColorOnXCoordinate(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v3

    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getColorOnYCoordinate(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v4

    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getColorOnZCoordinate(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v5

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutAlignment:Lsgcam/lutprocessing/lutimage/LutAlignment;

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->rowDepth:I

    iget v2, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    invoke-interface/range {v0 .. v5}, Lsgcam/lutprocessing/lutimage/LutAlignment;->getX(IIIII)I

    move-result v6

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutAlignment:Lsgcam/lutprocessing/lutimage/LutAlignment;

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->rowDepth:I

    iget v2, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    invoke-interface/range {v0 .. v5}, Lsgcam/lutprocessing/lutimage/LutAlignment;->getY(IIIII)I

    move-result v0

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    mul-int/2addr v0, v1

    add-int/2addr v0, v6

    return v0
.end method

.method private sideSize()I
    .locals 6

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    iget v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutHeight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutHeight:I

    :goto_2
    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    iget v2, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutHeight:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    :goto_3
    mul-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutHeight:I

    goto :goto_3
.end method


# virtual methods
.method public getColorPixelOnLut(I)I
    .locals 1

    invoke-direct {p0, p1}, Lsgcam/lutprocessing/lutimage/LUTImage;->getLutPixelIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lsgcam/lutprocessing/lutimage/LUTImage;->getPixelByIndex(I)I

    move-result v0

    return v0
.end method

.method getPixelByIndex(I)I
    .locals 4

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutColors:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutColors:[I

    aget v1, v1, p1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutColors:[I

    aget v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LUTImage{lutWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lutHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sideSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coordinateToColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->coordinateToColor:Lsgcam/lutprocessing/lutimage/CoordinateToColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lutAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutAlignment:Lsgcam/lutprocessing/lutimage/LutAlignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
