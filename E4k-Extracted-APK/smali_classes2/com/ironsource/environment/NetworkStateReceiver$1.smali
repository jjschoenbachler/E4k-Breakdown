.class Lcom/ironsource/environment/NetworkStateReceiver$1;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/environment/NetworkStateReceiver;->notifyState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/environment/NetworkStateReceiver;


# direct methods
.method constructor <init>(Lcom/ironsource/environment/NetworkStateReceiver;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ironsource/environment/NetworkStateReceiver$1;->this$0:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/ironsource/environment/NetworkStateReceiver$1;->this$0:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-static {v0}, Lcom/ironsource/environment/NetworkStateReceiver;->access$000(Lcom/ironsource/environment/NetworkStateReceiver;)Lcom/ironsource/environment/NetworkStateReceiverListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ironsource/environment/NetworkStateReceiver$1;->this$0:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-static {v0}, Lcom/ironsource/environment/NetworkStateReceiver;->access$000(Lcom/ironsource/environment/NetworkStateReceiver;)Lcom/ironsource/environment/NetworkStateReceiverListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/environment/NetworkStateReceiver$1;->this$0:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-static {v1}, Lcom/ironsource/environment/NetworkStateReceiver;->access$100(Lcom/ironsource/environment/NetworkStateReceiver;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/ironsource/environment/NetworkStateReceiverListener;->onNetworkAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method
