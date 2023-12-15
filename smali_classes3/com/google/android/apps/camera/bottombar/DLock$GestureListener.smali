.class public Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBar;Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBar;)V

    return-void
.end method

.method private a()V
    .locals 11

    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lsgcam/Shamim;->Directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v7, Lcom/google/android/apps/camera/bottombar/FileFilter;

    invoke-direct {v7}, Lcom/google/android/apps/camera/bottombar/FileFilter;-><init>()V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    const/4 v0, 0x0

    array-length v2, v7

    if-ge v0, v2, :cond_1

    new-instance v1, Lcom/mycompany/myapp40/MainActivity$100000001;

    invoke-direct {v1}, Lcom/mycompany/myapp40/MainActivity$100000001;-><init>()V

    invoke-static {v7, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v7}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->getFileNames([Ljava/io/File;)[Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    array-length v2, v7

    if-ge v0, v2, :cond_1

    iget-object v9, v5, Lcom/google/android/apps/camera/bottombar/BottomBar;->appContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v0, v9, v3, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const-string v3, "support_simple_spinner_dropdown_item"

    const v4, 0x1

    invoke-static {v3, v4}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v2, Landroid/widget/Spinner;

    invoke-direct {v2, v9}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const-string v3, "gm_ref_palette_grey900"

    const v4, 0x3

    invoke-static {v3, v4}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-static {v9}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->getCfg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "settings"

    const/4 v1, 0x0

    invoke-virtual {v9, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v8, "installed_config"

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "Select config"

    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Import"

    new-instance v4, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$1;

    invoke-direct {v4, p0, v6, v7, v2}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$1;-><init>(Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "Quit"

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Delete"

    new-instance v4, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;

    invoke-direct {v4, p0, v6, v7, v2}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$2;-><init>(Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v6, v5, Lcom/google/android/apps/camera/bottombar/BottomBar;->appContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v7, "Expected directory is empty. Requires .xml file!"

    invoke-static {v6, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->b(Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic a(Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->getFileSharedPreferences()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->onRestart()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    const-string p1, "Permission is required to access the memory!"

    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iget-object v1, v5, Lcom/google/android/apps/camera/bottombar/BottomBar;->appContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->a(Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic b(Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static getCfg(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "installed_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2611\ufe0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsgcam/Shamim;->Directory:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCfgFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "installed_config"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_xmlfilename_key"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "installed_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsgcam/Shamim;->Directory:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "suffixforconfig"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v2, "/storage/emulated/0"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "without_xml_prefix"

    invoke-static {v0}, Lsgcam/Shamim;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v2, ".xml"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v2, "_suffixforconfig"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\'\'"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDialogTheme()I
    .locals 4

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "cfg_dialog_dark"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1030225

    :goto_0
    return v0

    :cond_0
    const v0, 0x1030239

    goto :goto_0
.end method

.method public static getFileNames([Ljava/io/File;)[Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final apply(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_config_show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    move-object v3, p1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iget-object v0, v2, Lcom/google/android/apps/camera/bottombar/BottomBar;->appContext:Landroid/content/Context;

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "installed_config"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final getFileSharedPreferences()Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iget-object v1, v1, Lcom/google/android/apps/camera/bottombar/BottomBar;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "files/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iget-object v1, v1, Lcom/google/android/apps/camera/bottombar/BottomBar;->appContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shared_prefs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-object v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iget-boolean v6, v6, Lcom/google/android/apps/camera/bottombar/BottomBar;->isDoubleClick:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iget-wide v6, v6, Lcom/google/android/apps/camera/bottombar/BottomBar;->lastTouchUpTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1f4

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iput-boolean v4, v6, Lcom/google/android/apps/camera/bottombar/BottomBar;->isDoubleClick:Z

    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iput-wide v0, v6, Lcom/google/android/apps/camera/bottombar/BottomBar;->lastTouchUpTime:J

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->a()V

    :goto_0
    return v4

    :cond_0
    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iput-wide v0, v6, Lcom/google/android/apps/camera/bottombar/BottomBar;->lastTouchUpTime:J

    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iput-boolean v5, v6, Lcom/google/android/apps/camera/bottombar/BottomBar;->isDoubleClick:Z

    move v4, v5

    goto :goto_0
.end method

.method public final onRestart()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    sget v0, Lsgcam/Shamim;->HdrProcessing:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v2, v2, Lcom/google/android/apps/camera/bottombar/BottomBar;->appContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->apply(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    const-string v1, "HDR is processing. Try again shortly."

    invoke-static {v1}, Lsgcam/Shamim;->ShowToastDirect(Ljava/lang/String;)V

    return-void
.end method
