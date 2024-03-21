.class Lcom/myflashlabs/richwebview/AirCommand$9;
.super Ljava/lang/Object;
.source "AirCommand.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/AirCommand;->startSafeBrowsing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/AirCommand;


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/AirCommand;)V
    .locals 0

    .line 2593
    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$9;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 3

    .line 2597
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->START_SAFE_BROWSING:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 2593
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand$9;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
