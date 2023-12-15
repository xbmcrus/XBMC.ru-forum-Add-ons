.class public final synthetic Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc;

    invoke-direct {v0}, Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc;-><init>()V

    sput-object v0, Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc;->INSTANCE:Lcom/gcam/simple/filechooser/-$$Lambda$ChooserDialog$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc;

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

    invoke-static {p1}, Lcom/gcam/simple/filechooser/ChooserDialog;->lambda$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
