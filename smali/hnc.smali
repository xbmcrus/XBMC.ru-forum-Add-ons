.class public final Lhnc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lhna;

.field public final b:Lhna;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhna;Lhna;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhnc;->a:Lhna;

    iput-object p2, p0, Lhnc;->b:Lhna;

    return-void
.end method

.method public static a()Ljdc;
    .locals 1

    new-instance v0, Ljdc;

    invoke-direct {v0}, Ljdc;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhnc;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lhnc;

    iget-object v1, p0, Lhnc;->a:Lhna;

    iget-object v3, p1, Lhnc;->a:Lhna;

    invoke-virtual {v1, v3}, Lhna;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhnc;->b:Lhna;

    iget-object p1, p1, Lhnc;->b:Lhna;

    invoke-virtual {v1, p1}, Lhna;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lhnc;->a:Lhna;

    invoke-virtual {v0}, Lhna;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lhnc;->b:Lhna;

    invoke-virtual {v2}, Lhna;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lhnc;->a:Lhna;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhnc;->b:Lhna;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwoLevelThermalStates{early="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", late="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
