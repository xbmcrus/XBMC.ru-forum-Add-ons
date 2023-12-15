.class Lsgcam/crash/CrashHandler$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsgcam/crash/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsgcam/crash/CrashHandler;


# direct methods
.method constructor <init>(Lsgcam/crash/CrashHandler;)V
    .locals 0

    iput-object p1, p0, Lsgcam/crash/CrashHandler$1;->this$0:Lsgcam/crash/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lsgcam/crash/CrashHandler$1;->this$0:Lsgcam/crash/CrashHandler;

    invoke-static {v0}, Lsgcam/crash/CrashHandler;->access$000(Lsgcam/crash/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "The cam is crashed and saved the crashlog on /SGCAM/CRASH LOG/ directory. Send the file to the developer."

    invoke-static {v1}, Lsgcam/Shamim;->ShowToastDirect(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
