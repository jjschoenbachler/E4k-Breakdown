.class final Lcom/ironsource/mediationsdk/O$1;
.super Lcom/ironsource/mediationsdk/O$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/mediationsdk/O;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/O;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/O$c;-><init>(Lcom/ironsource/mediationsdk/O;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/J;->a()Lcom/ironsource/mediationsdk/J;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/mediationsdk/aj;->a()Lcom/ironsource/mediationsdk/aj;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ironsource/mediationsdk/aj$1;

    invoke-direct {v3, v1}, Lcom/ironsource/mediationsdk/aj$1;-><init>(Lcom/ironsource/mediationsdk/aj;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    new-instance v2, Lcom/ironsource/d/a;

    invoke-direct {v2}, Lcom/ironsource/d/a;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x40

    if-gt v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    const-string v6, "userId"

    invoke-static {v6, v1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/ironsource/d/a;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_3

    :cond_1
    const-string v6, "userId"

    const-string v7, "it\'s missing"

    invoke-static {v6, v1, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_3
    invoke-virtual {v2}, Lcom/ironsource/d/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    const-string v2, "userGenerated"

    iput-object v2, v1, Lcom/ironsource/mediationsdk/O;->o:Ljava/lang/String;

    goto :goto_6

    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/mediationsdk/J;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    const-string v2, "GAID"

    :goto_4
    iput-object v2, v1, Lcom/ironsource/mediationsdk/O;->o:Ljava/lang/String;

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/environment/h;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    const-string v2, "UUID"

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    const-string v2, ""

    iput-object v2, v1, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    :goto_5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/ironsource/mediationsdk/J;->a(Ljava/lang/String;Z)V

    :goto_6
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/f;->a()Lcom/ironsource/mediationsdk/sdk/f;

    move-result-object v1

    const-string v2, "userIdType"

    iget-object v4, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/O;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/ironsource/mediationsdk/sdk/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/f;->a()Lcom/ironsource/mediationsdk/sdk/f;

    move-result-object v1

    const-string v2, "userId"

    iget-object v4, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/ironsource/mediationsdk/sdk/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/f;->a()Lcom/ironsource/mediationsdk/sdk/f;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v4, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/O;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/ironsource/mediationsdk/sdk/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->s:Lcom/ironsource/d/b;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ironsource/d/b;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/ironsource/mediationsdk/O;->r:J

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/O;->l:Ljava/lang/String;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/O$1;->c:Lcom/ironsource/mediationsdk/J$a;

    invoke-virtual {v0, v2, v4, v6}, Lcom/ironsource/mediationsdk/J;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/J$a;)Lcom/ironsource/mediationsdk/utils/l;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->i:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/l;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    sget-object v2, Lcom/ironsource/mediationsdk/O$a;->d:Lcom/ironsource/mediationsdk/O$a;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/O;->a(Lcom/ironsource/mediationsdk/O$a;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/O;->a(Lcom/ironsource/mediationsdk/utils/l;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/J;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/O;->b(Z)V

    sget-object v1, Lcom/ironsource/environment/g;->a:Lcom/ironsource/environment/g;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/model/g;->e:Lcom/ironsource/sdk/f/a;

    invoke-virtual {v1}, Lcom/ironsource/sdk/f/a;->f()Lcom/ironsource/mediationsdk/utils/b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/ironsource/mediationsdk/utils/b;->c:Z

    invoke-static {v1}, Lcom/ironsource/environment/g;->a(Z)V

    sget-object v1, Lcom/ironsource/environment/g;->a:Lcom/ironsource/environment/g;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/model/g;->e:Lcom/ironsource/sdk/f/a;

    invoke-virtual {v1}, Lcom/ironsource/sdk/f/a;->f()Lcom/ironsource/mediationsdk/utils/b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/ironsource/mediationsdk/utils/b;->d:Z

    invoke-static {v1}, Lcom/ironsource/environment/g;->c(Z)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    invoke-virtual {v1, v2, v4}, Lcom/ironsource/mediationsdk/O;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/l;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v4, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-wide v4, v4, Lcom/ironsource/mediationsdk/O;->r:J

    const/4 v6, 0x0

    sub-long/2addr v1, v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/J;->o()Z

    move-result v4

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v5, "duration"

    invoke-virtual {v4, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sessionDepth"

    iget v0, v0, Lcom/ironsource/mediationsdk/J;->t:I

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    new-instance v0, Lcom/ironsource/mediationsdk/a/c;

    const/16 v1, 0x202

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/a/c;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/a/h;->d()Lcom/ironsource/mediationsdk/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/a/h;->b(Lcom/ironsource/mediationsdk/a/c;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    new-instance v1, Lcom/ironsource/mediationsdk/ah;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/ah;-><init>()V

    iput-object v1, v0, Lcom/ironsource/mediationsdk/O;->a:Lcom/ironsource/mediationsdk/ah;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->a:Lcom/ironsource/mediationsdk/ah;

    new-instance v1, Lcom/ironsource/mediationsdk/ah$a;

    invoke-direct {v1, v0}, Lcom/ironsource/mediationsdk/ah$a;-><init>(Lcom/ironsource/mediationsdk/ah;)V

    new-instance v2, Lcom/ironsource/lifecycle/a;

    check-cast v1, Lcom/ironsource/lifecycle/g;

    invoke-direct {v2, v1}, Lcom/ironsource/lifecycle/a;-><init>(Lcom/ironsource/lifecycle/g;)V

    iput-object v2, v0, Lcom/ironsource/mediationsdk/ah;->a:Lcom/ironsource/lifecycle/a;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/model/g;->e:Lcom/ironsource/sdk/f/a;

    invoke-virtual {v0}, Lcom/ironsource/sdk/f/a;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    :cond_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    iget-object v1, v0, Lcom/ironsource/mediationsdk/utils/l;->d:Lorg/json/JSONObject;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/model/g;->a:Lcom/ironsource/mediationsdk/model/o;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/ironsource/mediationsdk/utils/l;->a:Lcom/ironsource/mediationsdk/model/m;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/ironsource/mediationsdk/utils/l;->a:Lcom/ironsource/mediationsdk/model/m;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/model/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v1, v0, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/model/g;->b:Lcom/ironsource/mediationsdk/model/h;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/ironsource/mediationsdk/utils/l;->a:Lcom/ironsource/mediationsdk/model/m;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/ironsource/mediationsdk/utils/l;->a:Lcom/ironsource/mediationsdk/model/m;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/model/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v1, v0, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/model/g;->c:Lcom/ironsource/mediationsdk/model/i;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/model/g;->d:Lcom/ironsource/mediationsdk/model/e;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/utils/i;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-boolean v2, v2, Lcom/ironsource/mediationsdk/O;->g:Z

    iget-object v4, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    invoke-interface {v1, v3, v2, v4}, Lcom/ironsource/mediationsdk/utils/i;->a(Ljava/util/List;ZLcom/ironsource/mediationsdk/model/g;)V

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->p:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/model/g;->e:Lcom/ironsource/sdk/f/a;

    invoke-virtual {v0}, Lcom/ironsource/sdk/f/a;->b()Lcom/ironsource/mediationsdk/model/p;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/ironsource/mediationsdk/model/p;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/O;->p:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/model/p;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->n:Lcom/ironsource/mediationsdk/utils/l;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/l;->c:Lcom/ironsource/mediationsdk/model/g;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/model/g;->e:Lcom/ironsource/sdk/f/a;

    invoke-virtual {v0}, Lcom/ironsource/sdk/f/a;->e()Lcom/ironsource/sdk/controller/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/u;->b()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/ironsource/environment/e;->a()Lcom/ironsource/environment/e;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/u;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/u;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/u;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/u;->e()Z

    move-result v7

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/u;->f()I

    move-result v9

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/u;->g()Z

    move-result v10

    invoke-virtual/range {v2 .. v10}, Lcom/ironsource/environment/e;->a(Landroid/content/Context;Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V

    goto/16 :goto_d

    :cond_10
    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-boolean v0, v0, Lcom/ironsource/mediationsdk/O;->h:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    sget-object v1, Lcom/ironsource/mediationsdk/O$a;->c:Lcom/ironsource/mediationsdk/O$a;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/O;->a(Lcom/ironsource/mediationsdk/O$a;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iput-boolean v5, v0, Lcom/ironsource/mediationsdk/O;->h:Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/utils/i;

    const-string v2, "serverResponseIsNotValid"

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/utils/i;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget v0, v0, Lcom/ironsource/mediationsdk/O;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iput-boolean v5, v0, Lcom/ironsource/mediationsdk/O;->q:Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/utils/i;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/utils/i;->f()V

    goto :goto_b

    :cond_12
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/O$1;->a:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget v0, v0, Lcom/ironsource/mediationsdk/O;->c:I

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget v1, v1, Lcom/ironsource/mediationsdk/O;->d:I

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iput-boolean v5, v0, Lcom/ironsource/mediationsdk/O;->g:Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget v1, v1, Lcom/ironsource/mediationsdk/O;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget v0, v0, Lcom/ironsource/mediationsdk/O;->c:I

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget v1, v1, Lcom/ironsource/mediationsdk/O;->e:I

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget v1, v1, Lcom/ironsource/mediationsdk/O;->b:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/ironsource/mediationsdk/O;->b:I

    :cond_13
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/O$1;->a:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget v0, v0, Lcom/ironsource/mediationsdk/O;->c:I

    iget-object v1, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget v1, v1, Lcom/ironsource/mediationsdk/O;->f:I

    if-ne v0, v1, :cond_17

    :cond_14
    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-boolean v0, v0, Lcom/ironsource/mediationsdk/O;->h:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iput-boolean v5, v0, Lcom/ironsource/mediationsdk/O;->h:Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "noServerResponse"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->b:Ljava/lang/String;

    :cond_15
    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/O;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/utils/i;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/O$1;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/utils/i;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_16
    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    sget-object v1, Lcom/ironsource/mediationsdk/O$a;->c:Lcom/ironsource/mediationsdk/O$a;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/O;->a(Lcom/ironsource/mediationsdk/O$a;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Mediation availability false reason: No server response"

    invoke-virtual {v0, v1, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_17
    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$1;->d:Lcom/ironsource/mediationsdk/O;

    iget v1, v0, Lcom/ironsource/mediationsdk/O;->c:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/ironsource/mediationsdk/O;->c:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_18
    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_d
    return-void
.end method
