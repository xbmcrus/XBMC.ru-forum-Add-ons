.class public final Lsgcam/lutprocessing/lutimage/DistortedColor;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBlue(Lsgcam/lutprocessing/lutimage/LUTImage;I)I
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->rgbDistortion:I

    div-int/2addr v0, v1

    return v0
.end method

.method public static getColorOnXCoordinate(Lsgcam/lutprocessing/lutimage/LUTImage;I)I
    .locals 1

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->coordinateToColor:Lsgcam/lutprocessing/lutimage/CoordinateToColor;

    invoke-interface {v0}, Lsgcam/lutprocessing/lutimage/CoordinateToColor;->isRedMappedToX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getRed(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->coordinateToColor:Lsgcam/lutprocessing/lutimage/CoordinateToColor;

    invoke-interface {v0}, Lsgcam/lutprocessing/lutimage/CoordinateToColor;->isGreenMappedToX()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getGreen(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getBlue(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getColorOnYCoordinate(Lsgcam/lutprocessing/lutimage/LUTImage;I)I
    .locals 1

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->coordinateToColor:Lsgcam/lutprocessing/lutimage/CoordinateToColor;

    invoke-interface {v0}, Lsgcam/lutprocessing/lutimage/CoordinateToColor;->isRedMappedToY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getRed(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->coordinateToColor:Lsgcam/lutprocessing/lutimage/CoordinateToColor;

    invoke-interface {v0}, Lsgcam/lutprocessing/lutimage/CoordinateToColor;->isGreenMappedToY()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getGreen(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getBlue(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getColorOnZCoordinate(Lsgcam/lutprocessing/lutimage/LUTImage;I)I
    .locals 1

    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->coordinateToColor:Lsgcam/lutprocessing/lutimage/CoordinateToColor;

    invoke-interface {v0}, Lsgcam/lutprocessing/lutimage/CoordinateToColor;->isRedMappedToZ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getRed(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->coordinateToColor:Lsgcam/lutprocessing/lutimage/CoordinateToColor;

    invoke-interface {v0}, Lsgcam/lutprocessing/lutimage/CoordinateToColor;->isGreenMappedToZ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getGreen(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lsgcam/lutprocessing/lutimage/DistortedColor;->getBlue(Lsgcam/lutprocessing/lutimage/LUTImage;I)I

    move-result v0

    goto :goto_0
.end method

.method private static getGreen(Lsgcam/lutprocessing/lutimage/LUTImage;I)I
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->rgbDistortion:I

    div-int/2addr v0, v1

    return v0
.end method

.method private static getRed(Lsgcam/lutprocessing/lutimage/LUTImage;I)I
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lsgcam/lutprocessing/lutimage/LUTImage;->rgbDistortion:I

    div-int/2addr v0, v1

    return v0
.end method
