.class public final synthetic Lcoq;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final a:Lcor;

.field public final b:Lcpk;

.field public final c:Lnou;

.field public final d:Lnou;

.field public final e:Lkbf;


# direct methods
.method public synthetic constructor <init>(Lcor;Lcpk;Lnou;Lnou;Lkbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoq;->a:Lcor;

    iput-object p2, p0, Lcoq;->b:Lcpk;

    iput-object p3, p0, Lcoq;->c:Lnou;

    iput-object p4, p0, Lcoq;->d:Lnou;

    iput-object p5, p0, Lcoq;->e:Lkbf;

    return-void
.end method

.method public static a()I
    .locals 8

    const/4 v6, 0x1

    return v6
.end method


# virtual methods
.method public final a()Lnou;
    .locals 14

    const/4 v8, 0x0

    iget-object v0, p0, Lcoq;->a:Lcor;

    iget-object v1, p0, Lcoq;->b:Lcpk;

    iget-object v2, p0, Lcoq;->c:Lnou;

    iget-object v3, p0, Lcoq;->d:Lnou;

    iget-object v9, p0, Lcoq;->e:Lkbf;

    iget-object v10, v0, Lcor;->k:Lfvx;

    invoke-interface {v2}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liha;

    invoke-interface {v3}, Lnou;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    iget-object v11, v1, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v3, v1, Lcpk;->y:Lcpj;

    if-nez v3, :cond_8

    iget-object v3, v1, Lcpk;->j:Lcvx;

    iget-object v4, v1, Lcpk;->s:Lcsc;

    invoke-static {}, Lcoq;->a()I

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v3, v4, v0, v2}, Lcvx;->c(Lcsc;Liha;Landroid/view/Surface;)V

    invoke-interface {v3, v0, v4}, Lcvx;->g(Liha;Lcsc;)V

    :goto_0
    iget-object v0, v1, Lcpk;->j:Lcvx;

    invoke-interface {v0}, Lcvx;->a()Lnou;

    move-result-object v12

    iget-object v0, v1, Lcpk;->l:Ldhi;

    sget-object v2, Ldgu;->E:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcpk;->j:Lcvx;

    sget v2, Lmvv;->d:I

    sget-object v2, Lmyu;->a:Lmvv;

    invoke-interface {v0, v2}, Lcvx;->e(Ljava/util/List;)V

    iget-object v0, v1, Lcpk;->n:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lbdj;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lbdj;-><init>(Lcpk;I)V

    const-wide/16 v4, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v1, Lcpk;->w:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, v1, Lcpk;->h:Lcbn;

    iget-object v2, v1, Lcpk;->s:Lcsc;

    iget-object v2, v2, Lcsc;->F:Ldne;

    iget-object v2, v2, Ldne;->a:Ljava/lang/Object;

    iget-object v3, v1, Lcpk;->z:Lftu;

    iget-object v3, v3, Lftu;->a:Ljvk;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v4

    iget-object v5, v1, Lcpk;->C:Ldja;

    iget-object v6, v1, Lcpk;->s:Lcsc;

    invoke-virtual {v5, v6}, Ldja;->c(Lcsc;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual/range {v0 .. v7}, Lcbn;->a(Lcbi;Lkli;Ljvs;Ljvs;ZZI)Lcbm;

    move-result-object v0

    iget-object v2, v1, Lcpk;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcpk;->f:Ljava/util/List;

    iget-object v3, v1, Lcpk;->k:Lcvf;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcpk;->D:Lcvr;

    sget-object v3, Lcua;->b:Lcua;

    invoke-virtual {v2, v3}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    invoke-virtual {v2, v0}, Ljuf;->d(Lkad;)V

    iget-object v2, v1, Lcpk;->m:Lcuf;

    invoke-virtual {v10}, Lfvx;->a()Lika;

    move-result-object v0

    iget-object v3, v1, Lcpk;->s:Lcsc;

    iput-object v1, v2, Lcuf;->i:Lcuc;

    iget-object v4, v2, Lcuf;->n:Lcvm;

    invoke-virtual {v4, v0}, Lcvm;->b(Lika;)Lcyq;

    move-result-object v0

    iput-object v0, v2, Lcuf;->j:Lcyq;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lcuf;->e:Lcuh;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Lcuf;->g(Lcsc;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcuf;->f:Lcuh;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v4, v2, Lcuf;->b:Ldhi;

    sget-object v5, Ldgu;->am:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcuf;->g:Lcuh;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2, v3}, Lcuf;->f(Lcsc;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Lcuf;->d:Lcuh;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v4, v2, Lcuf;->c:Lcuh;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0

    iput-object v0, v2, Lcuf;->k:Lmvv;

    invoke-virtual {v2, v3}, Lcuf;->g(Lcsc;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lctw;

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4}, Lctw;-><init>(Lcuf;I)V

    :goto_1
    iput-object v0, v2, Lcuf;->m:Ljava/lang/Runnable;

    iget-object v4, v2, Lcuf;->k:Lmvv;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v8

    :goto_2
    if-ge v2, v5, :cond_7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcuh;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v6

    iget-object v7, v0, Lcuh;->c:Lhna;

    invoke-virtual {v6, v7}, Lhnd;->g(Lhna;)V

    iget-object v7, v0, Lcuh;->d:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lhnd;->f(Ljava/lang/Runnable;)V

    iget-object v7, v0, Lcuh;->e:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lhnd;->e(Ljava/lang/Runnable;)V

    iget-object v7, v0, Lcuh;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {v6, v7}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    iget-object v7, v0, Lcuh;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lhnd;->d(Ljava/lang/String;)V

    invoke-virtual {v6}, Lhnd;->a()Lhne;

    move-result-object v6

    iput-object v6, v0, Lcuh;->a:Lhne;

    iget-object v6, v0, Lcuh;->h:Lcug;

    if-eqz v6, :cond_4

    const-string v7, "%sDynamic"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v13, v0, Lcuh;->g:Ljava/lang/String;

    aput-object v13, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3}, Lcug;->a(Lcsc;)Lhna;

    move-result-object v6

    iput-object v6, v0, Lcuh;->b:Lhna;

    iget-object v6, v0, Lcuh;->a:Lhne;

    new-instance v8, Lhnd;

    invoke-direct {v8, v6}, Lhnd;-><init>(Lhne;)V

    iget-object v6, v0, Lcuh;->b:Lhna;

    invoke-virtual {v8, v6}, Lhnd;->g(Lhna;)V

    invoke-virtual {v8, v7}, Lhnd;->d(Ljava/lang/String;)V

    invoke-virtual {v8}, Lhnd;->a()Lhne;

    move-result-object v6

    iput-object v6, v0, Lcuh;->a:Lhne;

    iget-object v0, v0, Lcuh;->b:Lhna;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v0, v2, v4, v3}, Lcpk;->dg(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    sget-object v0, Lchy;->c:Lchy;

    goto :goto_1

    :cond_7
    iget-object v0, v1, Lcpk;->r:Lcqx;

    iget-object v2, v1, Lcpk;->s:Lcsc;

    invoke-interface {v0, v2}, Lcqx;->b(Lcsc;)V

    iget-object v0, v1, Lcpk;->u:Lcsm;

    iget-object v2, v1, Lcpk;->s:Lcsc;

    invoke-interface {v0, v2}, Lcsm;->b(Lcsc;)V

    iget-object v0, v1, Lcpk;->i:Lhlu;

    new-instance v2, Lhox;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lhox;-><init>(Lcpk;I)V

    invoke-virtual {v0, v2}, Lhlu;->b(Lhlt;)V

    sget-object v0, Lcpj;->a:Lcpj;

    invoke-virtual {v1, v0}, Lcpk;->k(Lcpj;)V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v9}, Lkbf;->a()V

    new-instance v0, Lcdu;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcdu;-><init>(Lcpk;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {v12, v0, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_8
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to init with state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
