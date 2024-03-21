.class Lcom/goodgamestudios/extension/GoodGameApplication$1;
.super Lcom/goodgamestudios/extension/util/ActivityLifeCycleCallbacksAdapter;
.source "GoodGameApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodgamestudios/extension/GoodGameApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodgamestudios/extension/GoodGameApplication;


# direct methods
.method constructor <init>(Lcom/goodgamestudios/extension/GoodGameApplication;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/goodgamestudios/extension/GoodGameApplication$1;->this$0:Lcom/goodgamestudios/extension/GoodGameApplication;

    invoke-direct {p0}, Lcom/goodgamestudios/extension/util/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/goodgamestudios/extension/GoodGameApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] onActivityCreated: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppEntry"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/goodgamestudios/extension/GoodGameApplication;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] attempt to display splash screen now"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/goodgamestudios/extension/GoodGameApplication$1;->this$0:Lcom/goodgamestudios/extension/GoodGameApplication;

    invoke-static {p1}, Lcom/goodgamestudios/extension/GoodGameApplication;->access$100(Lcom/goodgamestudios/extension/GoodGameApplication;)V

    :cond_0
    return-void
.end method
