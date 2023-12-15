.class public final Lftt;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lgrx;

.field public final b:Lgry;

.field public final c:F

.field public final d:Lmqp;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lgrx;Lgry;FLmqp;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lftt;->a:Lgrx;

    iput-object p2, p0, Lftt;->b:Lgry;

    iput p3, p0, Lftt;->c:F

    iput-object p4, p0, Lftt;->d:Lmqp;

    iput p5, p0, Lftt;->e:I

    iput p6, p0, Lftt;->f:I

    return-void
.end method

.method public static a()Lftt;
    .locals 8

    new-instance v7, Lftt;

    sget-object v1, Lgrx;->a:Lgrx;

    sget-object v2, Lgry;->a:Lgry;

    const/4 v3, 0x0

    sget-object v4, Lmpx;->a:Lmpx;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lftt;-><init>(Lgrx;Lgry;FLmqp;II)V

    return-object v7
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lftt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lftt;

    iget-object v1, p0, Lftt;->a:Lgrx;

    iget-object v3, p1, Lftt;->a:Lgrx;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lftt;->b:Lgry;

    iget-object v3, p1, Lftt;->b:Lgry;

    if-ne v1, v3, :cond_2

    iget v1, p0, Lftt;->c:F

    iget v3, p1, Lftt;->c:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Lftt;->e:I

    iget v3, p1, Lftt;->e:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lftt;->f:I

    iget v3, p1, Lftt;->f:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lftt;->d:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lftt;->d:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfts;

    iget-object p1, p1, Lftt;->d:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lftt;->a:Lgrx;

    iget v0, v0, Lgrx;->h:I

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lftt;->b:Lgry;

    iget v1, v1, Lgry;->h:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lftt;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lftt;->a:Lgrx;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lftt;->b:Lgry;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lftt;->c:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{controlAfMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", controlAfState="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lensFocusDistance="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
