.class public final Lcpk;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;
.implements Lcqu;
.implements Lcqs;
.implements Lcuc;
.implements Lcbi;


# static fields
.field public static final a:Lnak;


# instance fields
.field public A:Lcuo;

.field public final B:Ldfa;

.field public final C:Ldja;

.field public final D:Lcvr;

.field private final E:Lgft;

.field private final F:Liec;

.field private final G:Lcsd;

.field private final H:Lcps;

.field private I:J

.field private final J:Lcvr;

.field private final K:Ljew;

.field public final b:Lklv;

.field public final c:Ljuh;

.field public final d:Lcqa;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/List;

.field public final g:Lcrz;

.field public final h:Lcbn;

.field public final i:Lhlu;

.field public final j:Lcvx;

.field public final k:Lcvf;

.field public final l:Ldhi;

.field public final m:Lcuf;

.field public final n:Ljava/util/concurrent/ScheduledExecutorService;

.field public final o:Lhkl;

.field public final p:Loiw;

.field public final q:Logd;

.field public final r:Lcqx;

.field public final s:Lcsc;

.field public final t:I

.field public final u:Lcsm;

.field public v:Z

.field public w:Ljava/util/concurrent/ScheduledFuture;

.field public x:Lcpu;

.field public y:Lcpj;

.field public final z:Lftu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/Video2ActiveCamcorderCaptureSession"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcpk;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljuh;Lgft;Liec;Ldfa;Lcqa;Lcsd;Lcvr;Lcps;Lcvr;Lcsa;Ldbf;Lcbn;Lftu;Ldja;Lhlu;Lcvx;Lcvf;Ldhi;Lcuf;Ljava/util/concurrent/ScheduledExecutorService;Lhkl;Loiw;Logd;Ljew;Lcqx;Lcsm;Lcsc;[B[B[B)V
    .locals 3

    move-object v0, p0

    move-object/from16 v1, p27

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcpk;->e:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcpk;->f:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcpk;->v:Z

    move-object v2, p12

    iput-object v2, v0, Lcpk;->h:Lcbn;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcpk;->z:Lftu;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcpk;->C:Ldja;

    invoke-virtual {p11}, Ldbf;->d()Lklv;

    move-result-object v2

    iput-object v2, v0, Lcpk;->b:Lklv;

    move-object v2, p1

    iput-object v2, v0, Lcpk;->c:Ljuh;

    move-object v2, p2

    iput-object v2, v0, Lcpk;->E:Lgft;

    move-object v2, p3

    iput-object v2, v0, Lcpk;->F:Liec;

    move-object v2, p4

    iput-object v2, v0, Lcpk;->B:Ldfa;

    move-object v2, p5

    iput-object v2, v0, Lcpk;->d:Lcqa;

    move-object v2, p6

    iput-object v2, v0, Lcpk;->G:Lcsd;

    move-object v2, p7

    iput-object v2, v0, Lcpk;->J:Lcvr;

    move-object v2, p8

    iput-object v2, v0, Lcpk;->H:Lcps;

    invoke-virtual {p10}, Lcsa;->a()Lcrz;

    move-result-object v2

    iput-object v2, v0, Lcpk;->g:Lcrz;

    move-object v2, p9

    iput-object v2, v0, Lcpk;->D:Lcvr;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcpk;->j:Lcvx;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcpk;->i:Lhlu;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcpk;->k:Lcvf;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcpk;->l:Ldhi;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcpk;->m:Lcuf;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcpk;->n:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcpk;->o:Lhkl;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcpk;->p:Loiw;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcpk;->q:Logd;

    move-object/from16 v2, p24

    iput-object v2, v0, Lcpk;->K:Ljew;

    move-object/from16 v2, p25

    iput-object v2, v0, Lcpk;->r:Lcqx;

    move-object/from16 v2, p26

    iput-object v2, v0, Lcpk;->u:Lcsm;

    iput-object v1, v0, Lcpk;->s:Lcsc;

    iget v1, v1, Lcsc;->z:I

    iput v1, v0, Lcpk;->t:I

    return-void
.end method


# virtual methods
.method public final a(Ljyk;)V
    .locals 2

    iget-boolean v0, p1, Ljyk;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Ldgu;->a:Ldhk;

    new-instance v0, Lcfz;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, v1}, Lcfz;-><init>(Lcpk;Ljyk;I)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcpk;->n(Ljava/lang/Runnable;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcpk;->d:Lcqa;

    invoke-virtual {v0, p1}, Lcqa;->a(Ljyk;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcpk;->D:Lcvr;

    sget-object v1, Lcua;->c:Lcua;

    invoke-virtual {v0, v1}, Lcvr;->r(Lcua;)V

    iget-object v0, p0, Lcpk;->E:Lgft;

    const-class v1, Lcpk;

    invoke-interface {v0, v1}, Lgft;->b(Ljava/lang/Class;)V

    iget-object v0, p0, Lcpk;->G:Lcsd;

    invoke-virtual {v0}, Lcsd;->d()V

    iget-object v0, p0, Lcpk;->F:Liec;

    invoke-interface {v0}, Liec;->i()V

    iget-object v0, p0, Lcpk;->F:Liec;

    invoke-interface {v0}, Liec;->f()V

    iget-object v0, p0, Lcpk;->J:Lcvr;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    const v1, 0x7f130030

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    iget-object v0, p0, Lcpk;->K:Ljew;

    invoke-virtual {v0}, Ljew;->A()V

    iget-object v0, p0, Lcpk;->r:Lcqx;

    invoke-interface {v0}, Lcqx;->g()V

    iget-object v0, p0, Lcpk;->u:Lcsm;

    invoke-interface {v0}, Lcsm;->f()V

    return-void
.end method

.method public final bZ()V
    .locals 0

    return-void
.end method

.method public final bp(Lbkc;)Lccx;
    .locals 1

    iget-object v0, p0, Lcpk;->j:Lcvx;

    invoke-interface {v0, p1}, Lcvx;->f(Lbkc;)Lccx;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcpk;->y:Lcpj;

    sget-object v2, Lcpj;->b:Lcpj;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcpk;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x1bd

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Capture session has been closed."

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcpk;->G:Lcsd;

    invoke-virtual {v1}, Lcsd;->close()V

    iget-object v1, p0, Lcpk;->y:Lcpj;

    sget-object v2, Lcpj;->c:Lcpj;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcpk;->c:Ljuh;

    new-instance v2, Lclr;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Lclr;-><init>(Lcpk;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v1, p0, Lcpk;->y:Lcpj;

    sget-object v2, Lcpj;->e:Lcpj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x7

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcpk;->m(ZI)Lnou;

    move-result-object v1

    invoke-interface {v1}, Lnou;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_2
    sget-object v2, Lcpk;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x1bc

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "failed to close current recording: %s"

    invoke-interface {v2, v3, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcpk;->y:Lcpj;

    sget-object v2, Lcpj;->c:Lcpj;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcpj;->d:Lcpj;

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcpk;->c:Ljuh;

    new-instance v2, Lclr;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3}, Lclr;-><init>(Lcpk;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v1, p0, Lcpk;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcpk;->i:Lhlu;

    invoke-virtual {v1}, Lhlu;->a()V

    iget-object v1, p0, Lcpk;->m:Lcuf;

    invoke-virtual {v1}, Lcuf;->d()V

    sget-object v1, Lcpj;->b:Lcpj;

    invoke-virtual {p0, v1}, Lcpk;->k(Lcpj;)V

    iget-object v1, p0, Lcpk;->D:Lcvr;

    sget-object v2, Lcua;->c:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->r(Lcua;)V

    iget-object v1, p0, Lcpk;->D:Lcvr;

    sget-object v2, Lcua;->b:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->r(Lcua;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcpk;->m(ZI)Lnou;

    iget-object v0, p0, Lcpk;->d:Lcqa;

    invoke-virtual {v0, v1}, Lcqa;->k(Z)V

    return-void
.end method

.method public final dg(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 44

    const v0, 0x8

    const v1, 0x16

    add-int v0, v0, v1

    rem-int v0, v0, v1

    if-gtz v0, :cond_0

    goto/32 :goto_2c

    :cond_0
    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    iget-object v3, v1, Lcvy;->a:Loiw;

    goto/32 :goto_3

    nop

    :goto_2
    move-object/from16 v1, p4

    goto/32 :goto_f

    nop

    :goto_3
    check-cast v3, Lctm;

    goto/32 :goto_1b

    nop

    :goto_4
    move-object/from16 v1, p4

    goto/32 :goto_18

    nop

    :goto_5
    goto :goto_17

    :goto_6
    move-object v3, v0

    :try_start_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :catchall_0
    move-exception v0

    goto/32 :goto_a

    nop

    :goto_7
    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    goto/32 :goto_11

    nop

    :goto_8
    iget-object v4, v3, Lctl;->c:Ljava/lang/Object;

    goto/32 :goto_1e

    nop

    :goto_9
    move-object/from16 v1, p4

    goto/32 :goto_1c

    nop

    :goto_a
    move-object v3, v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :catchall_1
    move-exception v0

    goto/32 :goto_12

    nop

    :goto_b
    check-cast v4, Lctl;

    goto/32 :goto_8

    nop

    :goto_c
    check-cast v1, Lcvy;

    goto/32 :goto_e

    nop

    :goto_d
    move-object/from16 v1, p4

    goto/32 :goto_c

    nop

    :goto_e
    goto :goto_13

    :catchall_2
    move-exception v0

    goto/32 :goto_4

    nop

    :goto_f
    check-cast v1, Lcvy;

    goto/32 :goto_2a

    nop

    :goto_10
    invoke-virtual {v2, v3}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    goto/32 :goto_7

    nop

    :goto_11
    return-void

    :catchall_3
    move-exception v0

    goto/32 :goto_d

    nop

    :goto_12
    move-object v3, v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3

    :catchall_4
    move-exception v0

    :goto_13
    move-object v2, v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/32 :goto_16

    nop

    :goto_14
    goto :goto_15

    :catchall_5
    move-exception v0

    :goto_15
    goto/32 :goto_6

    nop

    :goto_16
    goto :goto_1a

    :goto_17
    goto/32 :goto_19

    nop

    :goto_18
    check-cast v1, Lcvy;

    goto/32 :goto_14

    nop

    :goto_19
    throw v2

    :goto_1a
    goto/32 :goto_5

    nop

    :goto_1b
    invoke-virtual {v3}, Lctm;->a()Lctl;

    move-result-object v3

    goto/32 :goto_29

    nop

    :goto_1c
    check-cast v1, Lcvy;

    goto/32 :goto_1

    nop

    :goto_1d
    sget-object v3, Lcua;->b:Lcua;

    goto/32 :goto_10

    nop

    :goto_1e
    monitor-enter v4

    :try_start_6
    move-object v5, v3

    check-cast v5, Lctl;

    move-object/from16 v2, p3

    check-cast v2, Lcsc;

    iput-object v2, v3, Lctl;->i:Lcsc;

    move-object v5, v3

    check-cast v5, Lctl;

    iget-object v5, v3, Lctl;->e:Loiw;

    check-cast v5, Lcrs;

    invoke-virtual {v5}, Lcrs;->a()Lcrr;

    move-result-object v5

    new-instance v6, Loxq;

    iget-object v7, v2, Lcsc;->F:Ldne;

    iget-object v7, v7, Ldne;->a:Ljava/lang/Object;

    check-cast v7, Lklw;

    invoke-virtual {v7}, Lklw;->f()I

    move-result v7

    invoke-direct {v6, v7}, Loxq;-><init>(I)V

    new-instance v10, Lbkb;

    const/4 v7, 0x0

    invoke-direct {v10, v6, v7, v7}, Lbkb;-><init>(Loxq;[B[B)V

    new-instance v6, Lcbh;

    iget-object v9, v5, Lcrr;->h:Lftu;

    iget-object v11, v5, Lcrr;->b:Lcda;

    iget-boolean v12, v5, Lcrr;->c:Z

    iget-object v13, v5, Lcrr;->d:Ldhi;

    iget-object v7, v2, Lcsc;->F:Ldne;

    iget-object v14, v7, Ldne;->a:Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v17}, Lcbh;-><init>(Lftu;Lbkb;Lcda;ZLdhi;Lkli;[B[B[B)V

    iput-object v6, v5, Lcrr;->g:Lcbh;

    iget-object v6, v5, Lcrr;->e:Ldms;

    invoke-virtual {v6}, Ldms;->b()V

    new-instance v6, Lcqf;

    const/16 v7, 0xa

    invoke-direct {v6, v5, v7}, Lcqf;-><init>(Lcrr;I)V

    invoke-static {}, Ljuh;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_1f

    :cond_1
    iget-object v7, v5, Lcrr;->f:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1f
    move-object v6, v3

    check-cast v6, Lctl;

    iput-object v5, v3, Lctl;->t:Lcrr;

    move-object v5, v3

    check-cast v5, Lctl;

    iget-object v5, v3, Lctl;->t:Lcrr;

    invoke-static {}, Lday;->d()Ldmv;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lctl;

    iput-object v5, v3, Lctl;->u:Ldmv;

    move-object v5, v3

    check-cast v5, Lctl;

    iget-object v5, v3, Lctl;->I:Ldja;

    new-instance v6, Lccn;

    iget-object v9, v5, Ldja;->b:Ljava/lang/Object;

    iget-object v8, v5, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v8}, Lcqv;->m()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v8, v2, Lcsc;->F:Ldne;

    iget-object v11, v8, Ldne;->a:Ljava/lang/Object;

    iget-object v12, v5, Ldja;->a:Ljava/lang/Object;

    iget-object v13, v2, Lcsc;->a:Lkll;

    iget-object v5, v5, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v5}, Lcqv;->a()Lika;

    move-result-object v14

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lccn;-><init>(Lfbz;Ljava/lang/Boolean;Lkli;Ljvs;Lkll;Lika;)V

    move-object v5, v3

    check-cast v5, Lctl;

    iput-object v6, v3, Lctl;->v:Lccn;

    new-instance v5, Lfzj;

    move-object v6, v3

    check-cast v6, Lctl;

    iget-object v6, v3, Lctl;->y:Ljwb;

    move-object v8, v3

    check-cast v8, Lctl;

    iget-object v8, v3, Lctl;->C:Lkha;

    iget-object v8, v8, Lkha;->a:Lklj;

    iget-object v2, v2, Lcsc;->F:Ldne;

    iget-object v2, v2, Ldne;->a:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Lctl;

    iget-object v9, v3, Lctl;->z:Ljava/util/concurrent/Executor;

    invoke-direct {v5, v6, v8, v2, v9}, Lfzj;-><init>(Ljwb;Lklj;Lkli;Ljava/util/concurrent/Executor;)V

    move-object v2, v3

    check-cast v2, Lctl;

    iput-object v5, v3, Lctl;->w:Lfzj;

    move-object v2, v3

    check-cast v2, Lctl;

    iget-object v2, v3, Lctl;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    move-object v5, v3

    check-cast v5, Lctl;

    move-object/from16 v5, p1

    check-cast v5, Liha;

    iput-object v5, v3, Lctl;->o:Liha;

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    move-object v2, v3

    check-cast v2, Lctl;

    iget-object v2, v3, Lctl;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    move-object v5, v3

    check-cast v5, Lctl;

    iget-object v5, v3, Lctl;->i:Lcsc;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v3

    check-cast v5, Lctl;

    move-object/from16 v5, p2

    check-cast v5, Landroid/view/Surface;

    iput-object v5, v3, Lctl;->p:Landroid/view/Surface;

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    move-object v2, v3

    check-cast v2, Lctl;

    iget-object v2, v3, Lctl;->c:Ljava/lang/Object;

    monitor-enter v2

    const v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    if-eqz v5, :cond_1b

    check-cast v5, Lmqp;

    invoke-virtual/range {v5 .. v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1b
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    move-object v5, v3

    check-cast v5, Lctl;

    iget-object v5, v3, Lctl;->i:Lcsc;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v3

    check-cast v6, Lctl;

    iget-object v6, v3, Lctl;->t:Lcrr;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v5, Lcsc;->a:Lkll;

    iget-object v9, v5, Lcsc;->b:Lkll;

    move-object v10, v3

    check-cast v10, Lctl;

    iget-object v10, v3, Lctl;->H:Lcvr;

    iget-object v10, v10, Lcvr;->a:Ljava/lang/Object;

    invoke-static {}, Lkfl;->a()Lkfk;

    move-result-object v10

    sget-object v11, Lkfm;->c:Lkfm;

    invoke-virtual {v10, v11}, Lkfk;->k(Lkfm;)V

    move-object v11, v3

    check-cast v11, Lctl;

    iget-object v11, v3, Lctl;->o:Liha;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v11, Liha;->a:Landroid/view/Surface;

    invoke-static {v11}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v11

    iput-object v11, v10, Lkfk;->f:Lmqp;

    invoke-virtual {v10, v9}, Lkfk;->b(Lkll;)V

    iget-object v11, v5, Lcsc;->f:Lkaf;

    invoke-virtual {v10, v11}, Lkfk;->i(Lkaf;)V

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Lkfk;->e(Z)V

    const-wide/16 v11, 0x1

    invoke-virtual {v10, v11, v12}, Lkfk;->d(J)V

    invoke-virtual {v10}, Lkfk;->a()Lkfl;

    move-result-object v10

    invoke-static {}, Lkfl;->a()Lkfk;

    move-result-object v13

    sget-object v14, Lkfm;->e:Lkfm;

    invoke-virtual {v13, v14}, Lkfk;->k(Lkfm;)V

    invoke-virtual {v13, v9}, Lkfk;->b(Lkll;)V

    iget-object v14, v5, Lcsc;->d:Ljwu;

    invoke-virtual {v14}, Ljwu;->b()Lkaf;

    move-result-object v14

    invoke-virtual {v13, v14}, Lkfk;->i(Lkaf;)V

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Lkfk;->h(I)V

    invoke-virtual {v13, v15}, Lkfk;->e(Z)V

    invoke-virtual {v13, v11, v12}, Lkfk;->d(J)V

    invoke-virtual {v13}, Lkfk;->a()Lkfl;

    move-result-object v13

    new-instance v14, Lgfz;

    invoke-direct {v14}, Lgfz;-><init>()V

    invoke-virtual {v14, v6}, Lgfz;->n(Lkfg;)V

    invoke-static {}, Lkeq;->a()Lkep;

    move-result-object v6

    iget-object v7, v5, Lcsc;->c:Ljws;

    invoke-virtual {v7}, Ljws;->f()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lkez;->a:Lkez;

    goto :goto_20

    :cond_2
    sget-object v7, Lkez;->b:Lkez;

    :goto_20
    invoke-virtual {v6, v7}, Lkep;->g(Lkez;)V

    new-instance v7, Lkfd;

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v12, v5, Lcsc;->m:Landroid/util/Range;

    invoke-static {v11, v12}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-static {v11}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v11

    const/4 v12, 0x3

    invoke-direct {v7, v12, v11}, Lkfd;-><init>(ILjava/util/List;)V

    invoke-virtual {v6, v7}, Lkep;->j(Lkfd;)V

    new-instance v7, Lkfd;

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v15, v5, Lcsc;->m:Landroid/util/Range;

    invoke-static {v11, v15}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-static {v11}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v11

    invoke-direct {v7, v12, v11}, Lkfd;-><init>(ILjava/util/List;)V

    invoke-virtual {v6, v7}, Lkep;->i(Lkfd;)V

    new-instance v7, Lkfd;

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v15, v5, Lcsc;->n:Landroid/util/Range;

    invoke-static {v11, v15}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-static {v11}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v11

    const/4 v15, 0x4

    invoke-direct {v7, v15, v11}, Lkfd;-><init>(ILjava/util/List;)V

    iput-object v7, v6, Lkep;->a:Lkfd;

    invoke-virtual {v6, v8}, Lkep;->f(Lkll;)V

    invoke-virtual {v6, v13}, Lkep;->d(Lkfl;)V

    invoke-virtual {v6, v10}, Lkep;->d(Lkfl;)V

    move-object v7, v3

    check-cast v7, Lctl;

    iget-object v7, v3, Lctl;->L:Ldfa;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iget-boolean v11, v5, Lcsc;->q:Z

    const/4 v15, 0x1

    if-eq v15, v11, :cond_3

    const/4 v11, 0x1

    goto :goto_21

    :cond_3
    const/4 v11, 0x2

    :goto_21
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15, v11}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v11, v5, Lcsc;->q:Z

    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15, v11}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v15, 0x0

    if-eqz v11, :cond_4

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v11, v5, Lcsc;->q:Z

    if-eqz v11, :cond_6

    iget-object v11, v7, Ldfa;->e:Ljava/lang/Object;

    check-cast v11, Ldhi;

    sget-object v12, Ldif;->a:Ldhj;

    invoke-interface {v11}, Ldhi;->e()V

    iget-object v11, v7, Ldfa;->e:Ljava/lang/Object;

    check-cast v11, Ldhi;

    sget-object v12, Ldgu;->ad:Ldhj;

    invoke-interface {v11, v12}, Ldhi;->k(Ldhj;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x80

    goto :goto_22

    :cond_5
    const/4 v11, 0x1

    goto :goto_22

    :cond_6
    const/4 v11, 0x0

    :goto_22
    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v11}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v11, v5, Lcsc;->r:Z

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v11}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v11, Liuz;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    sget-object v11, Liuz;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v11, v12}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v11, v5, Lcsc;->s:Z

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v11}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v11, Liuy;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v11, :cond_8

    iget-object v11, v7, Ldfa;->b:Ljava/lang/Object;

    check-cast v11, Lcsa;

    invoke-virtual {v11}, Lcsa;->a()Lcrz;

    move-result-object v11

    iget-object v11, v11, Lcrz;->j:Ljwb;

    invoke-interface {v11}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcwx;->e:Lcwx;

    if-ne v11, v12, :cond_8

    sget-object v11, Liuy;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v11, :cond_8

    sget-object v11, Liuy;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v11, v15}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v11, v7, Ldfa;->e:Ljava/lang/Object;

    check-cast v11, Ldhi;

    sget-object v12, Ldho;->b:Ldhk;

    invoke-interface {v11}, Ldhi;->c()V

    iget-object v7, v7, Ldfa;->e:Ljava/lang/Object;

    check-cast v7, Ldhi;

    invoke-interface {v7}, Ldhi;->b()V

    iget-object v7, v5, Lcsc;->F:Ldne;

    iget-object v7, v7, Ldne;->a:Ljava/lang/Object;

    check-cast v7, Lklw;

    invoke-virtual {v7}, Lklw;->A()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lfva;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v12, :cond_a

    sget-object v12, Lfva;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v12}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    sget-object v7, Lfva;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v7, :cond_a

    sget-object v7, Lfva;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7, v12}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v6, v8}, Lkep;->c(Ljava/util/Set;)V

    invoke-virtual {v6, v14}, Lkep;->k(Lkfg;)V

    move-object v7, v3

    check-cast v7, Lctl;

    iget-object v7, v3, Lctl;->u:Ldmv;

    invoke-virtual {v6, v7}, Lkep;->e(Lkdy;)V

    iget-object v7, v5, Lcsc;->e:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, 0x0

    if-gtz v7, :cond_b

    move-object v8, v3

    check-cast v8, Lctl;

    invoke-virtual {v8, v5}, Lctl;->b(Lcsc;)Z

    move-result v7

    if-nez v7, :cond_c

    :cond_b
    invoke-static {}, Lkfl;->a()Lkfk;

    move-result-object v7

    invoke-virtual {v7, v9}, Lkfk;->b(Lkll;)V

    iget-object v8, v5, Lcsc;->e:Lmqp;

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkaf;

    invoke-virtual {v7, v8}, Lkfk;->i(Lkaf;)V

    const/16 v8, 0x100

    invoke-virtual {v7, v8}, Lkfk;->h(I)V

    const/4 v12, 0x3

    invoke-virtual {v7, v12}, Lkfk;->c(I)V

    sget-object v8, Lkfm;->a:Lkfm;

    invoke-virtual {v7, v8}, Lkfk;->k(Lkfm;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lkfk;->e(Z)V

    invoke-virtual {v7}, Lkfk;->a()Lkfl;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkep;->d(Lkfl;)V

    goto :goto_23

    :cond_c
    const/4 v12, 0x3

    const/4 v7, 0x0

    :goto_23
    move-object v8, v3

    check-cast v8, Lctl;

    invoke-virtual {v3, v5}, Lctl;->b(Lcsc;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static {}, Lkfl;->a()Lkfk;

    move-result-object v8

    sget-object v11, Lkfm;->a:Lkfm;

    invoke-virtual {v8, v11}, Lkfk;->k(Lkfm;)V

    invoke-virtual {v8, v9}, Lkfk;->b(Lkll;)V

    iget-object v9, v5, Lcsc;->d:Ljwu;

    iget-object v11, v5, Lcsc;->F:Ldne;

    iget-object v11, v11, Ldne;->a:Ljava/lang/Object;

    check-cast v11, Lklw;

    const/16 v15, 0x23

    invoke-virtual {v11, v15}, Lklw;->x(I)Ljava/util/List;

    move-result-object v11

    new-instance v12, Lkaf;

    const/4 v15, 0x0

    invoke-direct {v12, v15, v15}, Lkaf;-><init>(II)V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_24
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkaf;

    move-object/from16 v21, v11

    iget v11, v15, Lkaf;->a:I

    move-object/from16 v22, v14

    const/16 v14, 0x12c

    if-lt v11, v14, :cond_e

    iget v11, v15, Lkaf;->b:I

    if-lt v11, v14, :cond_e

    invoke-static {v15}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v11

    invoke-virtual {v9}, Ljwu;->b()Lkaf;

    move-result-object v14

    invoke-static {v14}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v12}, Lkaf;->b()J

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v11, v23, v25

    if-eqz v11, :cond_d

    invoke-virtual {v15}, Lkaf;->b()J

    move-result-wide v23

    invoke-virtual {v12}, Lkaf;->b()J

    move-result-wide v25

    cmp-long v11, v23, v25

    if-gez v11, :cond_e

    :cond_d
    move-object v12, v15

    :cond_e
    move-object/from16 v11, v21

    move-object/from16 v14, v22

    goto :goto_24

    :cond_f
    move-object/from16 v22, v14

    invoke-virtual {v8, v12}, Lkfk;->i(Lkaf;)V

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Lkfk;->h(I)V

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lkfk;->e(Z)V

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lkfk;->c(I)V

    const-wide/16 v11, 0x1

    invoke-virtual {v8, v11, v12}, Lkfk;->d(J)V

    invoke-virtual {v8}, Lkfk;->a()Lkfl;

    move-result-object v8

    invoke-virtual {v6, v8}, Lkep;->d(Lkfl;)V

    move-object v14, v8

    goto :goto_25

    :cond_10
    move-object/from16 v22, v14

    const/4 v15, 0x1

    const/4 v14, 0x0

    :goto_25
    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Lctl;

    iget-boolean v9, v3, Lctl;->J:Z

    if-eqz v9, :cond_11

    sget-object v9, Lkfc;->a:Lkfc;

    invoke-virtual {v8, v9}, Lmwl;->g(Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {v8}, Lmwl;->f()Lmwn;

    move-result-object v8

    invoke-virtual {v6, v8}, Lkep;->h(Lmwn;)V

    move-object v8, v3

    check-cast v8, Lctl;

    iget-object v8, v3, Lctl;->C:Lkha;

    invoke-virtual {v6}, Lkep;->a()Lkeq;

    move-result-object v6

    invoke-virtual {v8, v6}, Lkha;->a(Lkeq;)Lken;

    move-result-object v6

    move-object v8, v3

    check-cast v8, Lctl;

    iput-object v6, v3, Lctl;->j:Lken;

    move-object v8, v3

    check-cast v8, Lctl;

    iget-object v8, v3, Lctl;->L:Ldfa;

    iget-object v9, v8, Ldfa;->b:Ljava/lang/Object;

    check-cast v9, Lcsa;

    invoke-virtual {v9}, Lcsa;->a()Lcrz;

    move-result-object v9

    iget-object v11, v8, Ldfa;->f:Ljava/lang/Object;

    check-cast v11, Lcvr;

    sget-object v12, Lcua;->b:Lcua;

    invoke-virtual {v11, v12}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    iget-object v12, v9, Lcrz;->a:Ljwb;

    new-instance v15, Lckj;

    const/16 v1, 0xd

    invoke-direct {v15, v6, v1}, Lckj;-><init>(Lken;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {v12, v15, v1}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v9, Lcrz;->l:Ljvs;

    new-instance v12, Lckj;

    const/16 v15, 0xf

    invoke-direct {v12, v6, v15}, Lckj;-><init>(Lken;I)V

    sget-object v15, Lnnv;->a:Lnnv;

    invoke-interface {v1, v12, v15}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v9, Lcrz;->f:Ljwb;

    new-instance v12, Lckj;

    const/16 v15, 0x10

    invoke-direct {v12, v6, v15}, Lckj;-><init>(Lken;I)V

    sget-object v15, Lnnv;->a:Lnnv;

    invoke-interface {v1, v12, v15}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v8, Ldfa;->a:Ljava/lang/Object;

    check-cast v1, Lkoe;

    iget-boolean v1, v1, Lkoe;->d:Z

    if-eqz v1, :cond_12

    iget-object v1, v8, Ldfa;->e:Ljava/lang/Object;

    check-cast v1, Ldhi;

    sget-object v12, Ldho;->ag:Ldhj;

    invoke-interface {v1, v12}, Ldhi;->k(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v9, Lcrz;->b:Ljvs;

    new-instance v12, Lccp;

    const/16 v15, 0xd

    invoke-direct {v12, v6, v9, v15}, Lccp;-><init>(Lken;Lcrz;I)V

    sget-object v15, Lnnv;->a:Lnnv;

    invoke-interface {v1, v12, v15}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    goto :goto_26

    :cond_12
    iget-object v1, v9, Lcrz;->s:Lgdk;

    new-instance v12, Lckj;

    const/16 v15, 0x11

    invoke-direct {v12, v6, v15}, Lckj;-><init>(Lken;I)V

    sget-object v15, Lnnv;->a:Lnnv;

    invoke-virtual {v1, v12, v15}, Ljwh;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    :goto_26
    iget-object v1, v9, Lcrz;->m:Ljvs;

    new-instance v12, Lccp;

    const/16 v15, 0xe

    invoke-direct {v12, v5, v6, v15}, Lccp;-><init>(Lcsc;Lken;I)V

    sget-object v15, Lnnv;->a:Lnnv;

    invoke-interface {v1, v12, v15}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v9, Lcrz;->g:Ljwb;

    new-instance v12, Lctn;

    const/4 v15, 0x0

    invoke-direct {v12, v6, v9, v5, v15}, Lctn;-><init>(Lken;Lcrz;Lcsc;I)V

    sget-object v15, Lnnv;->a:Lnnv;

    invoke-interface {v1, v12, v15}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v9, Lcrz;->h:Ljwb;

    new-instance v12, Lctn;

    const/4 v15, 0x2

    invoke-direct {v12, v9, v6, v5, v15}, Lctn;-><init>(Lcrz;Lken;Lcsc;I)V

    sget-object v15, Lnnv;->a:Lnnv;

    invoke-interface {v1, v12, v15}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    sget-object v1, Liuy;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v1, :cond_13

    iget-object v1, v9, Lcrz;->j:Ljwb;

    new-instance v12, Lckj;

    const/4 v15, 0x0

    invoke-direct {v12, v6, v15}, Lckj;-><init>(Lken;I)V

    sget-object v15, Lnnv;->a:Lnnv;

    invoke-interface {v1, v12, v15}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    :cond_13
    sget-object v1, Liuy;->m:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v1, :cond_14

    iget-object v1, v8, Ldfa;->e:Ljava/lang/Object;

    check-cast v1, Ldhi;

    sget-object v12, Ldgu;->R:Ldhj;

    invoke-interface {v1, v12}, Ldhi;->k(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, v5, Lcsc;->A:Z

    if-eqz v1, :cond_14

    iget-object v1, v9, Lcrz;->g:Ljwb;

    new-instance v12, Lccp;

    const/16 v15, 0xc

    invoke-direct {v12, v8, v6, v15}, Lccp;-><init>(Ldfa;Lken;I)V

    sget-object v15, Lnnv;->a:Lnnv;

    invoke-interface {v1, v12, v15}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    :cond_14
    iget-object v1, v9, Lcrz;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    const/16 v15, 0xe

    if-eqz v1, :cond_15

    iget-object v1, v9, Lcrz;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwb;

    new-instance v9, Lckj;

    invoke-direct {v9, v6, v15}, Lckj;-><init>(Lken;I)V

    sget-object v12, Lnnv;->a:Lnnv;

    invoke-interface {v1, v9, v12}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    :cond_15
    iget-object v1, v8, Ldfa;->c:Ljava/lang/Object;

    check-cast v1, Lgto;

    iget-boolean v9, v1, Lgto;->a:Z

    if-eqz v9, :cond_16

    sget-object v9, Liuz;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v9, :cond_16

    new-instance v9, Lccf;

    invoke-direct {v9, v1, v6}, Lccf;-><init>(Lgto;Lken;)V

    iget-object v1, v8, Ldfa;->c:Ljava/lang/Object;

    check-cast v1, Lgto;

    invoke-virtual {v1, v9}, Lgto;->a(Lgtn;)V

    new-instance v1, Lchq;

    const/4 v12, 0x6

    invoke-direct {v1, v8, v9, v12}, Lchq;-><init>(Ldfa;Lgtn;I)V

    invoke-virtual {v11, v1}, Ljuf;->d(Lkad;)V

    goto :goto_27

    :cond_16
    const/4 v12, 0x4

    :goto_27
    invoke-interface {v6}, Lken;->c()Lkeo;

    move-result-object v1

    invoke-interface {v1, v10}, Lkeo;->b(Lkfl;)Lkfj;

    move-result-object v1

    move-object v8, v3

    check-cast v8, Lctl;

    iput-object v1, v3, Lctl;->k:Lkfj;

    invoke-interface {v6}, Lken;->c()Lkeo;

    move-result-object v1

    invoke-interface {v1, v13}, Lkeo;->b(Lkfl;)Lkfj;

    move-result-object v1

    move-object v8, v3

    check-cast v8, Lctl;

    iput-object v1, v3, Lctl;->l:Lkfj;

    if-eqz v7, :cond_17

    invoke-interface {v6}, Lken;->c()Lkeo;

    move-result-object v1

    invoke-interface {v1, v7}, Lkeo;->b(Lkfl;)Lkfj;

    move-result-object v1

    move-object v7, v3

    check-cast v7, Lctl;

    iput-object v1, v3, Lctl;->m:Lkfj;

    :cond_17
    if-eqz v14, :cond_18

    invoke-interface {v6}, Lken;->c()Lkeo;

    move-result-object v1

    invoke-interface {v1, v14}, Lkeo;->b(Lkfl;)Lkfj;

    move-result-object v1

    move-object v7, v3

    check-cast v7, Lctl;

    iput-object v1, v3, Lctl;->n:Lkfj;

    :cond_18
    move-object v1, v3

    check-cast v1, Lctl;

    iget-object v1, v3, Lctl;->d:Lcqd;

    new-instance v7, Lily;

    iget-object v8, v1, Lcqd;->c:Lklj;

    invoke-interface {v6}, Lken;->c()Lkeo;

    move-result-object v9

    invoke-interface {v9}, Lkeo;->d()Lkli;

    move-result-object v9

    iget-object v10, v1, Lcqd;->d:Ldhi;

    invoke-direct {v7, v8, v9, v10}, Lily;-><init>(Lklj;Lkli;Ldhi;)V

    iget-boolean v8, v5, Lcsc;->p:Z

    if-eqz v8, :cond_1a

    iget-object v8, v1, Lcqd;->f:Ldja;

    invoke-virtual {v8, v5}, Ldja;->c(Lcsc;)Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, v1, Lcqd;->a:Lcqn;

    invoke-interface {v8, v6, v5, v7}, Lcqn;->a(Lken;Lcsc;Lily;)Lcqo;

    move-result-object v7

    iput-object v7, v1, Lcqd;->e:Lcqr;

    move-object/from16 v28, v3

    move-object/from16 v30, v14

    move-object/from16 v29, v22

    const/16 p1, 0xb

    const/16 p2, 0x0

    const/16 p3, 0x1

    const/16 v21, 0x2

    const/16 v27, 0x3

    goto/16 :goto_28

    :cond_19
    iget-object v7, v1, Lcqd;->i:Llij;

    new-instance v13, Lcqh;

    iget-object v8, v7, Llij;->a:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcsa;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Llij;->c:Ljava/lang/Object;

    invoke-static {}, Lftp;->d()Lgfp;

    move-result-object v10

    iget-object v8, v7, Llij;->f:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lccg;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Llij;->e:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Ldqx;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Llij;->g:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v21, v8

    check-cast v21, Lkoe;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Llij;->b:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v23, v8

    check-cast v23, Ldhi;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Llij;->d:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljvs;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v8, v13

    const/16 v18, 0x4

    const/16 v27, 0x3

    move-object/from16 v12, v16

    move-object/from16 v28, v3

    move-object v3, v13

    move-object/from16 v13, v21

    move-object/from16 v30, v14

    move-object/from16 v29, v22

    move-object/from16 v14, v23

    const/16 p1, 0xb

    const/16 p2, 0x0

    const/16 p3, 0x1

    const/16 v21, 0x2

    move-object v15, v7

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    invoke-direct/range {v8 .. v20}, Lcqh;-><init>(Lcsa;Lgfp;Lccg;Ldqx;Lkoe;Ldhi;Ljvs;Lken;Lcsc;[B[B[B)V

    iput-object v3, v1, Lcqd;->e:Lcqr;

    goto :goto_28

    :cond_1a
    move-object/from16 v28, v3

    move-object/from16 v30, v14

    move-object/from16 v29, v22

    const/16 p1, 0xb

    const/16 p2, 0x0

    const/16 p3, 0x1

    const/16 v21, 0x2

    const/16 v27, 0x3

    iget-object v3, v1, Lcqd;->h:Llij;

    new-instance v7, Lcqj;

    iget-object v8, v3, Llij;->a:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcsa;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v3, Llij;->d:Ljava/lang/Object;

    invoke-static {}, Lftp;->d()Lgfp;

    move-result-object v10

    iget-object v8, v3, Llij;->c:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcvr;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v3, Llij;->g:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lkoe;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v3, Llij;->f:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Ldhi;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v3, Llij;->e:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Ldqx;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Llij;->b:Ljava/lang/Object;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljvs;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v8, v7

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    invoke-direct/range {v8 .. v20}, Lcqj;-><init>(Lcsa;Lgfp;Lcvr;Lkoe;Ldhi;Ldqx;Ljvs;Lken;Lcsc;[B[B[B)V

    const/16 v21, 0x2

    iput-object v7, v1, Lcqd;->e:Lcqr;

    :goto_28
    iget-object v3, v1, Lcqd;->g:Lcvr;

    sget-object v7, Lcua;->b:Lcua;

    invoke-virtual {v3, v7}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v3

    iget-object v1, v1, Lcqd;->e:Lcqr;

    invoke-virtual {v3, v1}, Ljuf;->d(Lkad;)V

    iget-boolean v1, v5, Lcsc;->B:Z

    if-eqz v1, :cond_1b

    move-object/from16 v8, v30

    if-eqz v8, :cond_1b

    move-object/from16 v3, v28

    check-cast v3, Lctl;

    move-object/from16 v1, v28

    iget-object v1, v1, Lctl;->L:Ldfa;

    new-instance v3, Lcvm;

    move-object/from16 v7, v29

    invoke-direct {v3, v6, v8, v5, v7}, Lcvm;-><init>(Lken;Lkfl;Lcsc;Lgfz;)V

    iget-object v5, v1, Ldfa;->b:Ljava/lang/Object;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    iget-object v1, v1, Ldfa;->a:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lesm;

    check-cast v1, Lcvr;

    iput-object v1, v6, Lesm;->b:Lcvr;

    move-object v1, v5

    check-cast v1, Lesm;

    iput-object v3, v1, Lesm;->c:Lcvm;

    move-object v1, v5

    check-cast v1, Lesm;

    iget-object v1, v1, Lesm;->b:Lcvr;

    const-class v3, Lcvr;

    invoke-static {v1, v3}, Llho;->I(Ljava/lang/Object;Ljava/lang/Class;)V

    move-object v1, v5

    check-cast v1, Lesm;

    iget-object v1, v1, Lesm;->c:Lcvm;

    const-class v3, Lcvr;

    invoke-static {v1, v3}, Llho;->I(Ljava/lang/Object;Ljava/lang/Class;)V

    move-object v1, v5

    check-cast v1, Lesm;

    iget-object v1, v1, Lesm;->a:Lesh;

    move-object v3, v5

    check-cast v3, Lesm;

    iget-object v3, v3, Lesm;->c:Lcvm;

    check-cast v5, Lesm;

    iget-object v5, v5, Lesm;->b:Lcvr;

    sget-object v6, Lcvu;->a:Lcla;

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    sget-object v6, Logo;->a:Logk;

    invoke-static/range {p3 .. p3}, Llho;->L(I)Ljava/util/List;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Llho;->L(I)Ljava/util/List;

    move-result-object v7

    iget-object v8, v1, Lesh;->bo:Loiw;

    invoke-static {v8, v6}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v6, v7}, Llho;->F(Ljava/util/List;Ljava/util/List;)Logo;

    move-result-object v6

    iget-object v7, v1, Lesh;->bn:Loiw;

    invoke-static {v7, v6}, Ldsl;->d(Loiw;Loiw;)Ldsl;

    move-result-object v6

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    sget-object v7, Lfzf;->a:Lftp;

    invoke-static {v7}, Logj;->b(Loiw;)Loiw;

    move-result-object v7

    iget-object v8, v1, Lesh;->L:Loiw;

    invoke-static {v8, v7}, Lfvf;->e(Loiw;Loiw;)Lfvf;

    move-result-object v8

    invoke-static {v8}, Logj;->b(Loiw;)Loiw;

    move-result-object v8

    new-instance v10, Lcvp;

    invoke-direct {v10, v3}, Lcvp;-><init>(Lcvm;)V

    new-instance v12, Lcvn;

    invoke-direct {v12, v3}, Lcvn;-><init>(Lcvm;)V

    invoke-static {v12}, Logj;->b(Loiw;)Loiw;

    move-result-object v9

    invoke-static {v10, v9}, Ldsl;->c(Loiw;Loiw;)Ldsl;

    move-result-object v9

    invoke-static {v9}, Logj;->b(Loiw;)Loiw;

    move-result-object v14

    iget-object v9, v1, Lesh;->f:Loiw;

    invoke-static {v9, v6}, Ldsl;->f(Loiw;Loiw;)Ldsl;

    move-result-object v9

    sget-object v11, Lfzd;->a:Lftp;

    invoke-static {v11}, Logj;->b(Loiw;)Loiw;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lfvl;->n(Loiw;)Lfvl;

    move-result-object v11

    new-instance v15, Lcvo;

    invoke-direct {v15, v3}, Lcvo;-><init>(Lcvm;)V

    iget-object v13, v1, Lesh;->av:Loiw;

    move-object/from16 v20, v7

    new-instance v7, Lfmj;

    move-object/from16 p3, v6

    move-object/from16 v22, v8

    const/4 v6, 0x1

    invoke-direct {v7, v13, v15, v6}, Lfmj;-><init>(Loiw;Loiw;I)V

    iget-object v8, v1, Lesh;->f:Loiw;

    invoke-static {v7, v8}, Ldxb;->i(Loiw;Loiw;)Ldxb;

    move-result-object v8

    invoke-static {v8}, Logj;->b(Loiw;)Loiw;

    move-result-object v8

    new-instance v13, Lfwo;

    invoke-direct {v13, v10, v6}, Lfwo;-><init>(Loiw;I)V

    new-instance v6, Lckn;

    move-object/from16 v24, v5

    const/16 v5, 0x11

    invoke-direct {v6, v13, v15, v5}, Lckn;-><init>(Loiw;Loiw;I)V

    invoke-static {v8, v6}, Ldxb;->h(Loiw;Loiw;)Ldxb;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Logj;->b(Loiw;)Loiw;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Logj;->b(Loiw;)Loiw;

    move-result-object v5

    move-object/from16 v17, v13

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Llho;->L(I)Ljava/util/List;

    move-result-object v13

    move-object/from16 v16, v15

    invoke-static/range {v21 .. v21}, Llho;->L(I)Ljava/util/List;

    move-result-object v15

    invoke-static {v9, v15}, Llho;->G(Loiw;Ljava/util/List;)V

    invoke-static {v11, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v5, v15}, Llho;->G(Loiw;Ljava/util/List;)V

    invoke-static {v13, v15}, Llho;->F(Ljava/util/List;Ljava/util/List;)Logo;

    move-result-object v5

    iget-object v9, v1, Lesh;->bp:Loiw;

    sget-object v11, Logo;->a:Logk;

    invoke-static {v11, v9, v5}, Lfol;->f(Loiw;Loiw;Loiw;)Lfol;

    move-result-object v5

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v5

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v9

    invoke-static {v9}, Logj;->b(Loiw;)Loiw;

    move-result-object v9

    invoke-static {v10, v14}, Ldsl;->b(Loiw;Loiw;)Ldsl;

    move-result-object v11

    invoke-static {v11}, Logj;->b(Loiw;)Loiw;

    move-result-object v11

    invoke-static {v10, v11, v5}, Ldng;->g(Loiw;Loiw;Loiw;)Ldng;

    move-result-object v11

    invoke-static {v11}, Logj;->b(Loiw;)Loiw;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Llho;->L(I)Ljava/util/List;

    move-result-object v13

    move-object/from16 v26, v3

    const/4 v15, 0x0

    invoke-static {v15}, Llho;->L(I)Ljava/util/List;

    move-result-object v3

    iget-object v15, v1, Lesh;->bq:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v15, v1, Lesh;->br:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v15, v1, Lesh;->bs:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v15, v1, Lesh;->bt:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v15, v1, Lesh;->bu:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v15, v1, Lesh;->bv:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v15, v1, Lesh;->by:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v15, v1, Lesh;->bB:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v15, v1, Lesh;->bD:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v15, v1, Lesh;->bG:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v15, v1, Lesh;->bI:Loiw;

    invoke-static {v15, v13}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v13, v3}, Llho;->F(Ljava/util/List;Ljava/util/List;)Logo;

    move-result-object v3

    invoke-static {v9, v11, v14, v3}, Ldor;->b(Loiw;Loiw;Loiw;Loiw;)Ldor;

    move-result-object v3

    invoke-static {v3}, Logj;->b(Loiw;)Loiw;

    move-result-object v15

    iget-object v3, v1, Lesh;->bE:Loiw;

    iget-object v9, v1, Lesh;->bF:Loiw;

    iget-object v13, v1, Lesh;->f:Loiw;

    iget-object v11, v1, Lesh;->bI:Loiw;

    invoke-static {v3, v9, v7, v13, v11}, Lceb;->b(Loiw;Loiw;Loiw;Loiw;Loiw;)Lceb;

    move-result-object v11

    iget-object v3, v1, Lesh;->h:Loiw;

    move-object/from16 v9, v17

    move-object/from16 v28, v16

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    move-object/from16 v19, v3

    invoke-static/range {v13 .. v19}, Lcqi;->b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lcqi;

    move-result-object v3

    sget-object v13, Lfzf;->a:Lftp;

    invoke-static {v13}, Logj;->b(Loiw;)Loiw;

    move-result-object v15

    iget-object v13, v1, Lesh;->L:Loiw;

    invoke-static {v13, v15}, Lfvf;->g(Loiw;Loiw;)Lfvf;

    move-result-object v13

    invoke-static {v13}, Logj;->b(Loiw;)Loiw;

    move-result-object v19

    iget-object v13, v1, Lesh;->d:Loiw;

    iget-object v14, v1, Lesh;->f:Loiw;

    move-object/from16 v16, v15

    iget-object v15, v1, Lesh;->h:Loiw;

    move-object/from16 v29, v8

    iget-object v8, v1, Lesh;->bM:Loiw;

    new-instance v17, Lcqi;

    const/16 v39, 0x6

    const/16 v40, 0x0

    move-object/from16 v31, v17

    move-object/from16 v32, v13

    move-object/from16 v33, v7

    move-object/from16 v34, v14

    move-object/from16 v35, v19

    move-object/from16 v36, v15

    move-object/from16 v37, v8

    move-object/from16 v38, v5

    invoke-direct/range {v31 .. v40}, Lcqi;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[Z)V

    invoke-static/range {v17 .. v17}, Logj;->b(Loiw;)Loiw;

    move-result-object v8

    iget-object v13, v1, Lesh;->by:Loiw;

    invoke-static {v13, v5}, Ldxb;->l(Loiw;Loiw;)Ldxb;

    move-result-object v13

    invoke-static {v13}, Logj;->b(Loiw;)Loiw;

    iget-object v13, v1, Lesh;->by:Loiw;

    iget-object v14, v1, Lesh;->f:Loiw;

    invoke-static {v13, v14}, Ldxb;->g(Loiw;Loiw;)Ldxb;

    move-result-object v13

    invoke-static {v13}, Logj;->b(Loiw;)Loiw;

    move-result-object v13

    iget-object v14, v1, Lesh;->bN:Loiw;

    invoke-static {v14, v9, v7}, Ldxj;->c(Loiw;Loiw;Loiw;)Ldxj;

    move-result-object v9

    invoke-static {v9}, Logj;->b(Loiw;)Loiw;

    move-result-object v9

    iget-object v14, v1, Lesh;->bF:Loiw;

    iget-object v15, v1, Lesh;->f:Loiw;

    invoke-static {v14, v7, v15}, Liio;->a(Loiw;Loiw;Loiw;)Liio;

    move-result-object v14

    invoke-static {v14}, Logj;->b(Loiw;)Loiw;

    move-result-object v15

    iget-object v14, v1, Lesh;->f:Loiw;

    move-object/from16 v30, v3

    iget-object v3, v1, Lesh;->bN:Loiw;

    move-object/from16 v31, v14

    move-object/from16 v32, v7

    move-object/from16 v33, v15

    move-object/from16 v34, v3

    move-object/from16 v35, v25

    move-object/from16 v36, v6

    invoke-static/range {v31 .. v36}, Ldpp;->c(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Ldpp;

    move-result-object v3

    invoke-static {v3}, Logj;->b(Loiw;)Loiw;

    move-result-object v3

    invoke-static {v13, v9, v3}, Lcpb;->b(Loiw;Loiw;Loiw;)Lcpb;

    move-result-object v6

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v3

    invoke-static {v3}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v32

    sget-object v6, Lgtc;->a:Lgsi;

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v33

    sget-object v6, Lgsh;->a:Lgsi;

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v34

    iget-object v6, v1, Lesh;->bO:Loiw;

    iget-object v7, v1, Lesh;->bP:Loiw;

    iget-object v9, v1, Lesh;->bQ:Loiw;

    iget-object v13, v1, Lesh;->bR:Loiw;

    invoke-static {v6, v7, v9, v13}, Lgsc;->b(Loiw;Loiw;Loiw;Loiw;)Lgsc;

    move-result-object v35

    iget-object v6, v1, Lesh;->bG:Loiw;

    invoke-static {v6}, Lest;->c(Loiw;)Loiw;

    move-result-object v37

    iget-object v6, v1, Lesh;->bB:Loiw;

    sget-object v38, Lczb;->a:Lday;

    iget-object v7, v1, Lesh;->bO:Loiw;

    iget-object v9, v1, Lesh;->bT:Loiw;

    iget-object v13, v1, Lesh;->bS:Loiw;

    iget-object v14, v1, Lesh;->bV:Loiw;

    move-object/from16 v31, v8

    move-object/from16 v36, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v9

    move-object/from16 v41, v13

    move-object/from16 v42, v14

    move-object/from16 v43, v5

    invoke-static/range {v31 .. v43}, Liir;->a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Liir;

    move-result-object v6

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v13

    iget-object v14, v1, Lesh;->oU:Loiw;

    new-instance v6, Lcqi;

    const/16 v17, 0x6

    const/16 v18, 0x0

    move-object v9, v6

    move-object/from16 v7, v16

    move-object/from16 v16, v5

    invoke-direct/range {v9 .. v18}, Lcqi;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[F)V

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v33

    iget-object v6, v1, Lesh;->bW:Loiw;

    new-instance v8, Lcen;

    const/16 v36, 0xd

    const/16 v37, 0x0

    move-object/from16 v31, v8

    move-object/from16 v32, v28

    move-object/from16 v34, v6

    move-object/from16 v35, v5

    invoke-direct/range {v31 .. v37}, Lcen;-><init>(Loiw;Loiw;Loiw;Loiw;I[[F)V

    new-instance v6, Lcko;

    move-object/from16 v9, v28

    const/16 v10, 0x10

    invoke-direct {v6, v9, v10}, Lcko;-><init>(Loiw;I)V

    invoke-static {v3, v6}, Leqh;->f(Loiw;Loiw;)Leqh;

    move-result-object v3

    invoke-static {v3}, Logj;->b(Loiw;)Loiw;

    move-result-object v3

    new-instance v6, Lckn;

    const/16 v11, 0x10

    invoke-direct {v6, v5, v3, v11}, Lckn;-><init>(Loiw;Loiw;I)V

    iget-object v3, v1, Lesh;->bX:Loiw;

    new-instance v11, Lckn;

    const/16 v12, 0x12

    invoke-direct {v11, v9, v3, v12}, Lckn;-><init>(Loiw;Loiw;I)V

    invoke-static/range {v27 .. v27}, Llho;->L(I)Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x1

    invoke-static {v9}, Llho;->L(I)Ljava/util/List;

    move-result-object v12

    move-object/from16 v9, v30

    invoke-static {v9, v12}, Llho;->G(Loiw;Ljava/util/List;)V

    invoke-static {v8, v3}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v6, v3}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v11, v3}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v3, v12}, Llho;->F(Ljava/util/List;Ljava/util/List;)Logo;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Logj;->a(Loiw;)Logd;

    move-result-object v6

    const/4 v8, 0x1

    invoke-static {v8}, Llho;->L(I)Ljava/util/List;

    move-result-object v9

    const/4 v8, 0x0

    invoke-static {v8}, Llho;->L(I)Ljava/util/List;

    move-result-object v8

    invoke-static {v6, v9}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v9, v8}, Llho;->F(Ljava/util/List;Ljava/util/List;)Logo;

    move-result-object v6

    iget-object v8, v1, Lesh;->bZ:Loiw;

    sget-object v9, Logo;->a:Logk;

    move-object/from16 v11, v29

    invoke-static {v11, v8, v6, v9}, Ldor;->g(Loiw;Loiw;Loiw;Loiw;)Ldor;

    move-result-object v6

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    invoke-static {v11, v6}, Ldxb;->f(Loiw;Loiw;)Ldxb;

    move-result-object v6

    invoke-static/range {v21 .. v21}, Llho;->L(I)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Llho;->L(I)Ljava/util/List;

    move-result-object v9

    iget-object v11, v1, Lesh;->cd:Loiw;

    invoke-static {v11, v8}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v11, v1, Lesh;->bm:Loiw;

    invoke-static {v11, v8}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v6, v9}, Llho;->G(Loiw;Ljava/util/List;)V

    invoke-static {v8, v9}, Llho;->F(Ljava/util/List;Ljava/util/List;)Logo;

    move-result-object v6

    new-instance v8, Lcko;

    move-object/from16 v9, v26

    const/16 v11, 0xc

    invoke-direct {v8, v9, v11}, Lcko;-><init>(Loiw;I)V

    invoke-static {v6, v8}, Lglw;->b(Loiw;Loiw;)Lglw;

    move-result-object v6

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    move-object/from16 v8, v24

    iget-object v8, v8, Lcvr;->a:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lfzb;

    const-string v9, "expectedSize"

    const/4 v11, 0x4

    invoke-static {v11, v9}, Llkj;->v(ILjava/lang/String;)V

    new-instance v9, Lmwl;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Lmwl;-><init>(I)V

    iget-object v11, v1, Lesh;->f:Loiw;

    invoke-interface {v11}, Loiw;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldhi;

    move-object/from16 v12, p3

    invoke-static {v11, v12}, Ldsl;->a(Ldhi;Loiw;)Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v9, v11}, Lmwl;->h(Ljava/lang/Iterable;)V

    iget-object v11, v1, Lesh;->L:Loiw;

    invoke-interface {v11}, Loiw;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/Executor;

    invoke-interface/range {v22 .. v22}, Loiw;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/Executor;

    sget-object v14, Logo;->a:Logk;

    invoke-static {v11, v12, v3, v14}, Lfze;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Loiw;Loiw;)Lcik;

    move-result-object v3

    invoke-virtual {v9, v3}, Lmwl;->g(Ljava/lang/Object;)V

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljuf;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnou;

    iget-object v12, v1, Lesh;->F:Loiw;

    invoke-interface {v12}, Loiw;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgre;

    invoke-static {v3, v11, v12}, Lfze;->c(Ljuf;Lnou;Lgre;)Lcik;

    move-result-object v3

    invoke-virtual {v9, v3}, Lmwl;->g(Ljava/lang/Object;)V

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcik;

    invoke-virtual {v9, v3}, Lmwl;->g(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lmwl;->f()Lmwn;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnph;

    invoke-interface/range {v19 .. v19}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Executor;

    iget-object v11, v1, Lesh;->h:Loiw;

    invoke-interface {v11}, Loiw;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkbc;

    invoke-direct {v13, v3, v6, v9, v11}, Lfzb;-><init>(Ljava/util/Set;Lnph;Ljava/util/concurrent/Executor;Lkbc;)V

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljuf;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lnph;

    iget-object v1, v1, Lesh;->bp:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljve;

    new-instance v1, Lcvq;

    move-object v12, v8

    check-cast v12, Lcvr;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lcvq;-><init>(Lcvr;Lfzb;Ljuf;Lnph;Ljve;[B[B)V

    iget-object v3, v1, Lcvq;->e:Lfzb;

    invoke-virtual {v3}, Lfzb;->a()Lnou;

    move-result-object v3

    invoke-static {v3}, Lnsy;->C(Lnou;)Lnou;

    iget-object v3, v1, Lcvq;->c:Lnph;

    sget-object v5, Lcjp;->g:Lcjp;

    invoke-virtual {v3, v5}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcvq;->b:Ljuf;

    sget-object v5, Lcgk;->f:Lcgk;

    invoke-virtual {v3, v5}, Ljuf;->d(Lkad;)V

    iget-object v3, v1, Lcvq;->f:Lcvr;

    sget-object v5, Lcua;->b:Lcua;

    invoke-virtual {v3, v5}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v3

    new-instance v5, Lcfh;

    const/16 v10, 0xf

    invoke-direct {v5, v1, v10}, Lcfh;-><init>(Lcvq;I)V

    invoke-virtual {v3, v5}, Ljuf;->d(Lkad;)V

    :cond_1b
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/32 :goto_2

    nop

    :goto_29
    iput-object v3, v1, Lcvy;->b:Lcte;

    goto/32 :goto_2b

    nop

    :goto_2a
    iget-object v2, v1, Lcvy;->c:Lcvr;

    goto/32 :goto_1d

    nop

    :goto_2b
    move-object v4, v3

    goto/32 :goto_b

    nop

    :goto_2c
    goto/32 :goto_0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcpk;->j:Lcvx;

    invoke-interface {v0}, Lcvx;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcpk;->I:J

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i(Z)V
    .locals 12

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcpk;->y:Lcpj;

    sget-object v2, Lcpj;->e:Lcpj;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, v3}, Lcpk;->m(ZI)Lnou;

    goto/16 :goto_a

    :cond_0
    iget-object p1, p0, Lcpk;->y:Lcpj;

    sget-object v1, Lcpj;->a:Lcpj;

    if-ne p1, v1, :cond_12

    iget-object p1, p0, Lcpk;->e:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {p0}, Lcpk;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcpk;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x1cb

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Not starting recording since the device is thermally throttled"

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit p1

    goto/16 :goto_a

    :cond_1
    iget-object v1, p0, Lcpk;->i:Lhlu;

    iget-object v1, v1, Lhlu;->b:Lhlv;

    sget-object v2, Lhlv;->a:Lhlv;

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    sget-object v1, Lcpk;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Can\'t get current device storage."

    const/16 v5, 0x1cd

    invoke-static {v1, v2, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lhlv;->c()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcpk;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x1ca

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Not starting recording since the device storage is low."

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcpk;->j(Z)V

    monitor-exit p1

    goto/16 :goto_a

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcpk;->v:Z

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcpk;->v:Z

    monitor-exit p1

    goto/16 :goto_a

    :cond_4
    sget-object v1, Lcpj;->c:Lcpj;

    invoke-virtual {p0, v1}, Lcpk;->k(Lcpj;)V

    iget-object v1, p0, Lcpk;->o:Lhkl;

    invoke-virtual {v1}, Lhkl;->a()V

    iget-object v1, p0, Lcpk;->o:Lhkl;

    sget-object v2, Lhkk;->a:Lhkk;

    invoke-virtual {v1, v2}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v1, p0, Lcpk;->F:Liec;

    invoke-interface {v1}, Liec;->g()V

    iget-object v1, p0, Lcpk;->E:Lgft;

    const-class v2, Lcpk;

    invoke-interface {v1, v2}, Lgft;->a(Ljava/lang/Class;)V

    iget-object v1, p0, Lcpk;->G:Lcsd;

    invoke-virtual {v1}, Lcsd;->c()V

    iget-object v1, p0, Lcpk;->J:Lcvr;

    iget-object v1, v1, Lcvr;->a:Ljava/lang/Object;

    const v2, 0x7f13002f

    invoke-interface {v1, v2}, Lhgy;->b(I)V

    iget-object v1, p0, Lcpk;->d:Lcqa;

    iget-object v2, v1, Lcqa;->d:Lhxb;

    iget-object v5, v1, Lcqa;->z:Lcsc;

    iget-object v5, v5, Lcsc;->c:Ljws;

    invoke-virtual {v5}, Ljws;->a()I

    move-result v5

    if-le v5, v3, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    iget-object v6, v1, Lcqa;->z:Lcsc;

    iget-object v6, v6, Lcsc;->h:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    xor-int/2addr v6, v3

    invoke-static {}, Lhxa;->a()Lhwz;

    move-result-object v7

    invoke-virtual {v7, v5}, Lhwz;->e(Z)V

    iget-object v5, v1, Lcqa;->n:Ljvs;

    invoke-virtual {v7, v5}, Lhwz;->c(Ljvs;)V

    iget-object v5, v1, Lcqa;->o:Ljvs;

    invoke-virtual {v7, v5}, Lhwz;->b(Ljvs;)V

    invoke-virtual {v7, v6}, Lhwz;->d(Z)V

    iget-object v5, v1, Lcqa;->m:Lcqx;

    invoke-interface {v5}, Lcqx;->h()Z

    move-result v5

    invoke-virtual {v7, v5}, Lhwz;->f(Z)V

    invoke-virtual {v7}, Lhwz;->a()Lhxa;

    move-result-object v5

    invoke-interface {v2, v5}, Lhxb;->d(Lhxa;)V

    iget-object v2, v1, Lcqa;->d:Lhxb;

    invoke-interface {v2}, Lhxb;->f()V

    iget-object v2, v1, Lcqa;->s:Lhrq;

    invoke-virtual {v2, v3}, Lhrq;->d(Z)V

    iget-object v2, v1, Lcqa;->y:Lcyq;

    invoke-interface {v2}, Lcyq;->c()V

    iget-object v2, v1, Lcqa;->a:Lhsl;

    invoke-interface {v2, v3}, Lhsl;->f(Z)V

    iget-object v2, v1, Lcqa;->j:Lczq;

    invoke-interface {v2, v4}, Lczq;->f(Z)V

    iget-object v2, v1, Lcqa;->j:Lczq;

    invoke-interface {v2, v3}, Lczq;->d(Z)V

    iget-object v2, v1, Lcqa;->v:Lmrl;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyt;

    iget-object v2, v2, Lhyt;->a:Lhys;

    sget-object v5, Lcwx;->b:Lcwx;

    iget-object v6, v1, Lcqa;->k:Lcxb;

    invoke-virtual {v6}, Lcxb;->a()Lcwx;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcwx;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcqa;->x:Lika;

    invoke-static {v5}, Lcqa;->n(Lika;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v2, Lhys;->i:Lhyn;

    iget-object v2, v2, Lhys;->g:Liko;

    invoke-static {v5, v2}, Lbze;->af(Lhyn;Liko;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcqa;->e:Litm;

    invoke-interface {v1}, Litm;->ab()V

    :cond_6
    iget-object v1, p0, Lcpk;->F:Liec;

    invoke-interface {v1}, Liec;->e()V

    iget-object v1, p0, Lcpk;->K:Ljew;

    invoke-virtual {v1}, Ljew;->z()V

    iget-object v1, p0, Lcpk;->r:Lcqx;

    invoke-interface {v1}, Lcqx;->f()V

    iget-object v1, p0, Lcpk;->u:Lcsm;

    invoke-interface {v1}, Lcsm;->d()V

    iget-object v1, p0, Lcpk;->w:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcpk;->w:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    invoke-virtual {p0}, Lcpk;->e()V

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcpk;->I:J

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x1f4

    cmp-long v7, v1, v5

    if-gez v7, :cond_8

    goto :goto_2

    :cond_8
    const-wide/16 v5, 0x12c

    :goto_2
    iget-object v1, p0, Lcpk;->H:Lcps;

    iget-object v2, p0, Lcpk;->s:Lcsc;

    invoke-interface {v1, p0, v2}, Lcps;->a(Lcqu;Lcsc;)Lcpu;

    move-result-object v1

    iput-object v1, p0, Lcpk;->x:Lcpu;

    iget-object v2, v1, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v7, v1, Lcpu;->F:Lcpt;

    sget-object v8, Lcpt;->a:Lcpt;

    if-eq v7, v8, :cond_9

    new-instance v3, Ljava/lang/IllegalStateException;

    iget-object v1, v1, Lcpu;->F:Lcpt;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to start recording with state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v1

    monitor-exit v2

    goto/16 :goto_9

    :cond_9
    iget-object v7, v1, Lcpu;->A:Lkbc;

    iget-object v8, v1, Lcpu;->l:Lcsc;

    invoke-virtual {v1}, Lcpu;->c()Lcwx;

    move-result-object v9

    iget-object v10, v1, Lcpu;->m:Lcrz;

    iget-object v10, v10, Lcrz;->b:Ljvs;

    invoke-interface {v10}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v8, v9, v10}, Lbze;->ae(Lcsc;Lcwx;F)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Recording Started: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v7

    iput-object v7, v1, Lcpu;->I:Lkbf;

    iget-object v7, v1, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v8, v1, Lcpu;->i:Lcpx;

    iget-object v9, v1, Lcpu;->l:Lcsc;

    iget-object v10, v8, Lcpx;->d:Ljava/lang/Object;

    monitor-enter v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v11, v8, Lcpx;->c:Lcui;

    if-eqz v11, :cond_a

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_a
    :try_start_5
    iget-object v11, v8, Lcpx;->b:Lnou;

    if-eqz v11, :cond_b

    invoke-interface {v11}, Lnou;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcui;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_b
    :try_start_7
    invoke-virtual {v8, v9}, Lcpx;->a(Lcsc;)Lcui;

    move-result-object v11
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v10

    goto :goto_4

    :catch_0
    move-exception v8

    goto :goto_3

    :catch_1
    move-exception v8

    :goto_3
    sget-object v9, Lcpx;->a:Lnak;

    invoke-virtual {v9}, Lnaf;->b()Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    invoke-interface {v9, v8}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v8

    check-cast v8, Lnah;

    const/16 v9, 0x1e2

    invoke-interface {v8, v9}, Lnah;->G(I)Lnaz;

    move-result-object v8

    check-cast v8, Lnah;

    const-string v9, "Error creating video recorder: "

    invoke-interface {v8, v9}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_10

    :try_start_9
    iget-object v8, v11, Lcui;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_7

    :cond_c
    iget-object v8, v11, Lcui;->a:Ljyc;

    invoke-interface {v8}, Ljyc;->a()I

    move-result v8

    iget-object v9, v1, Lcpu;->m:Lcrz;

    iget-object v9, v9, Lcrz;->n:Ljvs;

    check-cast v9, Ljvk;

    iget-object v9, v9, Ljvk;->d:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_d

    goto :goto_6

    :cond_d
    iget-object v8, v1, Lcpu;->m:Lcrz;

    iget-object v8, v8, Lcrz;->t:Lgyd;

    iget-object v8, v8, Lgyd;->a:Ljwb;

    invoke-interface {v8}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgys;

    iget-object v9, v11, Lcui;->d:Lgys;

    invoke-virtual {v8, v9}, Lgys;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v1, Lcpu;->x:Lgzm;

    sget-object v9, Lgzd;->at:Lgzr;

    invoke-interface {v8, v9}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v9, v11, Lcui;->e:Lgyb;

    sget-object v10, Lgyb;->b:Lgyb;

    if-eq v9, v10, :cond_e

    const/4 v3, 0x0

    goto :goto_5

    :cond_e
    :goto_5
    if-ne v8, v3, :cond_f

    iget-object v3, v1, Lcpu;->m:Lcrz;

    iget-object v3, v3, Lcrz;->p:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgyt;

    iget-object v4, v11, Lcui;->f:Lgyt;

    invoke-virtual {v3, v4}, Lgyt;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    :goto_6
    invoke-virtual {v11}, Lcui;->close()V

    iget-object v3, v1, Lcpu;->i:Lcpx;

    iget-object v4, v1, Lcpu;->l:Lcsc;

    invoke-virtual {v3, v4}, Lcpx;->a(Lcsc;)Lcui;

    move-result-object v11

    goto :goto_8

    :cond_10
    :goto_7
    iget-object v3, v1, Lcpu;->i:Lcpx;

    iget-object v4, v1, Lcpu;->l:Lcsc;

    invoke-virtual {v3, v4}, Lcpx;->a(Lcsc;)Lcui;

    move-result-object v11

    :cond_11
    :goto_8
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v1, Lcpu;->G:Lcui;

    iget-object v3, v1, Lcpu;->K:Lcvr;

    sget-object v4, Lcua;->c:Lcua;

    invoke-virtual {v3, v4}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljuf;->d(Lkad;)V

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    sget-object v3, Lcpt;->b:Lcpt;

    invoke-virtual {v1, v3}, Lcpu;->j(Lcpt;)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v3

    iget-object v4, v1, Lcpu;->r:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcpo;

    invoke-direct {v7, v1, v3}, Lcpo;-><init>(Lcpu;Lnph;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v7, v5, v6, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v1, v3

    :goto_9
    :try_start_b
    new-instance v2, Lcmc;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcmc;-><init>(Lcpk;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v1, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_a

    :catchall_0
    move-exception v1

    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v1

    :catchall_3
    move-exception v1

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v1

    :cond_12
    sget-object p1, Lcpk;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x1c4

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "Shutter button click ignored with state = %s"

    iget-object v2, p0, Lcpk;->y:Lcpj;

    invoke-interface {p1, v1, v2}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a
    monitor-exit v0

    return-void

    :catchall_4
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw p1
.end method

.method public final j(Z)V
    .locals 3

    iget-object v0, p0, Lcpk;->c:Ljuh;

    new-instance v1, Lbnd;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lbnd;-><init>(Lcpk;ZI)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Lcpj;)V
    .locals 3

    iget-object v0, p0, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcpk;->y:Lcpj;

    iget-object v1, p0, Lcpk;->A:Lcuo;

    if-eqz v1, :cond_0

    sget-object v2, Lcpj;->e:Lcpj;

    invoke-virtual {p1, v2}, Lcpj;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v1, Lcuo;->g:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lcpk;->m:Lcuf;

    invoke-virtual {v0}, Lcuf;->a()Lhna;

    move-result-object v1

    iget-object v0, v0, Lcuf;->c:Lcuh;

    iget-object v0, v0, Lcuh;->b:Lhna;

    invoke-virtual {v1, v0}, Lhna;->a(Lhna;)Z

    move-result v0

    return v0
.end method

.method public final m(ZI)Lnou;
    .locals 5

    iget-object v0, p0, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcpk;->y:Lcpj;

    sget-object v2, Lcpj;->e:Lcpj;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sget-object p1, Lcpk;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x1ba

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "Trying to stop recording but state is: %s"

    iget-object v2, p0, Lcpk;->y:Lcpj;

    invoke-interface {p1, v1, v2}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lfsf;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v1, v2, v3, p2}, Lfsf;-><init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;I)V

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    sget-object v1, Lcpj;->d:Lcpj;

    invoke-virtual {p0, v1}, Lcpk;->k(Lcpj;)V

    iget-object v1, p0, Lcpk;->o:Lhkl;

    sget-object v2, Lhkk;->c:Lhkk;

    invoke-virtual {v1, v2}, Lhkh;->h(Ljava/lang/Enum;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcpk;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcqs;

    invoke-interface {v4}, Lcqs;->bZ()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcpk;->x:Lcpu;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p1, p2}, Lcpu;->l(ZI)Lnou;

    move-result-object p1

    iput-object v3, p0, Lcpk;->x:Lcpu;

    new-instance p2, Lcoi;

    const/4 v2, 0x2

    invoke-direct {p2, p0, v1, v2}, Lcoi;-><init>(Lcpk;Ljava/util/List;I)V

    iget-object v1, p0, Lcpk;->c:Ljuh;

    invoke-static {p1, p2, v1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final n(Ljava/lang/Runnable;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcpk;->m(ZI)Lnou;

    move-result-object p2

    new-instance v0, Lcmc;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcmc;-><init>(Ljava/lang/Runnable;I)V

    iget-object p1, p0, Lcpk;->c:Ljuh;

    invoke-static {p2, v0, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final o(Lfsf;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lfsf;->d:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcsx;

    iget-object v10, v0, Lcpk;->B:Ldfa;

    iget-object v13, v0, Lcpk;->b:Lklv;

    iget v11, v1, Lfsf;->a:I

    iget-object v4, v10, Ldfa;->b:Ljava/lang/Object;

    sget-object v5, Lhkk;->a:Lhkk;

    sget-object v6, Lhkk;->b:Lhkk;

    check-cast v4, Lhkl;

    invoke-virtual {v4, v5, v6}, Lhkl;->c(Lhkk;Lhkk;)I

    move-result v4

    iget-object v5, v10, Ldfa;->b:Ljava/lang/Object;

    sget-object v6, Lhkk;->c:Lhkk;

    sget-object v7, Lhkk;->d:Lhkk;

    check-cast v5, Lhkl;

    invoke-virtual {v5, v6, v7}, Lhkl;->c(Lhkk;Lhkk;)I

    move-result v5

    sget-object v6, Lnlk;->D:Lnlk;

    invoke-virtual {v6}, Lnws;->O()Lnwn;

    move-result-object v12

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, v3, Lcsx;->d:J

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    long-to-float v6, v6

    iget-object v7, v12, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_0
    iget-object v7, v12, Lnwn;->b:Lnws;

    check-cast v7, Lnlk;

    iget v8, v7, Lnlk;->a:I

    const/4 v14, 0x1

    or-int/2addr v8, v14

    iput v8, v7, Lnlk;->a:I

    iput v6, v7, Lnlk;->b:F

    invoke-virtual {v3}, Lcsx;->b()Ljwu;

    move-result-object v6

    invoke-virtual {v6}, Ljwu;->b()Lkaf;

    move-result-object v6

    iget v6, v6, Lkaf;->a:I

    iget-object v7, v12, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_1
    iget-object v7, v12, Lnwn;->b:Lnws;

    check-cast v7, Lnlk;

    iget v8, v7, Lnlk;->a:I

    const/16 v15, 0x8

    or-int/2addr v8, v15

    iput v8, v7, Lnlk;->a:I

    iput v6, v7, Lnlk;->e:I

    invoke-virtual {v3}, Lcsx;->b()Ljwu;

    move-result-object v6

    invoke-virtual {v6}, Ljwu;->b()Lkaf;

    move-result-object v6

    iget v6, v6, Lkaf;->b:I

    iget-object v7, v12, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_2
    iget-object v7, v12, Lnwn;->b:Lnws;

    check-cast v7, Lnlk;

    iget v8, v7, Lnlk;->a:I

    const/16 v16, 0x4

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Lnlk;->a:I

    iput v6, v7, Lnlk;->d:I

    invoke-virtual {v3}, Lcsx;->a()J

    move-result-wide v6

    iget-object v8, v12, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_3
    iget-object v8, v12, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Lnlk;

    iget v14, v9, Lnlk;->a:I

    const/4 v15, 0x2

    or-int/2addr v14, v15

    iput v14, v9, Lnlk;->a:I

    iput-wide v6, v9, Lnlk;->c:J

    iget-object v6, v3, Lcsx;->b:Ljxa;

    iget-object v6, v6, Ljxa;->c:Ljws;

    sget-object v7, Ljws;->a:Ljws;

    if-ne v6, v7, :cond_4

    const/4 v6, -0x1

    goto :goto_1

    :cond_4
    iget v6, v6, Ljws;->i:I

    :goto_1
    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_5
    int-to-float v6, v6

    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    iget v9, v8, Lnlk;->a:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Lnlk;->a:I

    iput v6, v8, Lnlk;->f:F

    iget-object v6, v3, Lcsx;->b:Ljxa;

    iget v6, v6, Ljxa;->e:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_6
    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    iget v9, v8, Lnlk;->a:I

    or-int/lit16 v9, v9, 0x80

    iput v9, v8, Lnlk;->a:I

    iput v6, v8, Lnlk;->i:I

    iget-object v6, v3, Lcsx;->b:Ljxa;

    iget v6, v6, Ljxa;->f:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_7
    iget-object v7, v12, Lnwn;->b:Lnws;

    check-cast v7, Lnlk;

    iget v8, v7, Lnlk;->a:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v7, Lnlk;->a:I

    iput v6, v7, Lnlk;->j:I

    iget-object v6, v10, Ldfa;->f:Ljava/lang/Object;

    check-cast v6, Ldja;

    invoke-virtual {v6}, Ldja;->o()Z

    move-result v6

    iget-object v7, v12, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_8
    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    iget v9, v8, Lnlk;->a:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v8, Lnlk;->a:I

    iput-boolean v6, v8, Lnlk;->g:Z

    iget v6, v3, Lcsx;->f:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_9
    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    iget v9, v8, Lnlk;->a:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v8, Lnlk;->a:I

    iput v6, v8, Lnlk;->h:I

    iget v6, v3, Lcsx;->g:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_a
    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    iget v9, v8, Lnlk;->a:I

    or-int/lit16 v9, v9, 0x800

    iput v9, v8, Lnlk;->a:I

    iput v6, v8, Lnlk;->m:I

    iget-wide v8, v3, Lcsx;->k:J

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_b
    iget-object v6, v12, Lnwn;->b:Lnws;

    check-cast v6, Lnlk;

    iget v7, v6, Lnlk;->a:I

    or-int/lit16 v7, v7, 0x200

    iput v7, v6, Lnlk;->a:I

    iput-wide v8, v6, Lnlk;->k:J

    iget-object v6, v3, Lcsx;->l:Ljava/util/Map;

    sget-object v7, Lnlj;->k:Lnlj;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljyk;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    if-eqz v19, :cond_15

    sget-object v20, Lcwx;->a:Lcwx;

    sget-object v20, Ljyk;->a:Ljyk;

    sget-object v20, Lika;->a:Lika;

    invoke-virtual {v9}, Ljyk;->ordinal()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    const/4 v15, 0x2

    goto :goto_2

    :pswitch_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v14, v7, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_c
    iget-object v14, v7, Lnwn;->b:Lnws;

    check-cast v14, Lnlj;

    iget v15, v14, Lnlj;->a:I

    or-int/lit16 v15, v15, 0x100

    iput v15, v14, Lnlj;->a:I

    iput v9, v14, Lnlj;->j:I

    const/4 v15, 0x2

    goto :goto_2

    :pswitch_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v14, v7, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_d
    iget-object v14, v7, Lnwn;->b:Lnws;

    check-cast v14, Lnlj;

    iget v15, v14, Lnlj;->a:I

    or-int/lit16 v15, v15, 0x80

    iput v15, v14, Lnlj;->a:I

    iput v9, v14, Lnlj;->i:I

    const/4 v15, 0x2

    goto :goto_2

    :pswitch_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v14, v7, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_e
    iget-object v14, v7, Lnwn;->b:Lnws;

    check-cast v14, Lnlj;

    iget v15, v14, Lnlj;->a:I

    or-int/lit8 v15, v15, 0x40

    iput v15, v14, Lnlj;->a:I

    iput v9, v14, Lnlj;->h:I

    const/4 v15, 0x2

    goto :goto_2

    :pswitch_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v14, v7, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_f
    iget-object v14, v7, Lnwn;->b:Lnws;

    check-cast v14, Lnlj;

    iget v15, v14, Lnlj;->a:I

    or-int/lit8 v15, v15, 0x20

    iput v15, v14, Lnlj;->a:I

    iput v9, v14, Lnlj;->g:I

    const/4 v15, 0x2

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v14, v7, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_10
    iget-object v14, v7, Lnwn;->b:Lnws;

    check-cast v14, Lnlj;

    iget v15, v14, Lnlj;->a:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v14, Lnlj;->a:I

    iput v9, v14, Lnlj;->f:I

    const/4 v15, 0x2

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v14, v7, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_11

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_11
    iget-object v14, v7, Lnwn;->b:Lnws;

    check-cast v14, Lnlj;

    iget v15, v14, Lnlj;->a:I

    const/16 v18, 0x8

    or-int/lit8 v15, v15, 0x8

    iput v15, v14, Lnlj;->a:I

    iput v9, v14, Lnlj;->e:I

    const/4 v15, 0x2

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v14, v7, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_12
    iget-object v14, v7, Lnwn;->b:Lnws;

    check-cast v14, Lnlj;

    iget v15, v14, Lnlj;->a:I

    or-int/lit8 v15, v15, 0x4

    iput v15, v14, Lnlj;->a:I

    iput v9, v14, Lnlj;->d:I

    const/4 v15, 0x2

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v14, v7, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_13
    iget-object v14, v7, Lnwn;->b:Lnws;

    check-cast v14, Lnlj;

    iget v15, v14, Lnlj;->a:I

    const/16 v19, 0x2

    or-int/lit8 v15, v15, 0x2

    iput v15, v14, Lnlj;->a:I

    iput v9, v14, Lnlj;->c:I

    const/4 v15, 0x2

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v14, v7, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_14

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_14
    iget-object v14, v7, Lnwn;->b:Lnws;

    check-cast v14, Lnlj;

    iget v15, v14, Lnlj;->a:I

    const/16 v17, 0x1

    or-int/lit8 v15, v15, 0x1

    iput v15, v14, Lnlj;->a:I

    iput v9, v14, Lnlj;->b:I

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_15
    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_16
    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v6

    check-cast v6, Lnlj;

    iget-object v7, v12, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_17

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_17
    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v8, Lnlk;->l:Lnlj;

    iget v6, v8, Lnlk;->a:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v8, Lnlk;->a:I

    iget v6, v3, Lcsx;->h:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_18
    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    iget v9, v8, Lnlk;->a:I

    or-int/lit16 v9, v9, 0x1000

    iput v9, v8, Lnlk;->a:I

    iput v6, v8, Lnlk;->n:I

    iget v6, v3, Lcsx;->i:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_19
    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    iget v9, v8, Lnlk;->a:I

    or-int/lit16 v9, v9, 0x2000

    iput v9, v8, Lnlk;->a:I

    iput v6, v8, Lnlk;->o:I

    iget v6, v3, Lcsx;->j:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_1a
    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    iget v9, v8, Lnlk;->a:I

    or-int/lit16 v9, v9, 0x4000

    iput v9, v8, Lnlk;->a:I

    iput v6, v8, Lnlk;->p:I

    iget-object v6, v3, Lcsx;->z:Lcvr;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcvr;->s(I)I

    move-result v6

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_1b

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_1b
    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    iget v9, v8, Lnlk;->a:I

    const v14, 0x8000

    or-int/2addr v9, v14

    iput v9, v8, Lnlk;->a:I

    iput v6, v8, Lnlk;->q:I

    iget-object v6, v3, Lcsx;->z:Lcvr;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcvr;->s(I)I

    move-result v6

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_1c
    iget-object v7, v12, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnlk;

    iget v9, v8, Lnlk;->a:I

    const/high16 v14, 0x10000

    or-int/2addr v9, v14

    iput v9, v8, Lnlk;->a:I

    iput v6, v8, Lnlk;->r:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_1d

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_1d
    iget-object v6, v12, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lnlk;

    iget v8, v7, Lnlk;->a:I

    const/high16 v9, 0x20000

    or-int/2addr v8, v9

    iput v8, v7, Lnlk;->a:I

    iput v4, v7, Lnlk;->s:I

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_1e
    iget-object v4, v12, Lnwn;->b:Lnws;

    check-cast v4, Lnlk;

    iget v6, v4, Lnlk;->a:I

    const/high16 v7, 0x40000

    or-int/2addr v6, v7

    iput v6, v4, Lnlk;->a:I

    iput v5, v4, Lnlk;->t:I

    iget-object v4, v3, Lcsx;->n:Ljava/util/List;

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v14

    new-instance v15, Lgdn;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    move-object v5, v10

    move-object v6, v13

    invoke-direct/range {v4 .. v9}, Lgdn;-><init>(Ldfa;Lklv;I[B[B)V

    invoke-interface {v14, v15}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    iget-object v5, v12, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_1f
    iget-object v5, v12, Lnwn;->b:Lnws;

    check-cast v5, Lnlk;

    iget-object v6, v5, Lnlk;->u:Lnwy;

    invoke-interface {v6}, Lnwy;->c()Z

    move-result v7

    if-nez v7, :cond_20

    invoke-static {v6}, Lnws;->S(Lnwy;)Lnwy;

    move-result-object v6

    iput-object v6, v5, Lnlk;->u:Lnwy;

    :cond_20
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnlm;

    iget-object v7, v5, Lnlk;->u:Lnwy;

    iget v6, v6, Lnlm;->g:I

    invoke-interface {v7, v6}, Lnwy;->g(I)V

    goto :goto_3

    :cond_21
    iget v4, v3, Lcsx;->o:I

    iget-object v5, v12, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_22
    iget-object v5, v12, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnlk;

    iget v7, v6, Lnlk;->a:I

    const/high16 v8, 0x80000

    or-int/2addr v7, v8

    iput v7, v6, Lnlk;->a:I

    iput v4, v6, Lnlk;->v:I

    iget v4, v3, Lcsx;->q:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_23
    iget-object v5, v12, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnlk;

    iget v7, v6, Lnlk;->a:I

    const/high16 v8, 0x100000

    or-int/2addr v7, v8

    iput v7, v6, Lnlk;->a:I

    iput v4, v6, Lnlk;->w:F

    iget-wide v6, v3, Lcsx;->r:J

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_24
    iget-object v4, v12, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnlk;

    iget v8, v5, Lnlk;->a:I

    const/high16 v9, 0x200000

    or-int/2addr v8, v9

    iput v8, v5, Lnlk;->a:I

    iput-wide v6, v5, Lnlk;->x:J

    iget-wide v5, v3, Lcsx;->s:J

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_25
    iget-object v4, v12, Lnwn;->b:Lnws;

    move-object v7, v4

    check-cast v7, Lnlk;

    iget v8, v7, Lnlk;->a:I

    const/high16 v9, 0x400000

    or-int/2addr v8, v9

    iput v8, v7, Lnlk;->a:I

    iput-wide v5, v7, Lnlk;->y:J

    iget-boolean v5, v3, Lcsx;->v:Z

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_26
    iget-object v4, v12, Lnwn;->b:Lnws;

    check-cast v4, Lnlk;

    iget v6, v4, Lnlk;->a:I

    const/high16 v7, 0x800000

    or-int/2addr v6, v7

    iput v6, v4, Lnlk;->a:I

    iput-boolean v5, v4, Lnlk;->z:Z

    sget-object v4, Lcwx;->a:Lcwx;

    sget-object v4, Ljyk;->a:Ljyk;

    sget-object v4, Lika;->a:Lika;

    const/4 v4, -0x1

    add-int/2addr v11, v4

    packed-switch v11, :pswitch_data_1

    const/16 v4, 0x8

    goto :goto_4

    :pswitch_a
    const/4 v4, 0x7

    goto :goto_4

    :pswitch_b
    const/4 v4, 0x6

    goto :goto_4

    :pswitch_c
    const/4 v4, 0x5

    goto :goto_4

    :pswitch_d
    const/4 v4, 0x4

    goto :goto_4

    :pswitch_e
    const/4 v4, 0x3

    goto :goto_4

    :pswitch_f
    const/4 v4, 0x2

    :goto_4
    iget-object v5, v12, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_27
    iget-object v5, v12, Lnwn;->b:Lnws;

    check-cast v5, Lnlk;

    const/4 v6, -0x1

    add-int/2addr v4, v6

    iput v4, v5, Lnlk;->B:I

    iget v4, v5, Lnlk;->a:I

    const/high16 v6, 0x2000000

    or-int/2addr v4, v6

    iput v4, v5, Lnlk;->a:I

    iget-object v4, v3, Lcsx;->w:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcra;

    sget-object v5, Lnku;->h:Lnku;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-boolean v6, v4, Lcra;->a:Z

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_28
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnku;

    iget v9, v8, Lnku;->a:I

    const/4 v11, 0x1

    or-int/2addr v9, v11

    iput v9, v8, Lnku;->a:I

    iput-boolean v6, v8, Lnku;->b:Z

    iget-boolean v6, v4, Lcra;->b:Z

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_29

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_29
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnku;

    iget v9, v8, Lnku;->a:I

    const/4 v14, 0x2

    or-int/2addr v9, v14

    iput v9, v8, Lnku;->a:I

    iput-boolean v6, v8, Lnku;->c:Z

    iget-wide v8, v4, Lcra;->c:J

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_2a
    iget-object v6, v5, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lnku;

    iget v14, v7, Lnku;->a:I

    or-int/lit8 v14, v14, 0x4

    iput v14, v7, Lnku;->a:I

    iput-wide v8, v7, Lnku;->d:J

    iget v7, v4, Lcra;->d:I

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_2b
    iget-object v6, v5, Lnwn;->b:Lnws;

    move-object v8, v6

    check-cast v8, Lnku;

    iget v9, v8, Lnku;->a:I

    const/16 v14, 0x8

    or-int/2addr v9, v14

    iput v9, v8, Lnku;->a:I

    iput v7, v8, Lnku;->e:I

    iget v7, v4, Lcra;->e:I

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_2c
    iget-object v6, v5, Lnwn;->b:Lnws;

    move-object v8, v6

    check-cast v8, Lnku;

    iget v9, v8, Lnku;->a:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Lnku;->a:I

    iput v7, v8, Lnku;->f:I

    iget v4, v4, Lcra;->f:F

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_2d
    iget-object v6, v5, Lnwn;->b:Lnws;

    check-cast v6, Lnku;

    iget v7, v6, Lnku;->a:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Lnku;->a:I

    iput v4, v6, Lnku;->g:F

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lnku;

    iget-object v5, v12, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_2e
    iget-object v5, v12, Lnwn;->b:Lnws;

    check-cast v5, Lnlk;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lnlk;->A:Lnku;

    iget v4, v5, Lnlk;->a:I

    const/high16 v6, 0x1000000

    or-int/2addr v4, v6

    iput v4, v5, Lnlk;->a:I

    goto :goto_5

    :cond_2f
    const/4 v11, 0x1

    :goto_5
    iget-object v4, v3, Lcsx;->y:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnli;

    iget-object v5, v12, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_30
    iget-object v5, v12, Lnwn;->b:Lnws;

    check-cast v5, Lnlk;

    iput-object v4, v5, Lnlk;->C:Lnli;

    iget v4, v5, Lnlk;->a:I

    const/high16 v6, 0x4000000

    or-int/2addr v4, v6

    iput v4, v5, Lnlk;->a:I

    :cond_31
    iget-object v4, v10, Ldfa;->c:Ljava/lang/Object;

    iget-object v5, v10, Ldfa;->e:Ljava/lang/Object;

    invoke-interface {v5}, Lcqv;->a()Lika;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ldfa;->d(Lika;Z)I

    move-result v5

    iget-boolean v14, v3, Lcsx;->c:Z

    iget-object v7, v10, Ldfa;->f:Ljava/lang/Object;

    check-cast v7, Ldja;

    iget-object v7, v7, Ldja;->c:Ljava/lang/Object;

    sget-object v8, Lgzd;->d:Lgzs;

    invoke-interface {v7, v8}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lhxs;->a:Lhxs;

    iget v8, v8, Lhxs;->e:I

    invoke-virtual {v12}, Lnwn;->i()Lnws;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Lnlk;

    iget-object v9, v10, Ldfa;->d:Ljava/lang/Object;

    invoke-interface {v9}, Lhnb;->e()Lhna;

    move-result-object v9

    iget v9, v9, Lhna;->j:I

    iget-object v10, v3, Lcsx;->a:Lctd;

    invoke-interface {v10}, Lctd;->b()Lgyb;

    move-result-object v10

    sget-object v12, Lgyb;->b:Lgyb;

    if-ne v10, v12, :cond_32

    const/16 v18, 0x1

    goto :goto_6

    :cond_32
    const/16 v18, 0x0

    :goto_6
    iget-object v3, v3, Lcsx;->x:Lmqp;

    if-eq v7, v8, :cond_33

    const/4 v15, 0x1

    goto :goto_7

    :cond_33
    const/4 v15, 0x0

    :goto_7
    move-object v11, v4

    move v12, v5

    move/from16 v17, v9

    move-object/from16 v19, v3

    invoke-interface/range {v11 .. v19}, Lfbz;->as(ILklv;ZZLnlk;IZLmqp;)V

    goto/16 :goto_0

    :cond_34
    iget-object v1, v1, Lfsf;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcsw;

    iget-object v3, v0, Lcpk;->B:Ldfa;

    iget-object v4, v0, Lcpk;->b:Lklv;

    invoke-virtual {v3, v2, v4}, Ldfa;->c(Lcsw;Lklv;)V

    goto :goto_8

    :cond_35
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
