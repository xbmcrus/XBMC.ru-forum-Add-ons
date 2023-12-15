.class public final synthetic Lloadawb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gcam/simple/filechooser/ChooserDialog$Result;


# instance fields
.field private final synthetic f$0:Lloadawb;


# direct methods
.method public synthetic constructor <init>(Lloadawb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloadawb$1;->f$0:Lloadawb;

    return-void
.end method


# virtual methods
.method public final onChoosePath(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lloadawb$1;->f$0:Lloadawb;

    invoke-static {v0, p1, p2}, Lloadawb;->a(Lloadawb;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
