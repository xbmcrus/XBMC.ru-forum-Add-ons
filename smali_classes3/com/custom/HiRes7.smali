.class public Lcom/custom/HiRes7;
.super Landroid/widget/ToggleButton;


# static fields
.field public static SelState:I


# instance fields
.field public myChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public myClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/custom/HiRes7;->SelState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/custom/HiRes7$1;

    invoke-direct {v0, p0}, Lcom/custom/HiRes7$1;-><init>(Lcom/custom/HiRes7;)V

    iput-object v0, p0, Lcom/custom/HiRes7;->myChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/custom/HiRes7$2;

    invoke-direct {v0, p0}, Lcom/custom/HiRes7$2;-><init>(Lcom/custom/HiRes7;)V

    iput-object v0, p0, Lcom/custom/HiRes7;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/custom/HiRes7;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/custom/HiRes7$1;

    invoke-direct {v0, p0}, Lcom/custom/HiRes7$1;-><init>(Lcom/custom/HiRes7;)V

    iput-object v0, p0, Lcom/custom/HiRes7;->myChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/custom/HiRes7$2;

    invoke-direct {v0, p0}, Lcom/custom/HiRes7$2;-><init>(Lcom/custom/HiRes7;)V

    iput-object v0, p0, Lcom/custom/HiRes7;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/custom/HiRes7;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/custom/HiRes7$1;

    invoke-direct {v0, p0}, Lcom/custom/HiRes7$1;-><init>(Lcom/custom/HiRes7;)V

    iput-object v0, p0, Lcom/custom/HiRes7;->myChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/custom/HiRes7$2;

    invoke-direct {v0, p0}, Lcom/custom/HiRes7$2;-><init>(Lcom/custom/HiRes7;)V

    iput-object v0, p0, Lcom/custom/HiRes7;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/custom/HiRes7;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/custom/HiRes7$1;

    invoke-direct {v0, p0}, Lcom/custom/HiRes7$1;-><init>(Lcom/custom/HiRes7;)V

    iput-object v0, p0, Lcom/custom/HiRes7;->myChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/custom/HiRes7$2;

    invoke-direct {v0, p0}, Lcom/custom/HiRes7$2;-><init>(Lcom/custom/HiRes7;)V

    iput-object v0, p0, Lcom/custom/HiRes7;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/custom/HiRes7;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public UpdateUi(Landroid/content/Context;)V
    .locals 7

    sget v3, Lcom/custom/HiRes7;->SelState:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/custom/HiRes7;->invalidate()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/custom/HiRes7;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "main_button"

    const-string v5, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/custom/HiRes7;->setBackgroundResource(I)V

    sget-object v1, Lsgcam/devsettoptions/Pref;->RRRS:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettStringValue(Ldhj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/custom/HiRes7;->setTextColor(I)V

    sget-object v1, Lsgcam/devsettoptions/Pref;->RRRS31:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettStringValue(Ldhj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/custom/HiRes7;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/custom/HiRes7;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "enabled_button"

    const-string v5, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/custom/HiRes7;->setBackgroundResource(I)V

    sget-object v1, Lsgcam/devsettoptions/Pref;->RRRR:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettStringValue(Ldhj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/custom/HiRes7;->setTextColor(I)V

    sget-object v1, Lsgcam/devsettoptions/Pref;->RRRS3:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettStringValue(Ldhj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/custom/HiRes7;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVisibility()V
    .locals 2

    const-string v1, "pref_show_hires_button_key"

    invoke-static {v1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/custom/HiRes7;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "pref_originial_reso_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/custom/HiRes7;->SelState:I

    invoke-virtual {p0}, Lcom/custom/HiRes7;->getVisibility()V

    invoke-virtual {p0, p1}, Lcom/custom/HiRes7;->UpdateUi(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/custom/HiRes7;->myChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/custom/HiRes7;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/custom/HiRes7;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/custom/HiRes7;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
