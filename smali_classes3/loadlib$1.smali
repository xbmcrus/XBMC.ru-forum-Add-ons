.class public final synthetic Lloadlib$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gcam/simple/filechooser/ChooserDialog$Result;


# instance fields
.field private final synthetic f$0:Lloadlib;


# direct methods
.method public synthetic constructor <init>(Lloadlib;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloadlib$1;->f$0:Lloadlib;

    return-void
.end method


# virtual methods
.method public final onChoosePath(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lloadlib$1;->f$0:Lloadlib;

    invoke-static {v0, p1, p2}, Lloadlib;->a(Lloadlib;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
