.class public Lza/defcomk/prorec/cust6/manualfocus;
.super Ljava/lang/Object;


# static fields
.field private static ASUSISODIV:I

.field private static ISO_Out:I

.field private static ISO_RESULT:I

.field private static ISO_to_Gain_Quant:F

.field private static focusDistance:F

.field private static focusMode:I

.field private static isoVal:I

.field private static manualfocus:Lza/defcomk/prorec/cust6/manualfocus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lza/defcomk/prorec/cust6/manualfocus;

    invoke-direct {v0}, Lza/defcomk/prorec/cust6/manualfocus;-><init>()V

    sput-object v0, Lza/defcomk/prorec/cust6/manualfocus;->manualfocus:Lza/defcomk/prorec/cust6/manualfocus;

    const/4 v0, 0x1

    sput v0, Lza/defcomk/prorec/cust6/manualfocus;->ISO_Out:I

    const/4 v0, 0x4

    sput v0, Lza/defcomk/prorec/cust6/manualfocus;->ASUSISODIV:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lza/defcomk/prorec/cust6/manualfocus;->ISO_to_Gain_Quant:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcdist3(IF)V
    .locals 2

    sput p0, Lza/defcomk/prorec/cust6/manualfocus;->focusMode:I

    const v0, 0x3e028824

    if-nez p0, :cond_0

    const-string v0, "0"

    const-string v1, "pref_af_mode_back"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_af_mode_front"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x38d1b717    # 1.0E-4f

    sput v0, Lza/defcomk/prorec/cust6/manualfocus;->focusDistance:F

    goto :goto_0

    :cond_0
    const-string v0, "2"

    const-string v1, "pref_af_mode_back"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_af_mode_front"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const v0, 0x0

    sput v0, Lza/defcomk/prorec/cust6/manualfocus;->focusDistance:F

    goto :goto_0

    :cond_1
    sput p1, Lza/defcomk/prorec/cust6/manualfocus;->focusDistance:F

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SLIDER 1 FOCUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lza/defcomk/prorec/cust6/manualfocus;->focusDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lza/defcomk/prorec/cust6/manualfocus;->logMSG(Ljava/lang/String;)V

    return-void
.end method

.method public static getFocusDistance()Ljava/lang/Float;
    .locals 1

    sget v0, Lza/defcomk/prorec/cust6/manualfocus;->focusDistance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusMode()Ljava/lang/Integer;
    .locals 1

    sget v0, Lza/defcomk/prorec/cust6/manualfocus;->focusMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusValue()I
    .locals 1

    sget v0, Lza/defcomk/prorec/cust6/manualfocus;->focusMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getISO_Out()I
    .locals 5

    sget v0, Lza/defcomk/prorec/cust6/manualfocus;->ISO_Out:I

    int-to-float v0, v0

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lza/defcomk/prorec/cust6/manualfocus;
    .locals 1

    sget-object v0, Lza/defcomk/prorec/cust6/manualfocus;->manualfocus:Lza/defcomk/prorec/cust6/manualfocus;

    return-object v0
.end method

.method public static logMSG(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeezNuts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setISOResult(Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "Deez IN ISO"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lza/defcomk/prorec/cust6/manualfocus;->ISO_RESULT:I

    return-void
.end method
