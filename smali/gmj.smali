.class public final Lgmj;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Loiw;

.field private final j:Loiw;

.field private final k:Loiw;

.field private final l:Loiw;

.field private final m:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgmj;->a:Loiw;

    iput-object p2, p0, Lgmj;->b:Loiw;

    iput-object p3, p0, Lgmj;->c:Loiw;

    iput-object p4, p0, Lgmj;->d:Loiw;

    iput-object p5, p0, Lgmj;->e:Loiw;

    iput-object p6, p0, Lgmj;->f:Loiw;

    iput-object p7, p0, Lgmj;->g:Loiw;

    iput-object p8, p0, Lgmj;->h:Loiw;

    iput-object p9, p0, Lgmj;->i:Loiw;

    iput-object p10, p0, Lgmj;->j:Loiw;

    iput-object p11, p0, Lgmj;->k:Loiw;

    iput-object p12, p0, Lgmj;->l:Loiw;

    iput-object p13, p0, Lgmj;->m:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgmj;
    .locals 15

    new-instance v14, Lgmj;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lgmj;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v14
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lgmj;->a:Loiw;

    check-cast v0, Lijz;

    invoke-virtual {v0}, Lijz;->a()Lika;

    move-result-object v0

    iget-object v1, p0, Lgmj;->b:Loiw;

    iget-object v2, p0, Lgmj;->c:Loiw;

    iget-object v3, p0, Lgmj;->d:Loiw;

    iget-object v4, p0, Lgmj;->e:Loiw;

    iget-object v5, p0, Lgmj;->f:Loiw;

    iget-object v6, p0, Lgmj;->g:Loiw;

    iget-object v7, p0, Lgmj;->h:Loiw;

    iget-object v8, p0, Lgmj;->i:Loiw;

    iget-object v9, p0, Lgmj;->j:Loiw;

    check-cast v9, Lelt;

    invoke-virtual {v9}, Lelt;->a()Ljvs;

    move-result-object v9

    iget-object v10, p0, Lgmj;->k:Loiw;

    check-cast v10, Lfwo;

    invoke-virtual {v10}, Lfwo;->a()Lfuz;

    move-result-object v10

    iget-object v11, p0, Lgmj;->l:Loiw;

    invoke-interface {v11}, Loiw;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldhi;

    iget-object v12, p0, Lgmj;->m:Loiw;

    invoke-interface {v12}, Loiw;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldja;

    new-instance v13, Ljava/util/EnumMap;

    const-class v14, Lgml;

    invoke-direct {v13, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Lsgcam/Shamim;->GetC2api()I

    move-result v14

    if-eqz v14, :cond_10

    sget-object v14, Lgml;->p:Lgml;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkfl;

    invoke-interface {v13, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lika;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-static {v13, v1, v8, v10, v11}, Lewq;->g(Ljava/util/Map;Loiw;Loiw;Lfuz;Ldhi;)V

    sget-object v0, Lgml;->m:Lgml;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfl;

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :sswitch_1
    sget-object v0, Lgml;->l:Lgml;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfl;

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :sswitch_2
    invoke-virtual {v10}, Lklw;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Lklw;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ldho;->bn:Ldhj;

    invoke-interface {v11, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ldib;->y:Ldhj;

    invoke-interface {v11, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v2, Lklv;->b:Lklv;

    if-ne v0, v2, :cond_1

    sget-object v0, Lgml;->c:Lgml;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lgml;->c:Lgml;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loiw;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfl;

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v9, Ljvk;

    iget-object v0, v9, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lgml;->b:Lgml;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgml;->g:Lgml;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lgml;->b:Lgml;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfl;

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lgml;->g:Lgml;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lgml;->g:Lgml;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loiw;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfl;

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v2, Lklv;->a:Lklv;

    if-ne v0, v2, :cond_2

    invoke-virtual {v10}, Lklw;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lklw;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ldho;->cj:Ldhj;

    invoke-interface {v11, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ldab;

    const/4 v2, 0x3

    invoke-direct {v1, v13, v2}, Ldab;-><init>(Ljava/util/Map;I)V

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lgml;->a:Lgml;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfl;

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    invoke-static {}, Lsgcam/default/DeviceCodeNames;->GoogleDevices()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v10}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->b:Lklv;

    if-eq v0, v1, :cond_5

    :cond_4
    invoke-virtual {v10}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_6

    sget-object v0, Ldib;->a:Ldhk;

    invoke-interface {v11}, Ldhi;->f()V

    goto :goto_1

    :cond_5
    sget-object v0, Lgml;->i:Lgml;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfl;

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    sget-object v0, Ldhh;->g:Ldhj;

    invoke-interface {v11, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->b:Lklv;

    if-eq v0, v1, :cond_8

    :cond_7
    sget-object v0, Ldhq;->ao:Ldhj;

    invoke-interface {v11, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface {v11}, Ldhi;->e()V

    goto/16 :goto_5

    :cond_8
    sget-object v0, Lgml;->m:Lgml;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfl;

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :sswitch_3
    sget-object v0, Ldho;->bo:Ldhj;

    invoke-interface {v11, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lgml;->l:Lgml;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkfl;

    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v10}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v2, Lklv;->b:Lklv;

    if-ne v0, v2, :cond_a

    invoke-virtual {v12}, Ldja;->C()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lgml;->i:Lgml;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkfl;

    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    invoke-virtual {v12}, Ldja;->B()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v2, 0x0

    new-array v4, v2, [I

    invoke-interface {v10, v0, v4}, Lkli;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_c

    aget v7, v0, v2

    const/16 v9, 0x8

    if-ne v7, v9, :cond_b

    sget-object v0, Lgml;->k:Lgml;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkfl;

    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v13, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_4
    invoke-static {v13, v1, v8, v10, v11}, Lewq;->g(Ljava/util/Map;Loiw;Loiw;Lfuz;Ldhi;)V

    sget-object v0, Ldhv;->j:Ldhj;

    invoke-interface {v11, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Ldhv;->i:Ldhj;

    invoke-interface {v11, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    invoke-virtual {v10}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->b:Lklv;

    if-ne v0, v1, :cond_f

    sget-object v0, Ldih;->b:Ldhj;

    invoke-interface {v11, v0}, Ldhi;->k(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Ldie;->a:Ldhj;

    invoke-interface {v11}, Ldhi;->d()V

    :cond_e
    sget-object v0, Lgml;->m:Lgml;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfl;

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_f
    sget-object v0, Ldij;->a:Ldhk;

    invoke-interface {v11}, Ldhi;->g()V

    :goto_5
    return-object v13

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch

    :cond_10
    invoke-virtual {v0}, Lika;->ordinal()I

    move-result v0

    const/16 v5, 0xc

    if-eq v0, v5, :cond_11

    sget-object v0, Lgml;->p:Lgml;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfl;

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lgml;->a:Lgml;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfl;

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lgml;->l:Lgml;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfl;

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_11
    sget-object v0, Lgml;->a:Lgml;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfl;

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lgml;->l:Lgml;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfl;

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lgml;->m:Lgml;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfl;

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-object v13
.end method
