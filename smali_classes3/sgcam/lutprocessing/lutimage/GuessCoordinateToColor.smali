.class public Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;
.super Ljava/lang/Object;

# interfaces
.implements Lsgcam/lutprocessing/lutimage/CoordinateToColor;


# instance fields
.field private final isGreenMappedToX:Z

.field private final isGreenMappedToY:Z

.field private final isGreenMappedToZ:Z

.field private final isRedMappedToX:Z

.field private final isRedMappedToY:Z

.field private final isRedMappedToZ:Z

.field private final lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;


# direct methods
.method public constructor <init>(Lsgcam/lutprocessing/lutimage/LUTImage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    invoke-direct {p0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->calculateRedMappedToX()Z

    move-result v0

    iput-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isRedMappedToX:Z

    invoke-virtual {p0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->calculateRedMappedToY()Z

    move-result v0

    iput-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isRedMappedToY:Z

    invoke-virtual {p0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->calculateGreenMappedToX()Z

    move-result v0

    iput-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isGreenMappedToX:Z

    invoke-virtual {p0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->calculateGreenMappedToY()Z

    move-result v0

    iput-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isGreenMappedToY:Z

    invoke-virtual {p0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->calculateRedMappedToZ()Z

    move-result v0

    iput-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isRedMappedToZ:Z

    invoke-virtual {p0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->calculateGreenMappedToZ()Z

    move-result v0

    iput-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isGreenMappedToZ:Z

    return-void
.end method

.method private calculateRedMappedToX()Z
    .locals 2

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v1, v1, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lsgcam/lutprocessing/lutimage/LUTImage;->getPixelByIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->redIsStrongestOnPixel(I)Z

    move-result v0

    return v0
.end method

.method private greenIsStrongestOnPixel(I)Z
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-le v0, v1, :cond_0

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private redIsStrongestOnPixel(I)Z
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-le v0, v1, :cond_0

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public calculateGreenMappedToX()Z
    .locals 2

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v1, v1, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lsgcam/lutprocessing/lutimage/LUTImage;->getPixelByIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->greenIsStrongestOnPixel(I)Z

    move-result v0

    return v0
.end method

.method public calculateGreenMappedToY()Z
    .locals 2

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v0, v0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v1, v1, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    invoke-virtual {v1, v0}, Lsgcam/lutprocessing/lutimage/LUTImage;->getPixelByIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->greenIsStrongestOnPixel(I)Z

    move-result v0

    return v0
.end method

.method public calculateGreenMappedToZ()Z
    .locals 4

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v0, v0, Lsgcam/lutprocessing/lutimage/LUTImage;->columnDepth:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v1, v1, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v1, v1, Lsgcam/lutprocessing/lutimage/LUTImage;->rowDepth:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v2, v2, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget-object v3, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v3, v3, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lsgcam/lutprocessing/lutimage/LUTImage;->getPixelByIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->greenIsStrongestOnPixel(I)Z

    move-result v0

    return v0
.end method

.method public calculateRedMappedToY()Z
    .locals 2

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v0, v0, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v1, v1, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    invoke-virtual {v1, v0}, Lsgcam/lutprocessing/lutimage/LUTImage;->getPixelByIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->redIsStrongestOnPixel(I)Z

    move-result v0

    return v0
.end method

.method public calculateRedMappedToZ()Z
    .locals 4

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v0, v0, Lsgcam/lutprocessing/lutimage/LUTImage;->columnDepth:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v1, v1, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v1, v1, Lsgcam/lutprocessing/lutimage/LUTImage;->rowDepth:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v2, v2, Lsgcam/lutprocessing/lutimage/LUTImage;->sideSize:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget-object v3, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->lutImage:Lsgcam/lutprocessing/lutimage/LUTImage;

    iget v3, v3, Lsgcam/lutprocessing/lutimage/LUTImage;->lutWidth:I

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lsgcam/lutprocessing/lutimage/LUTImage;->getPixelByIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->redIsStrongestOnPixel(I)Z

    move-result v0

    return v0
.end method

.method public isGreenMappedToX()Z
    .locals 1

    iget-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isGreenMappedToX:Z

    return v0
.end method

.method public isGreenMappedToY()Z
    .locals 1

    iget-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isGreenMappedToY:Z

    return v0
.end method

.method public isGreenMappedToZ()Z
    .locals 1

    iget-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isGreenMappedToZ:Z

    return v0
.end method

.method public isRedMappedToX()Z
    .locals 1

    iget-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isRedMappedToX:Z

    return v0
.end method

.method public isRedMappedToY()Z
    .locals 1

    iget-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isRedMappedToY:Z

    return v0
.end method

.method public isRedMappedToZ()Z
    .locals 1

    iget-boolean v0, p0, Lsgcam/lutprocessing/lutimage/GuessCoordinateToColor;->isRedMappedToZ:Z

    return v0
.end method
