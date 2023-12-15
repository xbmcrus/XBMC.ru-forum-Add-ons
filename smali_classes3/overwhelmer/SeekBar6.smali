.class public Loverwhelmer/SeekBar6;
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

    invoke-direct {p0, p1, v0, v1}, Loverwhelmer/SeekBar6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loverwhelmer/SeekBar6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Loverwhelmer/SeekBar6;->getMval()I

    move-result v0

    iput v0, p0, Loverwhelmer/SeekBar6;->mProgress:I

    const/4 v0, 0x0

    iput v0, p0, Loverwhelmer/SeekBar6;->min:I

    const/16 v0, 0x10

    iput v0, p0, Loverwhelmer/SeekBar6;->max:I

    const/4 v0, 0x1

    iput v0, p0, Loverwhelmer/SeekBar6;->step:I

    const v0, 0x7f0e0104

    invoke-virtual {p0, v0}, Loverwhelmer/SeekBar6;->setLayoutResource(I)V

    return-void
.end method

.method public static men2prog(I)I
    .locals 1

    div-int/lit8 v0, p0, 0x7d

    return v0
.end method

.method public static prog2men(I)I
    .locals 1

    mul-int/lit8 v0, p0, 0x7d

    return v0
.end method


# virtual methods
.method public getMval()I
    .locals 1

    invoke-virtual {p0}, Loverwhelmer/SeekBar6;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loverwhelmer/Menu;->getValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Loverwhelmer/SeekBar6;->men2prog(I)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0b0386

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Loverwhelmer/SeekBar6;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Loverwhelmer/SeekBar6;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Loverwhelmer/SeekBar6;->max:I

    iget v2, p0, Loverwhelmer/SeekBar6;->min:I

    sub-int/2addr v1, v2

    iget v2, p0, Loverwhelmer/SeekBar6;->step:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Loverwhelmer/SeekBar6;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Loverwhelmer/SeekBar6;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Loverwhelmer/SeekBar6;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0b0385

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loverwhelmer/SeekBar6;->mTextView:Landroid/widget/TextView;

    iget v0, p0, Loverwhelmer/SeekBar6;->mProgress:I

    invoke-virtual {p0, v0}, Loverwhelmer/SeekBar6;->setInf(I)V

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
    .locals 3

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Loverwhelmer/SeekBar6;->min:I

    iget v2, p0, Loverwhelmer/SeekBar6;->step:I

    mul-int/2addr v2, p2

    add-int v0, v1, v2

    iget-object v1, p0, Loverwhelmer/SeekBar6;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0, v0}, Loverwhelmer/SeekBar6;->setInf(I)V

    invoke-virtual {p0, v0}, Loverwhelmer/SeekBar6;->setMval(I)V

    iget v1, p0, Loverwhelmer/SeekBar6;->mProgress:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Loverwhelmer/SeekBar6;->mProgress:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Loverwhelmer/SeekBar6;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Loverwhelmer/SeekBar6;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v0, p0, Loverwhelmer/SeekBar6;->mProgress:I

    invoke-virtual {p0, v0}, Loverwhelmer/SeekBar6;->setInf(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public setInf(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Loverwhelmer/SeekBar6;->mTextView:Landroid/widget/TextView;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Loverwhelmer/SeekBar6;->mTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Loverwhelmer/SeekBar6;->prog2men(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMval(I)V
    .locals 2

    invoke-virtual {p0}, Loverwhelmer/SeekBar6;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Loverwhelmer/SeekBar6;->prog2men(I)I

    move-result v1

    invoke-static {v0, v1}, Loverwhelmer/Menu;->setValue(Ljava/lang/String;I)V

    return-void
.end method
