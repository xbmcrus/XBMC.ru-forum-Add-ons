.class public Loverwhelmer/SeekBar1;
.super Landroid/preference/Preference;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x1a
.end annotation


# instance fields
.field private mProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTextView:Landroid/widget/TextView;

.field private max:I

.field private min:I

.field private step:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Loverwhelmer/SeekBar1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loverwhelmer/SeekBar1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Loverwhelmer/SeekBar1;->getMval()I

    move-result v0

    iput v0, p0, Loverwhelmer/SeekBar1;->mProgress:I

    const/4 v0, 0x0

    iput v0, p0, Loverwhelmer/SeekBar1;->min:I

    const/16 v0, 0x32

    const/16 v0, 0x3c

    iput v0, p0, Loverwhelmer/SeekBar1;->max:I

    const/4 v0, 0x1

    iput v0, p0, Loverwhelmer/SeekBar1;->step:I

    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Loverwhelmer/SeekBar1;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getMval()I
    .locals 1

    invoke-virtual {p0}, Loverwhelmer/SeekBar1;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loverwhelmer/Menu;->getValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Loverwhelmer/SeekBar1;->men2prog(I)I

    move-result v0

    return v0
.end method

.method public men2prog(I)I
    .locals 1

    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, -0x14

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0b004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Loverwhelmer/SeekBar1;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Loverwhelmer/SeekBar1;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Loverwhelmer/SeekBar1;->max:I

    iget v2, p0, Loverwhelmer/SeekBar1;->min:I

    sub-int/2addr v1, v2

    iget v2, p0, Loverwhelmer/SeekBar1;->step:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Loverwhelmer/SeekBar1;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Loverwhelmer/SeekBar1;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Loverwhelmer/SeekBar1;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0b004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loverwhelmer/SeekBar1;->mTextView:Landroid/widget/TextView;

    iget v0, p0, Loverwhelmer/SeekBar1;->mProgress:I

    invoke-virtual {p0, v0}, Loverwhelmer/SeekBar1;->setInf(I)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Loverwhelmer/SeekBar1;->min:I

    iget v3, p0, Loverwhelmer/SeekBar1;->step:I

    mul-int/2addr v3, p2

    add-int v1, v2, v3

    iget-object v2, p0, Loverwhelmer/SeekBar1;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0, v1}, Loverwhelmer/SeekBar1;->setInf(I)V

    invoke-virtual {p0, v1}, Loverwhelmer/SeekBar1;->setMval(I)V

    iget v2, p0, Loverwhelmer/SeekBar1;->mProgress:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Loverwhelmer/SeekBar1;->mProgress:I

    :try_start_0
    invoke-static {}, Loverwhelmer/GammaGraph;->refreshGraph()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-static {}, Loverwhelmer/ToneGraph;->refreshGraph()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Loverwhelmer/SeekBar1;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Loverwhelmer/SeekBar1;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v0, p0, Loverwhelmer/SeekBar1;->mProgress:I

    invoke-virtual {p0, v0}, Loverwhelmer/SeekBar1;->setInf(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public prog2men(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x14

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public setInf(I)V
    .locals 3

    iget-object v0, p0, Loverwhelmer/SeekBar1;->mTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Loverwhelmer/SeekBar1;->prog2men(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 p0, 0x447a0000    # 1000.0f

    div-float/2addr v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMval(I)V
    .locals 2

    invoke-virtual {p0}, Loverwhelmer/SeekBar1;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Loverwhelmer/SeekBar1;->prog2men(I)I

    move-result v1

    invoke-static {v0, v1}, Loverwhelmer/Menu;->setValue(Ljava/lang/String;I)V

    return-void
.end method
