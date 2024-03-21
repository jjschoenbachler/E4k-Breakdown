.class Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$3;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->launchAIRService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;


# direct methods
.method constructor <init>(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$3;->this$0:Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 333
    iget-object p1, p0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$3;->this$0:Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;

    invoke-virtual {p1, p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->unbindService(Landroid/content/ServiceConnection;)V

    .line 336
    iget-object p1, p0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$3;->this$0:Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;

    invoke-static {p1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->access$300(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;)V

    .line 337
    iget-object p1, p0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$3;->this$0:Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->access$400(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;Z)V

    .line 339
    invoke-static {}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->access$500()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$3;->this$0:Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;

    invoke-static {p1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->access$600(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->access$700()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
