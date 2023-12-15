.class public Lcom/longtab/miui/switch;
.super Ljava/lang/Object;


# static fields
.field static final INSTANCE:Landroid/app/Application;

.field static app_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x0

    sput-object v2, Lcom/longtab/miui/switch;->app_context:Landroid/content/Context;

    :try_start_0
    const-string/jumbo v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    sput-object v2, Lcom/longtab/miui/switch;->INSTANCE:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/longtab/miui/switch;->app_context:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/longtab/miui/switch;->INSTANCE:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/longtab/miui/switch;->app_context:Landroid/content/Context;

    goto :goto_0
.end method

.method public static setLongClickListener(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/longtab/miui/switch$1;

    invoke-direct {v0}, Lcom/longtab/miui/switch$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
