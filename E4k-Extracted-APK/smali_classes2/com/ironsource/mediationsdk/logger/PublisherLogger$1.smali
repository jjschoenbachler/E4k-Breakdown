.class Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;
.super Ljava/lang/Object;
.source "PublisherLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/logger/PublisherLogger;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

.field final synthetic val$logLevel:I

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$tag:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/logger/PublisherLogger;Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;I)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;->this$0:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;->val$tag:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    iput p4, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;->val$logLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;->this$0:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->access$000(Lcom/ironsource/mediationsdk/logger/PublisherLogger;)Lcom/ironsource/mediationsdk/logger/LogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;->val$message:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;->this$0:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->access$000(Lcom/ironsource/mediationsdk/logger/PublisherLogger;)Lcom/ironsource/mediationsdk/logger/LogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;->val$tag:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;->val$message:Ljava/lang/String;

    iget v3, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;->val$logLevel:I

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/LogListener;->onLog(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
