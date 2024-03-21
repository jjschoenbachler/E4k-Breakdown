.class final Lcom/ironsource/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ironsource/a/b;


# direct methods
.method constructor <init>(Lcom/ironsource/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/a/b$1;->b:Lcom/ironsource/a/b;

    iput-object p2, p0, Lcom/ironsource/a/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/ironsource/d/c;

    invoke-direct {v0}, Lcom/ironsource/d/c;-><init>()V

    iget-object v1, p0, Lcom/ironsource/a/b$1;->b:Lcom/ironsource/a/b;

    iget-object v1, v1, Lcom/ironsource/a/b;->a:Lcom/ironsource/a/a;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/ironsource/a/a;->f:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "POST"

    iget-object v3, p0, Lcom/ironsource/a/b$1;->b:Lcom/ironsource/a/b;

    iget-object v3, v3, Lcom/ironsource/a/b;->a:Lcom/ironsource/a/a;

    iget-object v3, v3, Lcom/ironsource/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/a/b$1;->b:Lcom/ironsource/a/b;

    iget-object v0, v0, Lcom/ironsource/a/b;->a:Lcom/ironsource/a/a;

    iget-object v0, v0, Lcom/ironsource/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/a/b$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ironsource/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/d/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "GET"

    iget-object v3, p0, Lcom/ironsource/a/b$1;->b:Lcom/ironsource/a/b;

    iget-object v3, v3, Lcom/ironsource/a/b;->a:Lcom/ironsource/a/a;

    iget-object v3, v3, Lcom/ironsource/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/a/b$1;->b:Lcom/ironsource/a/b;

    iget-object v0, v0, Lcom/ironsource/a/b;->a:Lcom/ironsource/a/a;

    iget-object v0, v0, Lcom/ironsource/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/a/b$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Lcom/ironsource/d/b$a$a;

    invoke-direct {v3}, Lcom/ironsource/d/b$a$a;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ironsource/d/b$a$a;->b:Ljava/lang/String;

    iput-object v1, v3, Lcom/ironsource/d/b$a$a;->d:Ljava/lang/String;

    const-string v0, "GET"

    iput-object v0, v3, Lcom/ironsource/d/b$a$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/ironsource/d/b$a$a;->a(Ljava/util/List;)Lcom/ironsource/d/b$a$a;

    invoke-virtual {v3}, Lcom/ironsource/d/b$a$a;->a()Lcom/ironsource/d/b$a;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/d/b;->a(Lcom/ironsource/d/b$a;)Lcom/ironsource/d/c;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ironsource/a/b$1;->b:Lcom/ironsource/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response status code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/ironsource/d/c;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
