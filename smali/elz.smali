.class public final Lelz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelz;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lelz;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lelx;

    invoke-static {v0}, Lely;->b(Lelx;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lelz;->a()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    return-object v0
.end method
