.class public Lcom/custom/AstroTimeCount;
.super Landroid/widget/ToggleButton;


# static fields
.field public static Icon:[Ljava/lang/String;

.field public static SelState:I

.field public static SelStateIndex:I

.field public static SelStateValue:I

.field public static app:Lcom/custom/AstroTimeCount;

.field public static prefString:Ljava/lang/String;


# instance fields
.field public appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public appContext:Landroid/content/Context;

.field public appLongClickListener:Landroid/view/View$OnLongClickListener;

.field public myClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/custom/AstroTimeCount;->SelStateIndex:I

    sput v0, Lcom/custom/AstroTimeCount;->SelStateValue:I

    const-string v0, "manual_astro_time"

    sput-object v0, Lcom/custom/AstroTimeCount;->prefString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/custom/AstroTimeCount$1;

    invoke-direct {v0, p0}, Lcom/custom/AstroTimeCount$1;-><init>(Lcom/custom/AstroTimeCount;)V

    iput-object v0, p0, Lcom/custom/AstroTimeCount;->appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/custom/AstroTimeCount;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/custom/AstroTimeCount$2;

    invoke-direct {v0, p0}, Lcom/custom/AstroTimeCount$2;-><init>(Lcom/custom/AstroTimeCount;)V

    iput-object v0, p0, Lcom/custom/AstroTimeCount;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/custom/AstroTimeCount;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/custom/AstroTimeCount$1;

    invoke-direct {v0, p0}, Lcom/custom/AstroTimeCount$1;-><init>(Lcom/custom/AstroTimeCount;)V

    iput-object v0, p0, Lcom/custom/AstroTimeCount;->appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/custom/AstroTimeCount;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/custom/AstroTimeCount$2;

    invoke-direct {v0, p0}, Lcom/custom/AstroTimeCount$2;-><init>(Lcom/custom/AstroTimeCount;)V

    iput-object v0, p0, Lcom/custom/AstroTimeCount;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/custom/AstroTimeCount;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/custom/AstroTimeCount$1;

    invoke-direct {v0, p0}, Lcom/custom/AstroTimeCount$1;-><init>(Lcom/custom/AstroTimeCount;)V

    iput-object v0, p0, Lcom/custom/AstroTimeCount;->appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/custom/AstroTimeCount;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/custom/AstroTimeCount$2;

    invoke-direct {v0, p0}, Lcom/custom/AstroTimeCount$2;-><init>(Lcom/custom/AstroTimeCount;)V

    iput-object v0, p0, Lcom/custom/AstroTimeCount;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/custom/AstroTimeCount;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/custom/AstroTimeCount$1;

    invoke-direct {v0, p0}, Lcom/custom/AstroTimeCount$1;-><init>(Lcom/custom/AstroTimeCount;)V

    iput-object v0, p0, Lcom/custom/AstroTimeCount;->appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/custom/AstroTimeCount;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/custom/AstroTimeCount$2;

    invoke-direct {v0, p0}, Lcom/custom/AstroTimeCount$2;-><init>(Lcom/custom/AstroTimeCount;)V

    iput-object v0, p0, Lcom/custom/AstroTimeCount;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/custom/AstroTimeCount;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getSelStateIndex()V
    .locals 1

    sget-object v0, Lcom/custom/AstroTimeCount;->prefString:Ljava/lang/String;

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const v0, 0x0

    goto :goto_0

    :sswitch_1
    const v0, 0x1

    goto :goto_0

    :sswitch_2
    const v0, 0x2

    goto :goto_0

    :sswitch_3
    const v0, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f40 -> :sswitch_1
        0x3e80 -> :sswitch_2
        0x7d00 -> :sswitch_3
    .end sparse-switch

    :goto_0
    sput v0, Lcom/custom/AstroTimeCount;->SelStateIndex:I

    return-void
.end method

.method public static getSelStateValue()V
    .locals 1

    sget v0, Lcom/custom/AstroTimeCount;->SelStateIndex:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const v0, 0x0

    goto :goto_0

    :sswitch_1
    const v0, 0x1f40

    goto :goto_0

    :sswitch_2
    const v0, 0x3e80

    goto :goto_0

    :sswitch_3
    const v0, 0x7d00

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
    .end sparse-switch

    :goto_0
    sput v0, Lcom/custom/AstroTimeCount;->SelStateValue:I

    return-void
.end method


# virtual methods
.method public UpdateUi(Landroid/content/Context;)V
    .locals 7

    sget v3, Lcom/custom/AstroTimeCount;->SelStateIndex:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/custom/AstroTimeCount;->invalidate()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/custom/AstroTimeCount;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "main_button"

    const-string v5, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/custom/AstroTimeCount;->setBackgroundResource(I)V

    sget-object v1, Lsgcam/devsettoptions/Pref;->RRRS:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettStringValue(Ldhj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setTextColor(I)V

    const-string v1, "Auto"

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/custom/AstroTimeCount;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "enabled_button"

    const-string v5, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setBackgroundResource(I)V

    sget-object v1, Lsgcam/devsettoptions/Pref;->RRRR:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettStringValue(Ldhj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setTextColor(I)V

    const-string v1, "8s"

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/custom/AstroTimeCount;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "enabled_button"

    const-string v5, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setBackgroundResource(I)V

    sget-object v1, Lsgcam/devsettoptions/Pref;->RRRR:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettStringValue(Ldhj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setTextColor(I)V

    const-string v1, "16s"

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/custom/AstroTimeCount;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "enabled_button"

    const-string v5, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setBackgroundResource(I)V

    sget-object v1, Lsgcam/devsettoptions/Pref;->RRRR:Ldhj;

    invoke-static {v1}, Lsgcam/Shamim;->GetDevSettStringValue(Ldhj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setTextColor(I)V

    const-string v1, "32s"

    invoke-virtual {p0, v1}, Lcom/custom/AstroTimeCount;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/custom/AstroTimeCount;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getVisibility()V
    .locals 2

    const-string v1, "pref_show_astrotime_button_key111111111"

    invoke-static {v1}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/custom/AstroTimeCount;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/custom/AstroTimeCount;->app:Lcom/custom/AstroTimeCount;

    iput-object p1, p0, Lcom/custom/AstroTimeCount;->appContext:Landroid/content/Context;

    sget-object v0, Lcom/custom/AstroTimeCount;->prefString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/custom/AstroTimeCount;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/custom/AstroTimeCount;->SelStateValue:I

    invoke-static {}, Lcom/custom/AstroTimeCount;->getSelStateIndex()V

    invoke-virtual {p0}, Lcom/custom/AstroTimeCount;->getVisibility()V

    invoke-virtual {p0, p1}, Lcom/custom/AstroTimeCount;->UpdateUi(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/custom/AstroTimeCount;->appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/custom/AstroTimeCount;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/custom/AstroTimeCount;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/custom/AstroTimeCount;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/custom/AstroTimeCount;->appContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
