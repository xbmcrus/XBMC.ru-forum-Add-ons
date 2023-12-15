.class public Lcom/mdmitriev/auxlenses/AuxButtonsLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public buttonName5:Ljava/lang/String;

.field public buttonNameInfinity:Ljava/lang/String;

.field public buttonNameMain:Ljava/lang/String;

.field public buttonNameTele:Ljava/lang/String;

.field public buttonNameWide:Ljava/lang/String;

.field public buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field public idButton5:I

.field public idButtonInfinity:I

.field public idButtonMain:I

.field public idButtonTele:I

.field public idButtonWide:I

.field resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object p0, Lsgcam/Shamim;->GetInstance:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttons:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->resources:Landroid/content/res/Resources;

    const-string v0, "AuxButtonMain"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonMain:I

    const-string v0, "AuxButtonTele"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonTele:I

    const-string v0, "AuxButtonWide"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonWide:I

    const-string v0, "AuxButtonInfinity"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonInfinity:I

    const-string v0, "AuxButton5"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButton5:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object p0, Lsgcam/Shamim;->GetInstance:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttons:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->resources:Landroid/content/res/Resources;

    const-string v0, "AuxButtonMain"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonMain:I

    const-string v0, "AuxButtonTele"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonTele:I

    const-string v0, "AuxButtonWide"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonWide:I

    const-string v0, "AuxButtonInfinity"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonInfinity:I

    const-string v0, "AuxButton5"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButton5:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sput-object p0, Lsgcam/Shamim;->GetInstance:Lcom/mdmitriev/auxlenses/AuxButtonsLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttons:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->resources:Landroid/content/res/Resources;

    const-string v0, "AuxButtonMain"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonMain:I

    const-string v0, "AuxButtonTele"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonTele:I

    const-string v0, "AuxButtonWide"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonWide:I

    const-string v0, "AuxButtonInfinity"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonInfinity:I

    const-string v0, "AuxButton5"

    invoke-virtual {p0, v0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButton5:I

    return-void
.end method

.method public static switchToPicturesize()Ljava/lang/String;
    .locals 2

    sget v1, Lcom/Fix/Pref;->sAuxKey:I

    packed-switch v1, :pswitch_data_0

    const-string v0, "pref_camera_picturesize_back_key"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "pref_camera_picturesize_back_key"

    goto :goto_0

    :pswitch_1
    const-string v0, "pref_camera_picturesize_aux_key"

    goto :goto_0

    :pswitch_2
    const-string v0, "pref_camera_picturesize_3rd_key"

    goto :goto_0

    :pswitch_3
    const-string v0, "pref_camera_picturesize_4th_key"

    goto :goto_0

    :pswitch_4
    const-string v0, "pref_camera_picturesize_5th_key"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public AuxName()V
    .locals 9

    invoke-static {p0}, Lsgcam/Shamim;->GetAutoAuxTxt(Lcom/mdmitriev/auxlenses/AuxButtonsLayout;)V

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->Xiaomi13U()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "1.0x"

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameMain:Ljava/lang/String;

    const-string v0, "3.2x"

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameTele:Ljava/lang/String;

    const-string v0, "0.5x"

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameWide:Ljava/lang/String;

    const-string v0, "5.0x"

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameInfinity:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->RedmiNote8()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "1.0x"

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameMain:Ljava/lang/String;

    const-string v0, "2.0x"

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameTele:Ljava/lang/String;

    const-string v0, "0.6x"

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameWide:Ljava/lang/String;

    const-string v0, "0.9x"

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameInfinity:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :goto_0
    const-string v0, "pref_lenses_names_enable_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "pref_manual_camera_name_key_main"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameMain:Ljava/lang/String;

    const-string v0, "pref_manual_camera_name_key_2"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameTele:Ljava/lang/String;

    const-string v0, "pref_manual_camera_name_key_3"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameWide:Ljava/lang/String;

    const-string v0, "pref_manual_camera_name_key_4"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameInfinity:Ljava/lang/String;

    const-string v0, "pref_manual_camera_name_key_5"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonName5:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public GetButtonByDrawable(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->resources:Landroid/content/res/Resources;

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public GetButtonByID(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->resources:Landroid/content/res/Resources;

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public activateButton(I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonMain:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonTele:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonWide:I

    if-ne v1, p1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonInfinity:I

    if-ne v1, p1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButton5:I

    if-ne v1, p1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    :goto_0
    const-string p1, "pref_aux_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBackground(IILjava/lang/String;)Landroid/widget/Button;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/Fix/Pref;->sAuxKey:I

    if-ne v1, p1, :cond_0

    const-string v1, "pref_aux_text_color_enabled_key"

    invoke-static {v1}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "enabled_button1"

    goto :goto_0

    :cond_0
    const-string v1, "pref_aux_text_color_disabled_key"

    invoke-static {v1}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "main_button1"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0, v2}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->GetButtonByDrawable(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->getVisibilityById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-object v0
.end method

.method public getVisibilityById(I)I
    .locals 8

    sget-object v3, Lsgcam/devsettoptions/Pref;->auxbu:Ldhj;

    invoke-static {v3}, Lsgcam/Shamim;->GetDevSettBooleanValue(Ldhj;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_0
    const-string v0, "pref_visible_button_1_key"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    move-object p1, v0

    goto :goto_0

    :cond_1
    const-string p1, "pref_visible_button_2_key"

    goto :goto_0

    :cond_2
    const-string p1, "pref_visible_button_3_key"

    goto :goto_0

    :cond_3
    const-string p1, "pref_visible_button_4_key"

    goto :goto_0

    :cond_4
    const-string p1, "pref_visible_button_5_key"

    :goto_0
    invoke-static {p1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const/16 p1, 0x8

    :goto_1
    return p1
.end method

.method public initButtons()V
    .locals 4

    invoke-virtual {p0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->AuxName()V

    iget-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttons:Ljava/util/List;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonMain:I

    iget-object v3, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameMain:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->getBackground(IILjava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttons:Ljava/util/List;

    const/4 v1, 0x1

    iget v2, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonTele:I

    iget-object v3, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameTele:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->getBackground(IILjava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttons:Ljava/util/List;

    const/4 v1, 0x2

    iget v2, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonWide:I

    iget-object v3, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameWide:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->getBackground(IILjava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttons:Ljava/util/List;

    const/4 v1, 0x3

    iget v2, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButtonInfinity:I

    iget-object v3, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonNameInfinity:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->getBackground(IILjava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttons:Ljava/util/List;

    const/4 v1, 0x4

    iget v2, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->idButton5:I

    iget-object v3, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttonName5:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->getBackground(IILjava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->buttons:Ljava/util/List;

    new-instance v1, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$$Lambda$0;-><init>(Lcom/mdmitriev/auxlenses/AuxButtonsLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method final synthetic lambda$initButtons$0$AuxButtonsLayout(Landroid/widget/Button;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;

    invoke-direct {v0, p0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout$1;-><init>(Lcom/mdmitriev/auxlenses/AuxButtonsLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/mdmitriev/auxlenses/AuxButtonsLayout;->initButtons()V

    return-void
.end method
