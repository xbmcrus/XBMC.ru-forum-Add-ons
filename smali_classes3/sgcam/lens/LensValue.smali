.class public Lsgcam/lens/LensValue;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetLensValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lsgcam/Shamim;->Front:I

    if-eqz v2, :cond_0

    const-string v1, "_1"

    goto :goto_0

    :cond_0
    const-string v2, "pref_aux_key"

    invoke-static {v2}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v2

    const v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v1, "_2"

    goto :goto_0

    :cond_1
    const v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v1, "_3"

    goto :goto_0

    :cond_2
    const v3, 0x3

    if-ne v2, v3, :cond_3

    const-string v1, "_4"

    goto :goto_0

    :cond_3
    const v3, 0x4

    if-ne v2, v3, :cond_4

    const-string v1, "_5"

    goto :goto_0

    :cond_4
    const-string v1, "_0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SetLensValueBack(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pref_aux_key"

    invoke-static {v2}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v2

    const v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v1, "_2"

    goto :goto_0

    :cond_0
    const v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v1, "_3"

    goto :goto_0

    :cond_1
    const v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v1, "_4"

    goto :goto_0

    :cond_2
    const v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v1, "_5"

    goto :goto_0

    :cond_3
    const-string v1, "_0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SetLensValueDefaultString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lsgcam/Shamim;->GetDefaultString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SetLensValueLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lsgcam/Shamim;->Front:I

    if-eqz v2, :cond_0

    const-string v1, "_FRONT.CSS"

    goto :goto_0

    :cond_0
    const-string v2, "pref_aux_key"

    invoke-static {v2}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v2

    const v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v1, "_TELE.CSS"

    goto :goto_0

    :cond_1
    const v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v1, "_WIDE.CSS"

    goto :goto_0

    :cond_2
    const v3, 0x3

    if-ne v2, v3, :cond_3

    const-string v1, "_ID4.CSS"

    goto :goto_0

    :cond_3
    const v3, 0x4

    if-ne v2, v3, :cond_4

    const-string v1, "_ID5.CSS"

    goto :goto_0

    :cond_4
    const-string v1, ".CSS"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
