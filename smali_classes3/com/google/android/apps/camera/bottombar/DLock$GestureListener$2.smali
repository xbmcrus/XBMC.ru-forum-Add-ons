.class Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;

.field private final synthetic f$1:Ljava/io/File;

.field private final synthetic f$2:[Ljava/lang/String;

.field private final synthetic f$3:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;->f$0:Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;

    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;->f$3:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;->f$0:Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;->f$3:Landroid/widget/Spinner;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->b(Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V

    return-void
.end method
