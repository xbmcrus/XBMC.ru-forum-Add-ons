.class public final Lojv;
.super Lojs;


# static fields
.field private static final b:[Ljava/lang/Object;


# instance fields
.field public a:I

.field private c:I

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lojv;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lojs;-><init>()V

    sget-object v0, Lojv;->b:[Ljava/lang/Object;

    iput-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    return-void
.end method

.method private final d(I)I
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {p1}, Lljr;->aw([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method private final e(I)I
    .locals 1

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {v0}, Lljr;->aw([Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final f(I)I
    .locals 1

    if-gez p1, :cond_0

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private final g(I)I
    .locals 1

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private final h(ILjava/util/Collection;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lojv;->c:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lojv;->a:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lojv;->a:I

    return-void
.end method

.method private final i(I)V
    .locals 4

    if-ltz p1, :cond_2

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lojv;->b:[Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lonm;->f(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    return-void

    :cond_1
    invoke-static {v1, p1}, Lljr;->aI(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iget v2, p0, Lojv;->c:I

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v1}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lojv;->c:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v2}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iput v3, p0, Lojv;->c:I

    iput-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Deque is too big."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lojv;->a:I

    return v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 7

    iget v0, p0, Lojv;->a:I

    invoke-static {p1, v0}, Lljr;->aK(II)V

    iget v0, p0, Lojv;->a:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lojv;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lojv;->i(I)V

    iget v0, p0, Lojv;->c:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result v0

    iget v2, p0, Lojv;->a:I

    add-int/lit8 v3, v2, 0x1

    shr-int/2addr v3, v1

    const/4 v4, 0x0

    if-ge p1, v3, :cond_2

    invoke-direct {p0, v0}, Lojv;->d(I)I

    move-result p1

    iget v0, p0, Lojv;->c:I

    invoke-direct {p0, v0}, Lojv;->d(I)I

    move-result v0

    iget v2, p0, Lojv;->c:I

    if-lt p1, v2, :cond_1

    iget-object v3, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v0

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, p1, 0x1

    invoke-static {v3, v3, v2, v4, v5}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lojv;->d:[Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    array-length v6, v3

    invoke-static {v3, v3, v5, v2, v6}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v5, v2, v4

    aput-object v5, v2, v3

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v2, v4, v1, v3}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    aput-object p2, v2, p1

    iput v0, p0, Lojv;->c:I

    goto :goto_2

    :cond_2
    iget p1, p0, Lojv;->c:I

    add-int/2addr p1, v2

    invoke-direct {p0, p1}, Lojv;->g(I)I

    move-result p1

    if-ge v0, p1, :cond_3

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v2, v3, v0, p1}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {v2, v2, v1, v4, p1}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v4

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, p1, v3, v0, v2}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_1
    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    aput-object p2, p1, v0

    :goto_2
    iget p1, p0, Lojv;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lojv;->a:I

    return-void

    :cond_4
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lojv;->i(I)V

    iget p1, p0, Lojv;->c:I

    invoke-direct {p0, p1}, Lojv;->d(I)I

    move-result p1

    iput p1, p0, Lojv;->c:I

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    aput-object p2, v0, p1

    iget p1, p0, Lojv;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lojv;->a:I

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lojv;->c(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lojv;->a:I

    invoke-static {p1, v0}, Lljr;->aK(II)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget v0, p0, Lojv;->a:I

    if-eq p1, v0, :cond_9

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lojv;->i(I)V

    iget v0, p0, Lojv;->c:I

    iget v2, p0, Lojv;->a:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result v0

    iget v2, p0, Lojv;->c:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lojv;->g(I)I

    move-result v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    iget v4, p0, Lojv;->a:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_4

    iget p1, p0, Lojv;->c:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_2

    if-ltz v0, :cond_0

    iget-object v1, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {v1, v1, v0, p1, v2}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v7, v2, p1

    sub-int/2addr v6, v0

    if-lt v6, v7, :cond_1

    invoke-static {v4, v4, v0, p1, v2}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    add-int v7, p1, v6

    invoke-static {v4, v4, v0, p1, v7}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    iget v4, p0, Lojv;->c:I

    add-int/2addr v4, v6

    invoke-static {p1, p1, v1, v4, v2}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v4, v4, v0, p1, v6}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    if-lt v3, v2, :cond_3

    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v2}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v3}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {p1, p1, v1, v3, v2}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    iput v0, p0, Lojv;->c:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lojv;->f(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lojv;->h(ILjava/util/Collection;)V

    goto :goto_2

    :cond_4
    add-int p1, v2, v3

    if-ge v2, v0, :cond_7

    add-int/2addr v3, v0

    iget-object v4, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v6, v4

    if-gt v3, v6, :cond_5

    invoke-static {v4, v4, p1, v2, v0}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_5
    if-lt p1, v6, :cond_6

    sub-int/2addr p1, v6

    invoke-static {v4, v4, p1, v2, v0}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_6
    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    invoke-static {v4, v4, v1, v3, v0}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {v0, v0, p1, v2, v3}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {v4, v4, v3, v1, v0}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v4, v0

    if-lt p1, v4, :cond_8

    sub-int/2addr p1, v4

    invoke-static {v0, v0, p1, v2, v4}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_8
    sub-int v6, v4, v3

    invoke-static {v0, v0, v1, v6, v4}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v0, p1, v2, v1}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_1
    invoke-direct {p0, v2, p2}, Lojv;->h(ILjava/util/Collection;)V

    :goto_2
    return v5

    :cond_9
    invoke-virtual {p0, p2}, Lojv;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_a
    return v1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lojv;->a:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lojv;->i(I)V

    iget v0, p0, Lojv;->c:I

    iget v1, p0, Lojv;->a:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lojv;->h(ILjava/util/Collection;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lojv;->a:I

    invoke-static {p1, v0}, Lljr;->aJ(II)V

    invoke-static {p0}, Lljr;->ad(Ljava/util/List;)I

    move-result v0

    const-string v1, "ArrayDeque is empty."

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lojv;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lojv;->c:I

    invoke-static {p0}, Lljr;->ad(Ljava/util/List;)I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lojv;->g(I)I

    move-result p1

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object v2, v0, p1

    iget p1, p0, Lojv;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lojv;->a:I

    return-object v1

    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lojv;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    iget v0, p0, Lojv;->c:I

    aget-object v1, p1, v0

    aput-object v2, p1, v0

    invoke-direct {p0, v0}, Lojv;->e(I)I

    move-result p1

    iput p1, p0, Lojv;->c:I

    iget p1, p0, Lojv;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lojv;->a:I

    return-object v1

    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v0, p0, Lojv;->c:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result v0

    iget-object v1, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v3, v1, v0

    iget v4, p0, Lojv;->a:I

    const/4 v5, 0x1

    shr-int/2addr v4, v5

    const/4 v6, 0x0

    if-ge p1, v4, :cond_5

    iget p1, p0, Lojv;->c:I

    if-lt v0, p1, :cond_4

    add-int/lit8 v4, p1, 0x1

    invoke-static {v1, v1, v4, p1, v0}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    invoke-static {v1, v1, v5, v6, v0}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v1, p1, v0

    aput-object v1, p1, v6

    iget v1, p0, Lojv;->c:I

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, p1, v4, v1, v0}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    iget v0, p0, Lojv;->c:I

    aput-object v2, p1, v0

    invoke-direct {p0, v0}, Lojv;->e(I)I

    move-result p1

    iput p1, p0, Lojv;->c:I

    goto :goto_2

    :cond_5
    iget p1, p0, Lojv;->c:I

    invoke-static {p0}, Lljr;->ad(Ljava/util/List;)I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lojv;->g(I)I

    move-result p1

    if-gt v0, p1, :cond_6

    iget-object v1, p0, Lojv;->d:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, p1, 0x1

    invoke-static {v1, v1, v0, v4, v5}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lojv;->d:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    array-length v7, v1

    invoke-static {v1, v1, v0, v4, v7}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v4, v0, v6

    aput-object v4, v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v0, v6, v5, v1}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_1
    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    aput-object v2, v0, p1

    :goto_2
    iget p1, p0, Lojv;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lojv;->a:I

    return-object v3
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lojv;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lojv;->i(I)V

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    iget v1, p0, Lojv;->c:I

    iget v2, p0, Lojv;->a:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lojv;->g(I)I

    move-result v1

    aput-object p1, v0, v1

    iget p1, p0, Lojv;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lojv;->a:I

    return-void
.end method

.method public final clear()V
    .locals 6

    iget v0, p0, Lojv;->c:I

    iget v1, p0, Lojv;->a:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result v0

    iget v1, p0, Lojv;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {v4, v3, v1, v0}, Lljr;->au([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v5, v4

    invoke-static {v4, v3, v1, v5}, Lljr;->au([Ljava/lang/Object;Ljava/lang/Object;II)V

    iget-object v1, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {v1, v3, v2, v0}, Lljr;->au([Ljava/lang/Object;Ljava/lang/Object;II)V

    :cond_1
    :goto_0
    iput v2, p0, Lojv;->c:I

    iput v2, p0, Lojv;->a:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lojv;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lojv;->a:I

    invoke-static {p1, v0}, Lljr;->aJ(II)V

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    iget v1, p0, Lojv;->c:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lojv;->g(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lojv;->c:I

    iget v1, p0, Lojv;->a:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result v0

    iget v1, p0, Lojv;->c:I

    if-ge v1, v0, :cond_1

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, p0, Lojv;->c:I

    sub-int/2addr v1, p1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lt v1, v0, :cond_5

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v2, v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget p1, p0, Lojv;->c:I

    sub-int/2addr v1, p1

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v1, p1

    iget p1, p0, Lojv;->c:I

    sub-int/2addr v1, p1

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lojv;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lojv;->c:I

    iget v1, p0, Lojv;->a:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result v0

    iget v1, p0, Lojv;->c:I

    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    add-int/2addr v0, v2

    if-gt v1, v0, :cond_5

    :goto_0
    iget-object v3, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p1, p0, Lojv;->c:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    if-eq v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-le v1, v0, :cond_5

    add-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v0, p1

    iget p1, p0, Lojv;->c:I

    sub-int/2addr v0, p1

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {v0}, Lljr;->aw([Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lojv;->c:I

    if-gt v1, v0, :cond_5

    :goto_2
    iget-object v3, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget p1, p0, Lojv;->c:I

    sub-int/2addr v0, p1

    return v0

    :cond_4
    if-eq v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    return v2
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lojv;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lojs;->b(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lojv;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lojv;->c:I

    iget v2, p0, Lojv;->a:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result v0

    iget v2, p0, Lojv;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v6, v6, v2

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lojv;->d:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    aput-object v6, v7, v5

    move v5, v8

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {p1, v3, v5, v0}, Lljr;->au([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_6

    :cond_3
    iget-object v5, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v5, v5

    move v6, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v9, v8, v2

    aput-object v3, v8, v2

    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lojv;->d:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    aput-object v9, v8, v6

    move v6, v10

    goto :goto_3

    :cond_4
    const/4 v7, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v6}, Lojv;->g(I)I

    move-result v2

    move v5, v2

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v6, v2, v1

    aput-object v3, v2, v1

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-direct {p0, v5}, Lojv;->e(I)I

    move-result v5

    goto :goto_5

    :cond_6
    const/4 v7, 0x1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v7

    :goto_6
    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    iget p1, p0, Lojv;->c:I

    sub-int/2addr v5, p1

    invoke-direct {p0, v5}, Lojv;->f(I)I

    move-result p1

    iput p1, p0, Lojv;->a:I

    return v4

    :cond_9
    :goto_7
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lojv;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lojv;->c:I

    iget v2, p0, Lojv;->a:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result v0

    iget v2, p0, Lojv;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v6, v6, v2

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lojv;->d:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    aput-object v6, v7, v5

    move v5, v8

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lojv;->d:[Ljava/lang/Object;

    invoke-static {p1, v3, v5, v0}, Lljr;->au([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_6

    :cond_3
    iget-object v5, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v5, v5

    move v6, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v9, v8, v2

    aput-object v3, v8, v2

    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lojv;->d:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    aput-object v9, v8, v6

    move v6, v10

    goto :goto_3

    :cond_4
    const/4 v7, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v6}, Lojv;->g(I)I

    move-result v2

    move v5, v2

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v6, v2, v1

    aput-object v3, v2, v1

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lojv;->d:[Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-direct {p0, v5}, Lojv;->e(I)I

    move-result v5

    goto :goto_5

    :cond_6
    const/4 v7, 0x1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v7

    :goto_6
    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    iget p1, p0, Lojv;->c:I

    sub-int/2addr v5, p1

    invoke-direct {p0, v5}, Lojv;->f(I)I

    move-result p1

    iput p1, p0, Lojv;->a:I

    return v4

    :cond_9
    :goto_7
    return v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lojv;->a:I

    invoke-static {p1, v0}, Lljr;->aJ(II)V

    iget v0, p0, Lojv;->c:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result p1

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lojv;->a:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lojv;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    iget v1, p0, Lojv;->a:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget v0, p0, Lojv;->c:I

    iget v1, p0, Lojv;->a:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lojv;->g(I)I

    move-result v4

    iget v3, p0, Lojv;->c:I

    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lljr;->aG([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v3, v1}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lojv;->d:[Ljava/lang/Object;

    array-length v1, v0

    iget v3, p0, Lojv;->c:I

    sub-int/2addr v1, v3

    invoke-static {v0, p1, v1, v2, v4}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_2
    :goto_0
    array-length v0, p1

    iget v1, p0, Lojv;->a:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_3
    return-object p1
.end method
