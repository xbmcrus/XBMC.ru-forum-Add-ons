.class public final synthetic Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$2ks4aLyM4EwBvXxGz5PR2DQ43TU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$2ks4aLyM4EwBvXxGz5PR2DQ43TU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$2ks4aLyM4EwBvXxGz5PR2DQ43TU;

    invoke-direct {v0}, Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$2ks4aLyM4EwBvXxGz5PR2DQ43TU;-><init>()V

    sput-object v0, Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$2ks4aLyM4EwBvXxGz5PR2DQ43TU;->INSTANCE:Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$2ks4aLyM4EwBvXxGz5PR2DQ43TU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    invoke-static {p1}, Lcom/gcam/simple/filechooser/ChooserDialog;->lambda$2ks4aLyM4EwBvXxGz5PR2DQ43TU(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
