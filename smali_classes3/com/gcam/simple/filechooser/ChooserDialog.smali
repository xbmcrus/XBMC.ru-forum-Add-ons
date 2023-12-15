.class public Lcom/gcam/simple/filechooser/ChooserDialog;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static a:Ljava/io/FileFilter;

.field static b:Ljava/io/FileFilter;


# instance fields
.field private c:Ljava/util/List;

.field private d:Ljava/io/File;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/AlertDialog;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

.field private i:Z

.field private j:Ljava/io/FileFilter;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$2ks4aLyM4EwBvXxGz5PR2DQ43TU;->INSTANCE:Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$2ks4aLyM4EwBvXxGz5PR2DQ43TU;

    sput-object v0, Lcom/gcam/simple/filechooser/ChooserDialog;->a:Ljava/io/FileFilter;

    sget-object v0, Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc;->INSTANCE:Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc;

    sput-object v0, Lcom/gcam/simple/filechooser/ChooserDialog;->b:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    return-void
.end method

.method private static synthetic a(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    const-string v3, ".."

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    sget-object v1, Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$C9uQuNV58yqbMYnpXXHEPGCsC7M;->INSTANCE:Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$C9uQuNV58yqbMYnpXXHEPGCsC7M;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private static synthetic a(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b()Lcom/gcam/simple/filechooser/internals/DirAdapter;
    .locals 8

    invoke-direct {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->a()V

    new-instance v0, Lcom/gcam/simple/filechooser/internals/DirAdapter;

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    const-string v3, "li_row_textview"

    const v5, 0x1

    invoke-static {v3, v5}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gcam/simple/filechooser/internals/DirAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic b(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$2ks4aLyM4EwBvXxGz5PR2DQ43TU(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->b(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$5pSlKLMsEC2y7cf40Y93k4eMQlg(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gcam/simple/filechooser/ChooserDialog;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$C9uQuNV58yqbMYnpXXHEPGCsC7M(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/gcam/simple/filechooser/ChooserDialog;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public build()Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 4

    invoke-direct {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->b()Lcom/gcam/simple/filechooser/internals/DirAdapter;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->e:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Import configs"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    sget-object v2, Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$5pSlKLMsEC2y7cf40Y93k4eMQlg;->INSTANCE:Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$5pSlKLMsEC2y7cf40Y93k4eMQlg;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->f:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-ltz p3, :cond_3

    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, ".."

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/gcam/simple/filechooser/ChooserDialog$Result;->onChoosePath(Ljava/lang/String;Ljava/io/File;)V

    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->f:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->b()Lcom/gcam/simple/filechooser/internals/DirAdapter;

    :cond_3
    :goto_1
    return-void
.end method

.method public show()Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 2

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->f:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "call build() before show()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public with(Landroid/content/Context;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 0

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public withChosenListener(Lcom/gcam/simple/filechooser/ChooserDialog$Result;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 0

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    return-object p0
.end method

.method public withDateFormat()Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    const-string v0, "yyyy/MM/dd HH:mm:ss"

    invoke-virtual {p0, v0}, Lcom/gcam/simple/filechooser/ChooserDialog;->withDateFormat(Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    move-result-object v0

    return-object v0
.end method

.method public withDateFormat(Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 0

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->k:Ljava/lang/String;

    return-object p0
.end method

.method public withFilter(Ljava/io/FileFilter;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/gcam/simple/filechooser/ChooserDialog;->withFilter(ZZ[Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    return-object p0
.end method

.method public withFilter(ZZLjava/io/FileFilter;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gcam/simple/filechooser/ChooserDialog;->withFilter(ZZ[Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    iput-object p3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    return-object p0
.end method

.method public varargs withFilter(ZZ[Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    iput-boolean p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/gcam/simple/filechooser/ChooserDialog;->a:Ljava/io/FileFilter;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/gcam/simple/filechooser/ChooserDialog;->b:Ljava/io/FileFilter;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;

    iget-boolean v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    invoke-direct {p1, v0, p2, p3}, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;-><init>(ZZ[Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    return-object p0
.end method

.method public varargs withFilter(Z[Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/gcam/simple/filechooser/ChooserDialog;->withFilter(ZZ[Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    move-result-object p1

    return-object p1
.end method

.method public withFilterRegex(ZZLjava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 2

    iput-boolean p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    new-instance p1, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;

    iget-boolean v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    const/4 v1, 0x2

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;-><init>(ZZLjava/lang/String;I)V

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    return-object p0
.end method

.method public withFilterRegex(ZZLjava/lang/String;I)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    iput-boolean p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    new-instance p1, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;

    iget-boolean v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    invoke-direct {p1, v0, p2, p3, p4}, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;-><init>(ZZLjava/lang/String;I)V

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    return-object p0
.end method

.method public withResources(III)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 0

    return-object p0
.end method

.method public withStartFile(Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    :goto_0
    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    :cond_1
    return-object p0
.end method
