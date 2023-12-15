.class public Lcom/gcam/simple/filechooser/internals/DirAdapter;
.super Landroid/widget/ArrayAdapter;


# static fields
.field private static final a:Ljava/lang/Object;

.field static a:Ljava/text/SimpleDateFormat;

.field private static b:Landroid/util/TypedValue;


# instance fields
.field b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 6

    const-string v0, "text1"

    const v2, 0x4

    invoke-static {v0, v2}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, p3, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a(Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .locals 2

    const-string v0, "text1"

    const v1, 0x4

    invoke-static {v0, v1}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, p3, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-direct {p0, p2, p4}, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v3, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/gcam/simple/filechooser/internals/DirAdapter;->b:Landroid/util/TypedValue;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/gcam/simple/filechooser/internals/DirAdapter;->b:Landroid/util/TypedValue;

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v1, Lcom/gcam/simple/filechooser/internals/DirAdapter;->b:Landroid/util/TypedValue;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v1, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    sget-object v0, Lcom/gcam/simple/filechooser/internals/DirAdapter;->b:Landroid/util/TypedValue;

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "yyyy/MM/dd HH:mm:ss"

    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/gcam/simple/filechooser/internals/DirAdapter;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    const-string v0, "text1"

    const v7, 0x4

    invoke-static {v0, v7}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "txt_size"

    const v7, 0x4

    invoke-static {v1, v7}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "txt_date"

    const v7, 0x4

    invoke-static {v2, v7}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/gcam/simple/filechooser/internals/DirAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    const/16 v4, 0x8

    if-nez v3, :cond_2

    const-string p1, ".."

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/gcam/simple/filechooser/internals/DirAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "quantum_gm_ic_info_outline_black_24"

    const v7, 0x0

    invoke-static {v1, v7}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/gcam/simple/filechooser/internals/DirAdapter;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/gcam/simple/filechooser/internals/DirAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "quantum_gm_ic_info_outline_black_24"

    const v7, 0x0

    invoke-static {v6, v7}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string p3, ""

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/gcam/simple/filechooser/internals/DirAdapter;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p3, ".."

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a:Ljava/text/SimpleDateFormat;

    new-instance p3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/gcam/simple/filechooser/internals/DirAdapter;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/gcam/simple/filechooser/internals/DirAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v4, "quantum_gm_ic_info_outline_black_24"

    const v7, 0x0

    invoke-static {v4, v7}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v4

    invoke-static {p1, v4}, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/gcam/simple/filechooser/internals/FileUtil;->getReadableFileSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/gcam/simple/filechooser/internals/DirAdapter;->a:Ljava/text/SimpleDateFormat;

    new-instance p3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2
.end method
