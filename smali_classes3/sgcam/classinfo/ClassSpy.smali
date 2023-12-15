.class public Lsgcam/classinfo/ClassSpy;
.super Ljava/lang/Object;


# static fields
.field private static synthetic $SWITCH_TABLE$MethodName$ClassMember:[I

.field public static GetInfosSaved:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$MethodName$ClassMember()[I
    .locals 3

    sget-object v0, Lsgcam/classinfo/ClassSpy;->$SWITCH_TABLE$MethodName$ClassMember:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lsgcam/classinfo/ClassMember;->values()[Lsgcam/classinfo/ClassMember;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsgcam/classinfo/ClassMember;->ALL:Lsgcam/classinfo/ClassMember;

    invoke-virtual {v1}, Lsgcam/classinfo/ClassMember;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lsgcam/classinfo/ClassMember;->CLASS:Lsgcam/classinfo/ClassMember;

    invoke-virtual {v1}, Lsgcam/classinfo/ClassMember;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lsgcam/classinfo/ClassMember;->CONSTRUCTOR:Lsgcam/classinfo/ClassMember;

    invoke-virtual {v1}, Lsgcam/classinfo/ClassMember;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lsgcam/classinfo/ClassMember;->FIELD:Lsgcam/classinfo/ClassMember;

    invoke-virtual {v1}, Lsgcam/classinfo/ClassMember;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lsgcam/classinfo/ClassMember;->METHOD:Lsgcam/classinfo/ClassMember;

    invoke-virtual {v1}, Lsgcam/classinfo/ClassMember;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lsgcam/classinfo/ClassSpy;->$SWITCH_TABLE$MethodName$ClassMember:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PrintAsLog(Ljava/lang/String;)V
    .locals 8

    const-string v0, "CLASS_INFO.JAVA"

    invoke-static {v0, p0}, Lsgcam/Shamim;->LogWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static main()V
    .locals 15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v0, "java.lang.String"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v0, "Class:%n  %s%n%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    const-string v3, "Package:%n  %s%n%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/classinfo/ClassSpy;->GetInfosSaved:Ljava/lang/String;

    invoke-static {}, Lsgcam/classinfo/ClassSpy;->$SWITCH_TABLE$MethodName$ClassMember()[I

    move-result-object v0

    const-string v1, "ALL"

    invoke-static {v1}, Lsgcam/classinfo/ClassMember;->valueOf(Ljava/lang/String;)Lsgcam/classinfo/ClassMember;

    move-result-object v1

    invoke-virtual {v1}, Lsgcam/classinfo/ClassMember;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v1, "Constuctors"

    invoke-static {v0, v1}, Lsgcam/classinfo/ClassSpy;->printMembers([Ljava/lang/reflect/Member;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "Fields"

    invoke-static {v0, v1}, Lsgcam/classinfo/ClassSpy;->printMembers([Ljava/lang/reflect/Member;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "Methods"

    invoke-static {v0, v1}, Lsgcam/classinfo/ClassSpy;->printMembers([Ljava/lang/reflect/Member;Ljava/lang/String;)V

    invoke-static {v2}, Lsgcam/classinfo/ClassSpy;->printClasses(Ljava/lang/Class;)V

    :goto_1
    sget-object v0, Lsgcam/classinfo/ClassSpy;->GetInfosSaved:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lsgcam/classinfo/ClassSpy;->GetInfosSaved:Ljava/lang/String;

    invoke-static {v0}, Lsgcam/classinfo/ClassSpy;->PrintAsLog(Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v0, "-- No Package --"

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Lsgcam/classinfo/ClassSpy;->printMembers([Ljava/lang/reflect/Member;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    :pswitch_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "Fields"

    invoke-static {v0, v1}, Lsgcam/classinfo/ClassSpy;->printMembers([Ljava/lang/reflect/Member;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "Methods"

    invoke-static {v0, v1}, Lsgcam/classinfo/ClassSpy;->printMembers([Ljava/lang/reflect/Member;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-static {v2}, Lsgcam/classinfo/ClassSpy;->printClasses(Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v1, "Constuctors"

    invoke-static {v0, v1}, Lsgcam/classinfo/ClassSpy;->printMembers([Ljava/lang/reflect/Member;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "Fields"

    invoke-static {v0, v1}, Lsgcam/classinfo/ClassSpy;->printMembers([Ljava/lang/reflect/Member;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "Methods"

    invoke-static {v0, v1}, Lsgcam/classinfo/ClassSpy;->printMembers([Ljava/lang/reflect/Member;Ljava/lang/String;)V

    invoke-static {v2}, Lsgcam/classinfo/ClassSpy;->printClasses(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static printClasses(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lsgcam/classinfo/ClassSpy;->GetInfosSaved:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lsgcam/classinfo/ClassSpy;->GetInfosSaved:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "Classes:%n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_2

    array-length v0, v3

    if-nez v0, :cond_1

    const-string v0, "  -- No member interfaces, classes, or enums --%n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "%n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/classinfo/ClassSpy;->GetInfosSaved:Ljava/lang/String;

    return-void

    :cond_2
    aget-object v5, v3, v0

    const-string v6, "  %s%n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static printMembers([Ljava/lang/reflect/Member;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lsgcam/classinfo/ClassSpy;->GetInfosSaved:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lsgcam/classinfo/ClassSpy;->GetInfosSaved:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "%s:%n"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_2

    array-length v0, p0

    if-nez v0, :cond_1

    const-string v0, "  -- No %s --%n"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "%n"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsgcam/classinfo/ClassSpy;->GetInfosSaved:Ljava/lang/String;

    return-void

    :cond_2
    aget-object v0, p0, v1

    instance-of v5, v0, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_4

    const-string v5, "  %s%n"

    new-array v6, v7, [Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->toGenericString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    instance-of v5, v0, Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_5

    const-string v5, "  %s%n"

    new-array v6, v7, [Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    instance-of v5, v0, Ljava/lang/reflect/Method;

    if-eqz v5, :cond_3

    const-string v5, "  %s%n"

    new-array v6, v7, [Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
