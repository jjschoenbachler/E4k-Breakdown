.class Lcom/adobe/air/AndroidActivityWrapper$1;
.super Ljava/lang/Object;
.source "AndroidActivityWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidActivityWrapper;->onSurfaceInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 0

    .line 1484
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper$1;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$1;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->launchApplication()V

    return-void
.end method
