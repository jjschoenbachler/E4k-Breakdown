.class final Lcom/ironsource/mediationsdk/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/a/b;->b(Lcom/ironsource/mediationsdk/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/a/c;

.field private synthetic b:Lcom/ironsource/mediationsdk/a/b;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/a/b;Lcom/ironsource/mediationsdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-boolean v0, v0, Lcom/ironsource/mediationsdk/a/b;->f:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    const-string v1, "eventSessionId"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/a/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/a/b;->g(Lcom/ironsource/mediationsdk/a/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    const-string v2, "connectionType"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/mediationsdk/a/b;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/a/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/a/b;->a(Lcom/ironsource/mediationsdk/a/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/a/c;->a(I)V

    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/a/c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/a/b;->e(I)I

    move-result v0

    sget-object v1, Lcom/ironsource/mediationsdk/a/b$a;->a:Lcom/ironsource/mediationsdk/a/b$a;

    iget v1, v1, Lcom/ironsource/mediationsdk/a/b$a;->f:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    const-string v2, "adUnit"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    const-string v2, "reason"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/a/b;->a(Lcom/ironsource/mediationsdk/a/b;Lcom/ironsource/mediationsdk/a/c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    const-string v2, "ext1"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/a/b;->a(Lcom/ironsource/mediationsdk/a/b;Lcom/ironsource/mediationsdk/a/c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/a/b;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/a/b;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/a/c;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "eventId"

    if-eq v2, v3, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "timestamp"

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/mediationsdk/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    iget-object v4, v0, Lcom/ironsource/mediationsdk/a/b;->l:[I

    invoke-static {v4}, Lcom/ironsource/mediationsdk/a/b;->a([I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/a/c;->a()I

    move-result v1

    iget-object v4, v0, Lcom/ironsource/mediationsdk/a/b;->l:[I

    invoke-virtual {v0, v1, v4}, Lcom/ironsource/mediationsdk/a/b;->a(I[I)Z

    move-result v0

    xor-int/2addr v0, v3

    goto :goto_1

    :cond_6
    iget-object v4, v0, Lcom/ironsource/mediationsdk/a/b;->m:[I

    invoke-static {v4}, Lcom/ironsource/mediationsdk/a/b;->a([I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/a/c;->a()I

    move-result v1

    iget-object v4, v0, Lcom/ironsource/mediationsdk/a/b;->m:[I

    invoke-virtual {v0, v1, v4}, Lcom/ironsource/mediationsdk/a/b;->a(I[I)Z

    move-result v0

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/a/b;->f(Lcom/ironsource/mediationsdk/a/c;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/a/c;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    const-string v1, "sessionDepth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/a/b;->e(Lcom/ironsource/mediationsdk/a/c;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    const-string v4, "sessionDepth"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/ironsource/mediationsdk/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/a/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/a/b;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/a/b;->c(Lcom/ironsource/mediationsdk/a/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    const-string v1, "placement"

    iget-object v4, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/a/c;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ironsource/mediationsdk/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/a/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getFirstSessionTimestamp(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_c

    iget-object v4, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    const-string v5, "firstSessionTimestamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/ironsource/mediationsdk/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"eventId\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/a/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"timestamp\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/a/c;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->EVENT:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v4, ","

    const-string v5, "\n"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/a/b;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget v1, v0, Lcom/ironsource/mediationsdk/a/b;->g:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/ironsource/mediationsdk/a/b;->g:I

    :cond_d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/a/b;->n:[I

    invoke-static {v0}, Lcom/ironsource/mediationsdk/a/b;->a([I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/a/c;->a()I

    move-result v1

    iget-object v4, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/a/b;->n:[I

    invoke-static {v0, v1, v4}, Lcom/ironsource/mediationsdk/a/b;->a(Lcom/ironsource/mediationsdk/a/b;I[I)Z

    move-result v0

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->a:Lcom/ironsource/mediationsdk/a/c;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/a/b;->d(Lcom/ironsource/mediationsdk/a/c;)Z

    move-result v0

    :goto_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-boolean v1, v1, Lcom/ironsource/mediationsdk/a/b;->b:Z

    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iput-boolean v3, v1, Lcom/ironsource/mediationsdk/a/b;->b:Z

    :cond_f
    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/a/b;->d:Lcom/ironsource/b/a;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget v4, v1, Lcom/ironsource/mediationsdk/a/b;->g:I

    iget v5, v1, Lcom/ironsource/mediationsdk/a/b;->j:I

    if-ge v4, v5, :cond_10

    iget-boolean v4, v1, Lcom/ironsource/mediationsdk/a/b;->b:Z

    if-eqz v4, :cond_11

    :cond_10
    iget-boolean v1, v1, Lcom/ironsource/mediationsdk/a/b;->a:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_5

    :cond_11
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/a/b;->b(Lcom/ironsource/mediationsdk/a/b;)V

    return-void

    :cond_12
    iget-object v1, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/a/b;->e:Ljava/util/ArrayList;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v1, v1, Lcom/ironsource/mediationsdk/a/b;->k:I

    if-lt v4, v1, :cond_13

    const/4 v2, 0x1

    :cond_13
    if-nez v2, :cond_14

    if-eqz v0, :cond_15

    :cond_14
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a/b$2;->b:Lcom/ironsource/mediationsdk/a/b;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/a/b;->a(Lcom/ironsource/mediationsdk/a/b;)V

    :cond_15
    :goto_6
    return-void
.end method
