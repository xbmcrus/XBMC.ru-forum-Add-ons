.class public final Ljca;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljay;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljay;-><init>(I)V

    sput-object v0, Ljca;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljca;->a:Ljava/lang/String;

    iput p2, p0, Ljca;->b:I

    iput-wide p3, p0, Ljca;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljca;->a:Ljava/lang/String;

    iput-wide p2, p0, Ljca;->c:J

    const/4 p1, -0x1

    iput p1, p0, Ljca;->b:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    iget-wide v0, p0, Ljca;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Ljca;->b:I

    int-to-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Ljca;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljca;

    iget-object v0, p0, Ljca;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p1, Ljca;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljca;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Ljca;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljca;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Ljca;->a()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljca;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0}, Ljca;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ljca;->a:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {v2, v1, v0}, Ljhp;->ah(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0}, Ljca;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-static {v2, v1, v0}, Ljhp;->ah(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    invoke-static {v0, p0}, Ljhp;->ag(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Ljca;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Ljca;->b:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Ljca;->a()J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Ljhp;->h(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
